import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationPicker extends StatefulWidget {
  @override
  _LocationPickerState createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  late GoogleMapController _mapController;
  LatLng? _selectedLocation; // Updated dynamically
  LatLng _defaultLocation =
      LatLng(37.7749, -122.4194); // Fallback location (San Francisco)
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  Future<void> _getUserLocation() async {
    Location location = Location();

    // Request permission and check service status
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        setState(() {
          _isLoading = false; // Cannot fetch location
        });
        return;
      }
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        setState(() {
          _isLoading = false; // Cannot fetch location
        });
        return;
      }
    }

    // Get current location
    LocationData currentLocation = await location.getLocation();
    setState(() {
      _selectedLocation =
          LatLng(currentLocation.latitude!, currentLocation.longitude!);
      _isLoading = false;
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  void _onTap(LatLng position) {
    setState(() {
      _selectedLocation = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Location"),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _selectedLocation ?? _defaultLocation,
                    zoom: 14.0,
                  ),
                  markers: _selectedLocation != null
                      ? {
                          Marker(
                            markerId: MarkerId("selected-location"),
                            position: _selectedLocation!,
                          )
                        }
                      : {},
                  onTap: _onTap,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      // Use _selectedLocation here
                      if (_selectedLocation != null) {
                        print("Selected location: $_selectedLocation");
                        Navigator.pop(context, _selectedLocation);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("No location selected")),
                        );
                      }
                    },
                    child: Text("Confirm Location"),
                  ),
                ),
              ],
            ),
    );
  }
}

