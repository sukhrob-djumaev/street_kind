import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:street_kind/shared/router/app_router.gr.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) {
      context.router.replace(const MainRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Assets.images.raster.feeding.image()),
    );
  }
}
