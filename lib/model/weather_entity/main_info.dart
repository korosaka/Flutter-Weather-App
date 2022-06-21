class MainInfo {
  final double temp;

  MainInfo({required this.temp});

  factory MainInfo.fromJson(Map<String, dynamic> json) {
    return MainInfo(
      temp: json['temp']
    );
  }
}