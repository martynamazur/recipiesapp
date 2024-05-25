import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_spoonacular.g.dart';

@riverpod
Dio dioSpoonacular (DioSpoonacularRef ref) {
  final options = BaseOptions(baseUrl: 'https://api.spoonacular.com/');
  final apiKey = dotenv.env['SPOONACULAR_KEY'];
  options.headers = {
    'x-api-key': apiKey
  };
  return Dio(options);
}
