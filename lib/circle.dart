import 'package:flutter/material.dart';
import 'package:google_map_items/map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CirclePage extends StatelessWidget {
  const CirclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Circle')),
      body: const MapWidget(
        circleCenter: LatLng(43.22309907077149, -94.34897124767303),
        circleRadius: 400,
      ),
    );
  }
}
