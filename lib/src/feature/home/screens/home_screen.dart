import 'package:flutter/material.dart';
import 'package:flutter_app_modular/src/feature/home/blocs/home_bloc.dart';
import 'package:flutter_app_modular/src/feature/home/events/home_event.dart';
import 'package:flutter_app_modular/src/feature/home/states/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage')),
      body: BlocProvider(create: (context) => HomeBloc()..add(HomeEventInit()),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, HomeState state){
            if (state is HomeStateSuccess) {
              final dataSize = state.listPlace.length;
              return Center(
                child: Text('Home Screen # data size $dataSize'),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          } ,
        )
      ),
    );
  }

}