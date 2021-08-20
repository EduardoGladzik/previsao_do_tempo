import 'package:dio/dio.dart';

Future getData() async {
  var dio = Dio();
  var result = await dio.get("https://api.hgbrasil.com/weather?woeid=721943&key=04296706");
  return result.data;
}