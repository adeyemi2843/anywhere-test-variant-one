


import 'icon.dart';

class RelatedTopics {
  RelatedTopics({this.firstUrl, this.icon, this.result, this.text});



  factory RelatedTopics.fromJson(dynamic json) {
    return RelatedTopics(
        firstUrl: json["FirstUrl"],
        icon: Icon.fromJson(json["Icon"]),
        result: json["Result"],
        text: json["Text"]);
  }
  String? firstUrl;
  Icon? icon;
  String? result;
  String? text;
}
