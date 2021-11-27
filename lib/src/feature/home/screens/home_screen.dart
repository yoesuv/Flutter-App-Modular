import 'package:flutter/material.dart';
import 'package:flutter_app_modular/src/feature/home/blocs/home_bloc.dart';
import 'package:flutter_app_modular/src/feature/home/states/home_state.dart';
import 'package:flutter_app_modular/src/feature/home/widgets/item_place.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage')),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, HomeState state){
          if (state is HomeStateSuccess) {
            return ListView.builder(
              itemCount: state.listPlace.length,
              itemBuilder: (context, index) {
                final data = state.listPlace[index];
                return ItemPlace(placeModel: data);
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        } ,
      ),
    );
  }

}