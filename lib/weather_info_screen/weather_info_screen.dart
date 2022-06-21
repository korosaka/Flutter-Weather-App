import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../repo/weather_repository.dart';

class WeatherInfoScreen extends StatelessWidget {
  const WeatherInfoScreen({Key? key, required this.cityId}) : super(key: key);

  final String cityId;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'CityID: $cityId',
            ),
            ElevatedButton(
                onPressed: () async {
                  final weather = await WeatherRepository.fetchWeather(cityId);
                  print(weather.weather[0].description);
                },
                child: const Text('Button'))
          ],
        ),
      ),
    );
  }

}