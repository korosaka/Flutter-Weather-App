import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_flutter_app/area_list_screen/widgets/area_list_widget.dart';
import 'package:weather_flutter_app/area_list_screen/widgets/search_widget.dart';

import 'area_list_notifier.dart';
import 'area_list_state.dart';

class AreaListScreen extends StatelessWidget {
  const AreaListScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            SearchWidget(),
            Expanded(child: AreaListWidget(),)
          ],
        ),
      ),
    ));
  }
}
