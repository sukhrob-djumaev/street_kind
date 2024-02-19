import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:street_kind/shared/router/app_router.gr.dart';

import '../../../gen/assets.gen.dart';

@RoutePage()
class ExchangePage extends StatelessWidget {
  const ExchangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Exchange pawcoins'),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple.shade300,
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              child: const Text(
                '850',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            ListTile(
              onTap: () {},
              title: const Text('Travel package'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '3000',
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
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text('Headphones'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '1800',
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
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text('Power bank'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '1000',
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
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text('Concert ticket'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '500',
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
              ),
            ),
            ListTile(
              onTap: () {
                context.router.push(const ExchangeTShirtRoute());
              },
              title: const Text('T-shirt'),
              trailing: Row(
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
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text('Phone case'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '200',
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
              ),
            ),
          ],
        ),
      )),
    );
  }
}
