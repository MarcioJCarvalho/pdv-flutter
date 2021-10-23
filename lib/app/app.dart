import 'package:flutter/material.dart';
import 'package:pdv_flutter/app/view/home.dart';
import 'package:pdv_flutter/app/view/product_details.dart';
import 'package:pdv_flutter/app/view/product_form.dart';
import 'package:pdv_flutter/app/view/product_list.dart';

// exemplo de StateLessWidget
class App extends StatelessWidget {
  //rotas
  static const HOME = '/';
  static const PRODUCT_LIST = 'product-list';
  static const PRODUCT_FORM = 'product-form';
  static const PRODUCT_DETAILS = 'product-details';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // exemplo de rota 
      routes: {
        HOME:(context)=>Home(),
        PRODUCT_LIST:(context)=>ProductList(),
        PRODUCT_FORM:(context)=>ProductForm(),
        PRODUCT_DETAILS:(context)=>ProductDetails(),
      },
    );
  }
}