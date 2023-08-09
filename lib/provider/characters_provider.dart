import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/api_model/characters_model.dart';
import '../models/api_model/related_topic.dart';
import '../service/charactor_sevices.dart';
import '../utils.dart';

final characterProvider =
    StateNotifierProvider<CharacterProvider, Character>((ref) {
  return CharacterProvider();
});

class CharacterProvider extends StateNotifier<Character> {
  CharacterProvider()
      : super(Character()
            .copywith(textEditingController: TextEditingController()));
  Character? characters;

  Future<void> getAllCharacters() async {
    CharacterServices apiServices = CharacterServices();
    final Character character = await apiServices.getCharacters();
    state = state.copywith(relatedTopics: character.relatedTopics);
  }

  void setSelectedItem(RelatedTopics relatedTopics) {
    state = state.copywith(selectedItem: relatedTopics);
  }

  List<RelatedTopics> searchCharacterList() {
    final list = state.relatedTopics.where((element) => Utils.getSplitedString(element.text!.toLowerCase())
            .first
            .contains(state.textEditingController!.text.toLowerCase()))
        .toList();

    return list;
  }

  void setListItems() {
    state = state.copywith(searchItems: searchCharacterList());
  }
}
