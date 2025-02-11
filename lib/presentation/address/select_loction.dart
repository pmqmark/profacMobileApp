import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:profac/presentation/address/new_address_form.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class SelectLoction extends StatefulWidget {
  SelectLoction({super.key});

  @override
  State<SelectLoction> createState() => _SelectLoctionState();
}

class _SelectLoctionState extends State<SelectLoction> {
  CameraPosition? _initialPosition;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  LatLng? _selectedLocation;

  @override
  void initState() {
    super.initState();
    _setInitialPosition();
  }

  Future<void> _setInitialPosition() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) return;

    try {
      final position = await Geolocator.getCurrentPosition();
      setState(() {
        _initialPosition = CameraPosition(
          target: LatLng(position.latitude, position.longitude),
          zoom: 19,
        );
        _selectedLocation = LatLng(position.latitude, position.longitude);
      });
    } catch (e) {
      debugPrint("Error fetching current location: $e");
    }
  }

  Future<bool> _handleLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
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
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                        onCameraMove: (position) {
                          _selectedLocation = position.target;
                        },
                        zoomControlsEnabled: false,
                      ),
                      const Center(
                        child: Icon(Icons.location_pin,
                            size: 40, color: Colors.black),
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
                      offset: Offset(0, -5), // Negative dy for shadow on top
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 35,
                  ),
                  child: NewAddressForm(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: BottomSaveButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: "Save and Continue",
            ),
          )
        ],
      ),
    );
  }
}
