import 'package:bloc_app/bloc/weather_bloc.dart';
import 'package:bloc_app/bloc/weather_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search for weather"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        child: BlocListener<WeatherBloc, WeatherState>(
          listener: (BuildContext context, WeatherState state) {
            if(state is WeatherError){
              Scaffold.of(context).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (BuildContext context, state) {
                return buildInitialView();

            },
          ),
        ),
      ),
    );
  }
}

Widget buildInitialView(){
  return Center(
  );
}

Widget buildLoadingView(){
  return Center(
    child: CircularProgressIndicator(),
  );
}