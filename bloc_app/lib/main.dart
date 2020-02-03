import 'package:bloc_app/bloc/bloc.dart';
import 'package:bloc_app/pages/weather_search_page.dart';
import 'package:bloc_app/repository/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather app",
      home: BlocProvider(
        create: (BuildContext context) { WeatherBloc(FakeWeatherRepository()); },
        child: WeatherSearchPage()
      ),
    );
  }
}