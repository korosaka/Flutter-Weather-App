class Weather {
  final String main;
  final String description;

  Weather({required this.main, required this.description});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      main: json['main'],
      description: json['description'],
    );
  }
}