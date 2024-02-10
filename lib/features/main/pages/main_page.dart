import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:street_kind/gen/assets.gen.dart';
import 'package:street_kind/shared/router/app_router.gr.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: const [
          LeaderboardRoute(),
          MapRoute(),
        ],
        builder: (context, child, _) {
          final tabsRouter = AutoTabsRouter.of(context);

          return Scaffold(
            body: child,
            floatingActionButton: SizedBox(
              height: 70,
              width: 70,
              child: FloatingActionButton(
                onPressed: () {
                  context.router.push(const ScanFeederQRRoute());
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                elevation: 10,
                child: Assets.images.raster.petfood.image(),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) => tabsRouter.setActiveIndex(index),
              currentIndex: tabsRouter.activeIndex,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.leaderboard,
                  ),
                  label: 'Leaderboard',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.map,
                  ),
                  label: 'Map',
                ),
              ],
            ),
          );
        });
  }
}
