import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/string_constants.dart';
import '../../provider/characters_provider.dart';

class CustomTextField extends ConsumerWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        onChanged: (value) {
          ref.read(characterProvider.notifier).setListItems();
        },
        controller: ref.watch(characterProvider).textEditingController,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            hintText: AppString.search,
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
