import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CountryMap extends StatelessWidget {

  Completer<GoogleMapController> _controller = Completer();

  final String name;
  final List latlng;
  CountryMap(this.name, this.latlng);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(name),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(latlng[0],latlng[1]),
          zoom: 6,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
