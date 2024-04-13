import 'package:flutter/material.dart';
import 'package:google_map_items/all_map_item.dart';
import 'package:google_map_items/circle.dart';
import 'package:google_map_items/marker.dart';
import 'package:google_map_items/polygon.dart';
import 'package:google_map_items/polyline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Google Maps Flutter'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Map Items'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MapItemsPage())),
          ),
          ListTile(
            title: const Text('Polygon (Boundary)'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PolygonPage())),
          ),
          ListTile(
            title: const Text('Polyline (Line)'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PolylinePage())),
          ),
          ListTile(
            title: const Text('Circle'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CirclePage())),
          ),
          ListTile(
            title: const Text('Marker (Point)'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MarkerPage())),
          ),
        ],
      ),
    );
  }
}
