import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_flutter_app/area_list_screen/area_list_notifier.dart';
import 'package:weather_flutter_app/area_list_screen/area_list_state.dart';

import 'area_list_screen/area_list_screen.dart';

void main() {
  runApp(const MyApp());
}

// final areaListProvider =
// StateNotifierProvider<AreaListNotifier, AreaListState>((ref) {
//   return AreaListNotifier();
// });


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AreaListScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

final areaListProvider =
    StateNotifierProvider<AreaListNotifier, AreaListState>((ref) {
      return AreaListNotifier();
    });
