import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_flutter_app/area_list_screen/area_list_state.dart';
import 'package:weather_flutter_app/model/area_data.dart';

import 'area_test_data.dart';

class AreaListNotifier extends StateNotifier<AreaListState> {
  AreaListNotifier() : super(const AreaListState(areaList: [])) {
    for (var area in AreaList.areaList) {
      //TODO async
      addArea(area);
    }
  }

  void updateKeyword(String word) {
    state = state.copyWith(newWord: word);
    final List<AreaData> newList = [];
    print(AreaList.areaList.length);
    for(var area in AreaList.areaList) {
      if (area.city.contains(state.keyword)) newList.add(area);
    }
    print(newList.length);

    if (newList.length != state.areaList.length) {
      state = state.copyWith(areaList: newList);
    }
  }

  void addArea(AreaData area) {
    final List<AreaData> newList = [...state.areaList];
    newList.add(area);
    state = state.copyWith(areaList: newList);
  }


}
