import 'package:flutter/material.dart';

import 'related_topic.dart';

class Character {
  Character(
      {this.relatedTopics = const <RelatedTopics>[],
      this.selectedItem,
      this.searchItems = const <RelatedTopics>[],
      this.textEditingController});

  List<RelatedTopics> relatedTopics = <RelatedTopics>[];
  RelatedTopics? selectedItem;
  TextEditingController? textEditingController = TextEditingController();
  List<RelatedTopics> searchItems = <RelatedTopics>[];

  factory Character.fromJson(dynamic json) {
    return Character(
        relatedTopics: List<RelatedTopics>.from(
            json["RelatedTopics"].map((dynamic element) {
      return RelatedTopics.fromJson(element);
    }) as Iterable<dynamic>));
  }

  Character copywith(
      {List<RelatedTopics>? relatedTopics, RelatedTopics? selectedItem,List<RelatedTopics>? searchItems,TextEditingController? textEditingController}) {
    return Character(
        relatedTopics: relatedTopics ?? this.relatedTopics,
        searchItems: searchItems?? this.searchItems,
        textEditingController: textEditingController?? this.textEditingController,
        selectedItem: selectedItem ?? this.selectedItem);
  }
}
