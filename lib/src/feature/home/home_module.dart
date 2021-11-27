import 'package:flutter_app_modular/src/feature/home/blocs/home_bloc.dart';
import 'package:flutter_app_modular/src/feature/home/events/home_event.dart';
import 'package:flutter_app_modular/src/feature/home/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {

  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => BlocProvider(
      create: (context) => HomeBloc()..add(HomeEventInit()), 
      child: const HomeScreen(),
    )),
  ];
}