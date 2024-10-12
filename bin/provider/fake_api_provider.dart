import 'package:dio/dio.dart';
import '../models/cart_model.dart';

abstract class ApiPaths{
  static const products = "carts";
}
class FakeApiProvider {
  final Dio _client = Dio(BaseOptions(baseUrl: "https://fakestoreapi.com/"));

  Future<List<CartModel>> getCarts() async {
    final response = await _client.get(ApiPaths.products);
    final cartJsonList = response.data as List<dynamic>;
    final result = cartJsonList.map((e) => CartModel.fromJson(e)).toList();
    return result;
  }
}