
import 'package:flutter/material.dart';

import '../core/app_theme/app_colors.dart';
import 'characters/screens/character_detail_screen.dart';
import 'characters/screens/character_list_screen.dart';


class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Material(
      color: AppTheme.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(flex: 4, child: CharactersListScreen()),
          Expanded(flex: 6, child: CharacterDetailScreen())
        ],
      ),
    );
  }
}
