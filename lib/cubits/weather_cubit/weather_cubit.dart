import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/weather_cubit/weather_states.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/weather_service.dart';
class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit(this.weatherServece)
      : super(WeatherInitialState());
 WeatherModel?  weatherModel;
 WeatherService weatherServece;
 String? cityName;
  void getWeather({required String cityName}) async {
    emit(WeatherLoadingState());
    try {
    WeatherModel  weatherModel = await weatherServece.getWeather(cityName: cityName);
      emit(WeatherSuccessState(weatherModel: weatherModel));
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
