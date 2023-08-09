
import 'package:anywhere_v_one/service/charactor_sevices.dart';
import 'package:anywhere_v_one/service/service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart'; // For creating mock objects
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('ApiService', () {
    dotenv.load(fileName: '.env');

    ApiServices apiServices = ApiServices();
    CharacterServices characterServices = CharacterServices();


  //This test is to ensure that the api service is working as it should
    test('Test API response', () async {
      final response = await apiServices.get();
      expect(response.statusCode, 200);
    });

   
    //This test is to ensure that after the api service runs it is correctly mapped.
    //This would be known because our expected list should not be empty,
    test('getCharacters returns Character object', () async {
     
      final result = await characterServices.getCharacters();

  
      expect(result.relatedTopics.isNotEmpty, true);
    });


  });
}
