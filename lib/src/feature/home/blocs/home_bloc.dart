import 'package:flutter_app_modular/src/feature/home/events/home_event.dart';
import 'package:flutter_app_modular/src/feature/home/models/place_model.dart';
import 'package:flutter_app_modular/src/feature/home/repositories/home_repository.dart';
import 'package:flutter_app_modular/src/feature/home/states/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final HomeRepository _homeRepository = HomeRepository();

  HomeBloc(HomeState initialState) : super(initialState);

  @override
  void onEvent(HomeEvent event) {
    super.onEvent(event);
    if (event is HomeEventInit) {
      _loadPlaces();
    }
  }

  Stream<HomeState> _loadPlaces() async*{
    try {
      List<PlaceModel> list = await _homeRepository.getListPlace();
      yield HomeStateSuccess(list);
    } catch (e) {
      yield HomeStateFailed();
    }
  }

}