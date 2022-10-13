
import 'package:dio/dio.dart';
import 'package:package_get_it/models/model.dart';

class controller {
  Dio _dio=Dio();

  Future getData() async {
    Model? _model;
    final response = await _dio
       .get("https://some-random-api.ml/meme");
    _model = Model.fromJson(response.data);

    return _model;
  }
}
