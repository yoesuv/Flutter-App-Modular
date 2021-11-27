import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_modular/src/feature/home/models/place_model.dart';

class ItemPlace extends StatelessWidget {

  final PlaceModel placeModel;

  const ItemPlace({Key? key, required this.placeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          SizedBox(
              width: double.infinity,
              height: 170.0,
              child: CachedNetworkImage(
                  imageUrl: placeModel.gambar ?? '',
                  fit: BoxFit.cover,
              )
          ),
          Container(
              width: double.infinity,
              height: 170.0,
              padding: const EdgeInsets.only(left: 8, bottom: 8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    textTitle(),
                    textSubTitle()
                  ]
              )
          )
        ],
      ),
    );
  }

  Widget textTitle() {
    return Text(
        placeModel.nama ?? '',
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            shadows: <Shadow>[
              Shadow(
                  color: Colors.black,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 2.0
              )
            ]
        )
    );
  }

  Widget textSubTitle() {
    return Text(
        placeModel.lokasi ?? '',
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            shadows: <Shadow>[
              Shadow(
                  color: Colors.black,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 2.0
              )
            ]
        )
    );
  }

}