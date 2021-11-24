import 'package:dio/dio.dart';
import 'package:flutter_app_modular/src/feature/home/models/place_model.dart';
import 'package:flutter_app_modular/src/networks/network_helper.dart';

class HomeRepository {

  final NetworkHelper _networkHelper = NetworkHelper();

  Future<List<PlaceModel>> getListPlace() async {
    final Response<dynamic> response = await _networkHelper.get('List_place_malang_batu.json') as Response<dynamic>;
    return PlaceModel.buildListFromJson(response.data);
  }

}