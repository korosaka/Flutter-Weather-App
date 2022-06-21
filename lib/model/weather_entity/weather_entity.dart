import 'package:weather_flutter_app/model/weather_entity/main_info.dart';
import 'package:weather_flutter_app/model/weather_entity/weather.dart';

class WeatherEntity {
  final List<Weather> weather;
  final MainInfo main;
  final String name;

  WeatherEntity({required this.weather, required this.main, required this.name});

  factory WeatherEntity.fromJson(Map<String, dynamic> json) {
    List<Weather> weatherList = [];
    final List<dynamic> weatherJson = json['weather'];
    weatherList = weatherJson.map((w) => Weather.fromJson(w)).toList();
    return WeatherEntity(
      weather: weatherList,
      main: MainInfo.fromJson(json['main']),
      name: json['name']
    );
  }
}