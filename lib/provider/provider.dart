import 'package:blog/api/models/product_model.dart';
import 'package:blog/api/services/product_api_service.dart';
import 'package:flutter/material.dart';

class samagiri extends ChangeNotifier {
  List<ProductModel> products = [];
  void getProducts() async {
    products = await ProductApiServices().getProductApi();
    notifyListeners();
  }
}
