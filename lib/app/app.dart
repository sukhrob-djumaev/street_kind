import 'package:flutter/material.dart';
import 'package:street_kind/gen/fonts.gen.dart';

import '../shared/router/app_router.dart';

class App extends StatelessWidget {
  App({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: FontFamily.cabin,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}
