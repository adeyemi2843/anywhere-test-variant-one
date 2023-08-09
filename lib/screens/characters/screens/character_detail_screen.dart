import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/string_constants.dart';
import '../../../core/device_info.dart';
import '../../../provider/characters_provider.dart';
import '../../../shared components/widget/character_detail_widget.dart';
import '../../../shared components/widget/custom_appbar.dart';
import '../../../utils.dart';

class CharacterDetailScreen extends ConsumerWidget {
  const CharacterDetailScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: AppString.characterDetail,
        showBackButton:DeviceInfo.isTablet? true:false,
      ),
      body:  CharacterDetailWidget(
        title: Utils.getSplitedString(ref.watch(characterProvider).selectedItem?.text??'').first,
        description:  Utils.getSplitedString(ref.watch(characterProvider).selectedItem?.text??'').last,
        image: Utils.getImageUrl(url:ref.watch(characterProvider).selectedItem?.icon?.url??'')
      ),
    );
  }
}
