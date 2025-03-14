import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/search_location/search_location_bloc.dart';
import 'package:profac/domain/address/model/address_modal.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/presentation/address/widgets/new_address_form.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/failure_screen.dart';

class SelectLoction extends StatefulWidget {
  SelectLoction({super.key, this.address});
  GMapAddress? address;
  @override
  State<SelectLoction> createState() => _SelectLoctionState();
}

class _SelectLoctionState extends State<SelectLoction> {
  CameraPosition? _initialPosition;
  AddressType selectedAddressType = AddressType.home;
  final TextEditingController _otherController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _houoseNumberController = TextEditingController();
  final TextEditingController _landmarkController = TextEditingController();
  Timer? _debounce;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _setInitialPosition();
  }

  Future<void> _setInitialPosition() async {
    if (widget.address != null) {
      log("bloc event for setting location with address called");
      BlocProvider.of<SearchLocationBloc>(context).add(
        SearchLocationEvent.setLocation(widget.address!),
      );
      return;
    }
    log("bloc event for getting current location called");
    BlocProvider.of<SearchLocationBloc>(context).add(
      const SearchLocationEvent.getCurrentLocation(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlocConsumer<AddressBloc, AddressState>(
        listener: (context, addressState) {
          addressState.mapOrNull(
            addressSaved: (value) {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/home', (route) => false);
            },
            error: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(value.error.toString()),
                ),
              );
            },
          );
        },
        builder: (context, addressState) {
          return Stack(
            children: [
              BlocBuilder<SearchLocationBloc, SearchLocationState>(
                buildWhen: (previous, current) {
                  return previous != current;
                },
                builder: (context, searchLocationState) {
                  searchLocationState.whenOrNull(
                    loadedLatLng: (address) {
                      log("loaded address is assigned to initial position");
                      _initialPosition = CameraPosition(
                        target: LatLng(address.lat, address.lng),
                        zoom: 19,
                      );
                    },
                  );
                  return searchLocationState.whenOrNull(
                        error: (failure) {
                          log("error is $failure");
                          if (failure is PermissionFailure) {
                            return FailureScreen(
                              failure: failure,
                              onPressed: () {
                                _setInitialPosition();
                              },
                            );
                          }
                          if (failure is NoInternetConnection) {
                            return FailureScreen(
                              failure: failure,
                              onPressed: () {
                                _setInitialPosition();
                              },
                            );
                          }
                          return null;
                        },
                      ) ??
                      Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: _initialPosition == null
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : Stack(
                                    children: [
                                      GoogleMap(
                                        mapType: MapType.normal,
                                        initialCameraPosition:
                                            _initialPosition!,
                                        onCameraMove: (position) {
                                          if (widget.address != null) {
                                            widget.address = null;
                                            return;
                                          }

                                          log("bloc for getting location with lat and long called",
                                              name:
                                                  "onCameraMove select location");
                                          if (_debounce?.isActive ?? false) {
                                            _debounce!.cancel();
                                          }
                                          _debounce = Timer(
                                              const Duration(milliseconds: 500),
                                              () {
                                            BlocProvider.of<SearchLocationBloc>(
                                                    context)
                                                .add(
                                              SearchLocationEvent
                                                  .selectLocationLatLng(
                                                LatLng(
                                                  position.target.latitude,
                                                  position.target.longitude,
                                                ),
                                              ),
                                            );
                                          });
                                        },
                                        zoomControlsEnabled: false,
                                      ),
                                      const Center(
                                        child: Icon(
                                          Icons.location_pin,
                                          size: 40,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Transform.translate(
                              offset: Offset(0, -30.h),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withAlpha(180),
                                      blurRadius: 10,
                                      spreadRadius: -10,
                                      offset: Offset(0,
                                          -5), // Negative dy for shadow on top
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 25,
                                    right: 25,
                                    top: 35,
                                  ),
                                  child: searchLocationState.whenOrNull(
                                    loading: () => NewAddressForm(
                                      selectedAddressType: selectedAddressType,
                                      nameController: _nameController,
                                      otherController: _otherController,
                                      phoneController: _phoneController,
                                      houseNumberController:
                                          _houoseNumberController,
                                      landmarkController: _landmarkController,
                                      onAddressTypeSelected:
                                          (AddressType addressType) {},
                                      formKey: formKey,
                                    ),
                                    loadedLatLng: (address) {
                                      return NewAddressForm(
                                        address: address,
                                        selectedAddressType:
                                            selectedAddressType,
                                        nameController: _nameController,
                                        otherController: _otherController,
                                        phoneController: _phoneController,
                                        houseNumberController:
                                            _houoseNumberController,
                                        landmarkController: _landmarkController,
                                        onAddressTypeSelected:
                                            (AddressType addressType) {
                                          setState(() {
                                            selectedAddressType = addressType;
                                          });
                                        },
                                        formKey: formKey,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, bottom: 4),
                            child: BottomSaveButton(
                              onPressed: () {
                                searchLocationState.mapOrNull(
                                  loadedLatLng: (value) {
                                    if (!formKey.currentState!.validate()) {
                                      return;
                                    }
                                    if (_phoneController.text.length != 10) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              "Please enter a valid phone number"),
                                        ),
                                      );
                                      return;
                                    }
                                    final address = AddressModel(
                                      id: "",
                                      user: getIt<TokensNKeys>().userId,
                                      type: selectedAddressType ==
                                              AddressType.home
                                          ? "home"
                                          : _otherController.text,
                                      shortName: value.address.name,
                                      formattedAddress:
                                          value.address.formattedAddress,
                                      houseNumber: _houoseNumberController.text,
                                      landmark: _landmarkController.text,
                                      name: _nameController.text,
                                      mobile: _phoneController.text,
                                      coordinates: [
                                        value.address.lng,
                                        value.address.lat
                                      ],
                                    );
                                    BlocProvider.of<AddressBloc>(context).add(
                                      AddressEvent.saveAddress(address),
                                    );
                                  },
                                );
                              },
                              text: "Save and Continue",
                            ),
                          ),
                          if (searchLocationState is SearchLocationLoading)
                            const LinearProgressIndicator(),
                          if (searchLocationState is! SearchLocationLoading)
                            const VerticalSpace(4),
                        ],
                      );
                },
              ),
              addressState.mapOrNull(
                    loading: (value) => SizedBox.expand(
                      child: ColoredBox(
                        color: Colors.black38,
                        child: ProfacLoadingIndicator(),
                      ),
                    ),
                  ) ??
                  SizedBox(),
            ],
          );
        },
      ),
    );
  }
}
