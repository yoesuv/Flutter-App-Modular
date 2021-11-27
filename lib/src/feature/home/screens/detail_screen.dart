import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_modular/src/feature/home/models/place_model.dart';

class DetailScreen extends StatelessWidget {

  final PlaceModel? placeModel;

  const DetailScreen({Key? key, this.placeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail'), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: double.infinity,
              height: 250.0,
              child: CachedNetworkImage(
                imageUrl: placeModel?.gambar ?? '',
                fit: BoxFit.cover,
              )
          ),
          _textTitle(),
          _textDescription(),
        ],
      ),
    );
  }

  Widget _textTitle() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(placeModel?.nama ?? '',
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _textDescription() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(placeModel?.deskripsi ?? '',
        style: const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
        ),
      ),
    );
  }

}