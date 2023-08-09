import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/app_router.dart';
import 'core/app_theme/App_theme.dart';
import 'core/device_info.dart';


class AnyWhereApp extends ConsumerWidget {
  const AnyWhereApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerService);

    DeviceInfo.isTablet = DeviceInfo.deviceType(context);

    return MaterialApp.router(
      title: 'Anywhere test',
      theme: customAppTheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
