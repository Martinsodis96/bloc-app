import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Weather extends Equatable {
  final String cityName;
  final double temperature;
  final double temperatureTomorrow;

  Weather(
      {@required this.cityName,
      @required this.temperature,
      this.temperatureTomorrow});

  @override
  List<Object> get props => [cityName, temperature, temperatureTomorrow];
}
