import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/string_constants.dart';
import '../../../core/device_info.dart';
import '../../../provider/characters_provider.dart';
import '../../../shared components/widget/character_tile.dart';
import '../../../shared components/widget/custom_appbar.dart';
import '../../../shared components/widget/custom_text_field.dart';

class CharactersListScreen extends ConsumerWidget {
  const CharactersListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: AppString.charactersListScreen,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
              flex: 4,
              child:
                  Align(alignment: Alignment.center, child: CustomTextField())),
          Expanded(
            flex: DeviceInfo.deviceOrientation(context) ? 40 : 15,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: (ref.watch(characterProvider).searchItems.isNotEmpty)
                  ? ref.watch(characterProvider).searchItems.length
                  : ref.watch(characterProvider).relatedTopics.length,
              itemBuilder: (BuildContext context, int index) => CharacterTiles(
                index: index,
                relatedTopics:
                    (ref.watch(characterProvider).searchItems.isNotEmpty)
                        ? ref.watch(characterProvider).searchItems[index]
                        : ref.watch(characterProvider).relatedTopics[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
