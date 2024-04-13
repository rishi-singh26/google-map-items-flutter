import 'package:flutter/material.dart';
import 'package:google_map_items/map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapItemsPage extends StatelessWidget {
  const MapItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Map Items')),
      body: const MapWidget(
        markerCoordinate: LatLng(43.22309907077149, -94.34897124767303),
        polylineCoordinates: [
          LatLng(43.227369760734064, -94.34356994926928),
          LatLng(43.21901865898815, -94.3432930111885),
          LatLng(43.218968082743984, -94.35437925159931),
          LatLng(43.22715771133842, -94.35457304120064),
          LatLng(43.227369760734064, -94.34356994926928),
        ],
        polygonCoordinates: [
          LatLng(43.22682131349118, -94.35395814478397),
          LatLng(43.226887518297765, -94.34428777545689),
          LatLng(43.21943572815587, -94.34409566223621),
          LatLng(43.219487281322955, -94.35394775122406),
        ],
        circleCenter: LatLng(43.22309907077149, -94.34897124767303),
        circleRadius: 350,
      ),
    );
  }
}
