import 'package:flutter_dotenv/flutter_dotenv.dart';

class Utils {
  static List<String> getSplitedString(String text) {
    List<String> parts = text.split(' - ');

    return parts;
  }

  static String getImageUrl({String url = ""}) {
     final baseUrl = dotenv.env['IMAGE_BASE_URL']!;

    if(url.isNotEmpty){
      url = baseUrl + url;
    }
  

    return url;
  }
}
