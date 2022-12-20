import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_clone/src/config/routes/routes.dart';
import 'package:spotify_clone/src/config/theme/theme.dart';

/// The main app class
class App extends StatelessWidget {
  /// The main app constructor
  App({super.key});

  final _router = GoRouter(
    routes: AppRoutes.routes,
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, _) {
        return MaterialApp.router(
          routerConfig: _router,
          theme: AppTheme.theme,
        );
      },
    );
  }
}
