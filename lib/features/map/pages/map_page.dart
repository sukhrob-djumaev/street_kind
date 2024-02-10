import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:street_kind/gen/assets.gen.dart';

@RoutePage()
class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(41.3076182, 69.2627155),
        initialZoom: 13,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        CurrentLocationLayer(
          alignPositionOnUpdate: AlignOnUpdate.always,
        ),
        MarkerLayer(
          markers: [
            Marker(
              rotate: true,
              point: const LatLng(41.338752, 69.338418),
              child: Assets.images.raster.pawpointer.image(width: 80),
            ),
            Marker(
              rotate: true,
              point: const LatLng(41.363771, 69.298103),
              child: Assets.images.raster.pawpointer.image(width: 80),
            ),
            Marker(
              rotate: true,
              point: const LatLng(41.353627, 69.288752),
              child: Assets.images.raster.pawpointer.image(width: 80),
            ),
            Marker(
              rotate: true,
              point: const LatLng(41.334101, 69.285653),
              child: Assets.images.raster.pawpointer.image(width: 80),
            ),
            Marker(
              rotate: true,
              point: const LatLng(41.322992, 69.311880),
              child: Assets.images.raster.pawpointer.image(width: 80),
            ),
            Marker(
              rotate: true,
              point: const LatLng(41.285884, 69.253321),
              child: Assets.images.raster.pawpointer.image(width: 80),
            ),
          ],
        ),
        // RichAttributionWidget(
        //   attributions: [
        //     TextSourceAttribution(
        //       'OpenStreetMap contributors',
        //       onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
