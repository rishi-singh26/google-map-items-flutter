import 'package:flutter/material.dart';
import 'package:google_map_items/map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PolygonPage extends StatelessWidget {
  const PolygonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Polygon (Boundary)')),
      body: const MapWidget(
        polygonCoordinates: [
          LatLng(43.22682131349118, -94.35395814478397),
          LatLng(43.226887518297765, -94.34428777545689),
          LatLng(43.21943572815587, -94.34409566223621),
          LatLng(43.219487281322955, -94.35394775122406),
        ],
      ),
    );
  }
}
