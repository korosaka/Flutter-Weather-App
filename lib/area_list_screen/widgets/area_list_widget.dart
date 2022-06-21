import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';
import '../../weather_info_screen/weather_info_screen.dart';
import '../area_list_screen.dart';

class AreaListWidget extends StatelessWidget {
  const AreaListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build on AreaListWidget1');
    return Consumer(builder: (context, ref, child) {
      final areas = ref.watch(areaListProvider.select((state) {
        return state.areaList;
      }));

      print('build on AreaListWidget2');
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WeatherInfoScreen(cityId: areas[index].id);
                  }));
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(areas[index].country,
                            style: const TextStyle(fontSize: 20),
                            textAlign: TextAlign.center),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Text(
                        areas[index].city,
                        style: const TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: areas.length,
      );
    });
  }
}
