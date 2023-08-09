
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/app_theme/app_colors.dart';
import '../core/device_info.dart';
import '../provider/characters_provider.dart';
import 'mobile_home_screen.dart';
import 'tablet_home_screen.dart';

class MasterScreen extends ConsumerStatefulWidget {
  const MasterScreen({super.key});

  @override
  ConsumerState<MasterScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<MasterScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(characterProvider.notifier).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {

    return Material(
      color: AppTheme.white,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              flex: 1,
              child: DeviceInfo.isTablet
                  ? const MobileHomeScreen()
                  : const TabletHomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}
