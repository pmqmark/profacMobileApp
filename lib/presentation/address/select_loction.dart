import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:profac/application/search_location/search_location_bloc.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/presentation/address/new_address_form.dart';
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
  Timer? _debounce;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

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
      body: BlocBuilder<SearchLocationBloc, SearchLocationState>(
        buildWhen: (previous, current) {
          return previous != current;
        },
        builder: (context, state) {
          state.whenOrNull(
            loadedLatLng: (address) {
              log("loaded address is assigned to initial position");
              _initialPosition = CameraPosition(
                target: LatLng(address!.lat, address.lng),
                zoom: 19,
              );
            },
          );
          return state.whenOrNull(
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
                },
              ) ??
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: _initialPosition == null
                        ? const Center(child: CircularProgressIndicator())
                        : Stack(
                            children: [
                              GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition: _initialPosition!,
                                onCameraMove: (position) {
                                  if (widget.address != null) {
                                    widget.address = null;
                                    return;
                                  }

                                  log("bloc for getting location with lat and long called");
                                  if (_debounce?.isActive ?? false) {
                                    _debounce!.cancel();
                                  }
                                  _debounce = Timer(
                                      const Duration(milliseconds: 500), () {
                                    BlocProvider.of<SearchLocationBloc>(context)
                                        .add(
                                      SearchLocationEvent.selectLocationLatLng(
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
                              offset: Offset(
                                  0, -5), // Negative dy for shadow on top
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            right: 25,
                            top: 35,
                          ),
                          child: state.whenOrNull(
                            loading: () => NewAddressForm(),
                            loadedLatLng: (address) {
                              return NewAddressForm(
                                address: address,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 4),
                    child: BottomSaveButton(
                      onPressed: () {
                        // Navigator.of(context).pop();
                      },
                      text: "Save and Continue",
                    ),
                  ),
                  if (state is SearchLocationLoading)
                    const LinearProgressIndicator(),
                  if (state is! SearchLocationLoading) const VerticalSpace(4),
                ],
              );
        },
      ),
    );
  }
}
