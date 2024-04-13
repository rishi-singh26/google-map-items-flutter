import 'package:flutter/material.dart';
import 'package:google_map_items/map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PolylinePage extends StatelessWidget {
  const PolylinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Polyline (Line)')),
      body: const MapWidget(
        polylineCoordinates: [
          LatLng(43.227369760734064, -94.34356994926928),
          LatLng(43.21901865898815, -94.3432930111885),
          LatLng(43.218968082743984, -94.35437925159931),
          LatLng(43.22715771133842, -94.35457304120064),
          LatLng(43.227369760734064, -94.34356994926928),
        ],
      ),
    );
  }
}
