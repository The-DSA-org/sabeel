import 'dart:async';
import 'package:flutter/material.dart';
import 'package:location/location.dart' as loc;
import 'package:geocoding/geocoding.dart' as geo;
import 'package:sabeel_app/features/home/ui/widgets/location_service_dialogs.dart';

class LocationService {
  final loc.Location location;
  final BuildContext context;
  final Function(loc.LocationData) onLocationSet;
  final Function(String) onAddressSet;

  LocationService({
    required this.location,
    required this.context,
    required this.onLocationSet,
    required this.onAddressSet,
  });

  /// Fetches user location data for Adhan purposes.
  Future<void> getUserLocation() async {
    if (!await _checkLocationServiceEnabled()) return;
    if (!await _checkLocationPermissionGranted()) return;

    loc.LocationData locationData = await location.getLocation();
    onLocationSet(locationData);

    await _getAddressFromLatLng(
        locationData.latitude!, locationData.longitude!);
  }

  /// Ensures location services are enabled.
  Future<bool> _checkLocationServiceEnabled() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        showServiceDisableDialog(context, getUserLocation);
        return false;
      }
    }
    return true;
  }

  /// Ensures location permissions are granted.
  Future<bool> _checkLocationPermissionGranted() async {
    loc.PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == loc.PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != loc.PermissionStatus.granted) {
        showPermissionDisableDialog(context);
        return false;
      }
    }
    return true;
  }

  /// Fetches address information from latitude and longitude.
  Future<void> _getAddressFromLatLng(double latitude, double longitude) async {
    try {
      geo.setLocaleIdentifier('ar');
      List<geo.Placemark> placeMarks =
          await geo.placemarkFromCoordinates(latitude, longitude);
      geo.Placemark place = placeMarks[0]; // Use the first placemark
      String address = "${place.administrativeArea}, ${place.country}";
      onAddressSet(address);
    } catch (e) {
      print(e.toString());
    }
  }
}
