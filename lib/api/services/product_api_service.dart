import 'dart:convert';

import 'package:blog/api/models/product_model.dart';
import 'package:http/http.dart'as http; 
 
 class ProductApiServices{
  Future<List<ProductModel>>getProductApi()async{
    List<ProductModel>products=[];
    var response = await http.get(Uri.parse("https://api.escuelajs.co/api/v1/categories"));
    var data = await jsonDecode(response.body);
    if(response.statusCode ==200){

      for(Map<String, dynamic> productData in data){
        products.add(ProductModel.fromJson(productData));

      }
    }
    print(products.length);
     
     return products;


  }
}


 
 class ProductApiServicess{
  Future<List<ProductModel1>>getProductApi()async{
    List<ProductModel1>products=[];
    var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    var data = await jsonDecode(response.body);
    if(response.statusCode ==200){

      for(Map<String, dynamic> productData in data){
        products.add(ProductModel1.fromJson(productData));

      }
    }
    print(products.length);
     
     return products;


  }
}


