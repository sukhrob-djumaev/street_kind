import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';
import 'package:street_kind/shared/router/app_router.gr.dart';

@RoutePage()
class ScanFeederQRPage extends StatelessWidget {
  const ScanFeederQRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan')),
      body: QRCodeDartScanView(
        scanInvertedQRCode: true, // enable scan invert qr code ( default = false)
        typeScan: TypeScan.live, //
        onCapture: (_) {
          context.router.push(const ConfirmFeedRoute());
        },
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Please scan QR code over feeder'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
