import 'package:weather/models/weather_model.dart';

abstract class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class WeatherLoadingState extends WeatherStates {}

class WeatherSuccessState extends WeatherStates 
{
  WeatherModel weatherModel;
  WeatherSuccessState({required this.weatherModel});
}

class WeatherFailureState extends WeatherStates {}
