import 'package:flutter/material.dart';
import 'package:pdv_flutter/app/view/home.dart';

// exemplo de StateLessWidget
class App extends StatelessWidget {
  //rotas
  static const HOME = '/';
  static const PRODUCT_LIST = 'product-list';
  static const PRODUCT_FORM = 'product-form';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // exemplo de rota 
      routes: {
        HOME:(context)=>Home(),
      },
    );
  }
}