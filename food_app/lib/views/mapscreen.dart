import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class PrabeshMap extends StatefulWidget {
  const PrabeshMap({Key? key}) : super(key: key);

  @override
  State<PrabeshMap> createState() => _PrabeshMapState();
}

class _PrabeshMapState extends State<PrabeshMap> {
  TextEditingController search = TextEditingController();

  final MapController _mapController = MapController();

  late Position pos;

  getCurrentLocation() async {
    pos = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          setState(() {
            getCurrentLocation();
            _mapController.move(
                LatLng(
                  pos.latitude,
                  pos.longitude,
                ),
                16);
          });
        },
        child: const Icon(Icons.my_location),
      ),
      body: SfMaps(layers: [
        MapTileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          initialZoomLevel: 2,
          initialFocalLatLng: MapLatLng(27.700769, 85.300140),
          zoomPanBehavior: MapZoomPanBehavior(    
            enableDoubleTapZooming: true,
            zoomLevel: 13,
          ),
      )     
      ]),
    );
  }
}
