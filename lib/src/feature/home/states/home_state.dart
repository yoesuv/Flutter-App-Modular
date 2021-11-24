import 'package:equatable/equatable.dart';
import 'package:flutter_app_modular/src/feature/home/models/place_model.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeStateInit extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeStateSuccess extends HomeState {
  final List<PlaceModel> listPlace;

  const HomeStateSuccess(this.listPlace);

  @override
  List<Object> get props => [listPlace];
}