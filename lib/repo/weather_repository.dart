import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/weather_entity/weather_entity.dart';

class WeatherRepository {
  static Future<WeatherEntity> fetchWeather(String cityId) async {
    const baseUrl = 'https://api.openweathermap.org/data/2.5/weather?';
    const idParam = 'id';
    const keyPram = 'appid';
    const appKey = '6b19405ec895be3eeaab81074be2cf95';

    final finalUrl = baseUrl + idParam + '=' + cityId + '&' + keyPram + '=' + appKey;

    final response = await http.get(Uri.parse(finalUrl));

    if (response.statusCode == 200) {
      final dynamic myJson = json.decode(response.body);
      return WeatherEntity.fromJson(myJson);
    } else {
      throw Exception('Failed to load weather');
    }

  }
}