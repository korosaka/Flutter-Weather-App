import 'package:flutter/cupertino.dart';
import 'package:weather_flutter_app/model/area_data.dart';

@immutable
class AreaListState {
  final String keyword;
  final List<AreaData> areaList;

  const AreaListState({
    this.keyword = '',
    required this.areaList
  });

  AreaListState copyWith({String? newWord, List<AreaData>? areaList}) {
    return AreaListState(keyword: newWord ?? keyword, areaList: areaList ?? this.areaList);
  }
}
