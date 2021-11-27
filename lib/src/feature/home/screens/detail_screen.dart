import 'package:flutter/material.dart';
import 'package:flutter_app_modular/src/feature/home/models/place_model.dart';

class DetailScreen extends StatelessWidget {

  final PlaceModel? placeModel;

  const DetailScreen({Key? key, this.placeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail'), centerTitle: true),
      body: const Center(
        child: Text('Detail Screen'),
      ),
    );
  }

}