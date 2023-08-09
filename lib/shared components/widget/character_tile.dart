
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../constants/route_name.dart';
import '../../core/device_info.dart';
import '../../models/api_model/related_topic.dart';
import '../../provider/characters_provider.dart';
import '../../utils.dart';

class CharacterTiles extends ConsumerWidget {
  const CharacterTiles(
      {super.key, required this.index, required this.relatedTopics});

  final int index;

  final RelatedTopics? relatedTopics;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(characterProvider.notifier).setSelectedItem(relatedTopics!);
        if (DeviceInfo.isTablet) {
          context.pushNamed(RouteName.characterDetail);
        } else {}
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black45),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
          child: Text(
            Utils.getSplitedString(relatedTopics!.text!).first,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
