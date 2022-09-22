import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  double long = 49.5;
  double lat = -0.5;
  LatLng point = LatLng(49.5, -0.09);
  var location = [];
  
  @override
  Widget build(BuildContext context) {
    return SfMaps(layers: [
      MapTileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        initialZoomLevel: 2,
        initialFocalLatLng: MapLatLng(28.644400, 77.3243),
        zoomPanBehavior: MapZoomPanBehavior(
          enableDoubleTapZooming : true,
        zoomLevel: 13,
        
        ),
      )
    ]);
  }
}
