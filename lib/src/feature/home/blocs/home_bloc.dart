import 'package:flutter_app_modular/src/feature/home/events/home_event.dart';
import 'package:flutter_app_modular/src/feature/home/models/place_model.dart';
import 'package:flutter_app_modular/src/feature/home/repositories/home_repository.dart';
import 'package:flutter_app_modular/src/feature/home/states/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final HomeRepository _homeRepository = HomeRepository();

  HomeBloc() : super(HomeStateInit()) {
    on<HomeEventInit>(_loadPlaces);
  }

  Future<void> _loadPlaces(HomeEventInit event, Emitter<HomeState> emit) async{
    try {
      List<PlaceModel> list = await _homeRepository.getListPlace();
      return emit(HomeStateSuccess(list));
    } catch (e) {
      return emit(HomeStateFailed());
    }
  }

}