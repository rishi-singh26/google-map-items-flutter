import 'package:flutter/material.dart';
import 'package:google_map_items/map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerPage extends StatelessWidget {
  const MarkerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Marker (Point)')),
      body: const MapWidget(
        markerCoordinate: LatLng(43.22309907077149, -94.34897124767303),
      ),
    );
  }
}
