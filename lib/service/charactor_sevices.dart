import 'dart:developer';
import 'package:anywhere_v_one/service/service.dart';

import '../models/api_model/characters_model.dart';
import 'dart:convert' as convert;

class CharacterServices {
  ApiServices apiServices = ApiServices();

  Future<Character> getCharacters() async {
    Map<String, dynamic>? response;
    try {
      var jsonResponse = await apiServices.get();
      if (jsonResponse.statusCode == 200) {
        response =
            convert.jsonDecode(jsonResponse.data) as Map<String, dynamic>;
      }
    } catch (e) {
      log(e.toString());
    }

    return Character.fromJson(response);
  }
}
