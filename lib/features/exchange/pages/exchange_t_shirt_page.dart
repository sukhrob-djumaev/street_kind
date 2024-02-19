import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

@RoutePage()
class ExchangeTShirtPage extends StatelessWidget {
  const ExchangeTShirtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('T-shirt'),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '300',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Assets.images.raster.pawcoin.image(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Assets.images.raster.tShirt.image(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        heroTag: '12345',
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: Assets.animations.success.lottie(),
            ),
          );
          Future.delayed(const Duration(milliseconds: 1500)).then((value) => context.router.popUntilRoot());
        },
        label: const Text(
          'Exchange',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
      ),
    );
  }
}
