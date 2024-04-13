import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatelessWidget {
  final List<LatLng>? polygonCoordinates;
  final List<LatLng>? polylineCoordinates;
  final LatLng? circleCenter;
  final double? circleRadius; // radius of the circle in meters
  final LatLng? markerCoordinate;
  const MapWidget({
    super.key,
    this.polygonCoordinates,
    this.polylineCoordinates,
    this.circleCenter,
    this.circleRadius,
    this.markerCoordinate,
  });

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: const CameraPosition(
        target: LatLng(43.22326495922838, -94.3490369617939),
        zoom: 15.5,
      ),
      polygons: polygonCoordinates == null
          ? {}
          : {
              Polygon(
                polygonId: const PolygonId('polygonId'),
                points: polygonCoordinates!,
                strokeColor: const Color(0XFFFF0000),
                strokeWidth: 1,
                fillColor: const Color(0X77000000),
                onTap: () {},
              ),
            },
      polylines: polylineCoordinates == null
          ? {}
          : {
              Polyline(
                polylineId: const PolylineId('PolylineId'),
                points: polylineCoordinates!,
                color: const Color(0xFF0091FF),
                width: 2,
                onTap: () {},
              ),
            },
      circles: circleCenter == null
          ? {}
          : {
              Circle(
                circleId: const CircleId('CircleId'),
                center: circleCenter!,
                radius: circleRadius ?? 20,
                strokeColor: const Color(0xFFFFEA00),
                strokeWidth: 1,
                fillColor: const Color(0X77000000),
                onTap: () {},
              ),
            },
      markers: markerCoordinate == null
          ? {}
          : {
              Marker(
                markerId: const MarkerId('MarkerId'),
                position: markerCoordinate!,
                onTap: () {},
                onDrag: (coordinate) {},
                onDragStart: (coordinate) {},
                onDragEnd: (coordinate) {},
              ),
            },
      onTap: (argument) {
        print(argument);
      },
    );
  }
}
