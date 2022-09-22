// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class Osm extends StatefulWidget {
  const Osm({super.key});

  @override
  State<Osm> createState() => _OsmState();
}

class _OsmState extends State<Osm> {
  Future<LocationData?>? _currentLocation() async {
    bool serviceEnable;
    PermissionStatus permissionGranted;
    Location location = new Location();

    serviceEnable = await location.serviceEnabled();
    if (!serviceEnable) {
      serviceEnable = await location.requestService();
      if (!serviceEnable) {
        return null;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }
    return await location.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LocationData?>(
      future: _currentLocation(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          final LocationData _currentLocation = snapshot.data;
          return SfMaps(layers: [
            MapTileLayer(
              initialFocalLatLng: MapLatLng(
                  _currentLocation.latitude!, _currentLocation.longitude!),
              initialZoomLevel: 5,
              initialMarkersCount: 1,
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              markerBuilder: (BuildContext context, int index) {
                return MapMarker(
                  latitude: _currentLocation.latitude!,
                  longitude: _currentLocation.longitude!,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  size: Size(50, 50),
                );
              },
            )
          ]);
        }
        return Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Map is Loading.........",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            CircularProgressIndicator(
              color: Colors.orange,
            ),
          ],
        ));
      },
    );
  }
}
