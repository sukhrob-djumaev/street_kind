import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

@RoutePage()
class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: const CameraPosition(
              target: LatLng(41.3076182, 69.2627155),
              zoom: 113,
            ),

            // myLocationEnabled: true,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            zoomControlsEnabled: true,
            markers: {
              const Marker(
                markerId: MarkerId('1'),
                position: LatLng(41.338752, 69.338418),
              ),
              const Marker(
                markerId: MarkerId('2'),
                position: LatLng(41.363771, 69.298103),
              ),
              const Marker(
                markerId: MarkerId('3'),
                position: LatLng(41.353627, 69.288752),
              ),
              const Marker(
                markerId: MarkerId('4'),
                position: LatLng(41.334101, 69.285653),
              ),
              const Marker(
                markerId: MarkerId('5'),
                position: LatLng(41.322992, 69.311880),
              ),
              const Marker(
                markerId: MarkerId('6'),
                position: LatLng(41.285884, 69.253321),
              ),
            },
            gestureRecognizers: {}..add(Factory<EagerGestureRecognizer>(() => EagerGestureRecognizer()))),
      ),
    );
  }
}
