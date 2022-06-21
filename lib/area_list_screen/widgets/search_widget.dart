import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build on SearchWidget1');
    return Consumer(builder: (context, ref, child) {

      print('build on SearchWidget2');
      final notifier = ref.read(areaListProvider.notifier);
      return TextField(
        onChanged: (text) {
          print('onChanged on SearchWidget');
          notifier.updateKeyword(text);
        },
        decoration: const InputDecoration(
            labelText: "Filtering", hintText: "enter country or city name"),
      );
    });
  }
}
