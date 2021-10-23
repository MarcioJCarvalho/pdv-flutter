
import 'package:flutter/cupertino.dart';
import 'package:pdv_flutter/app/domain/entities/product.dart';

class ProductDetailsBack{
  BuildContext context;
  Product product;
  ProductDetailsBack(this.context){
    product = ModalRoute.of(context).settings.arguments;
  }

  goToBack(){
    Navigator.of(context).pop();
  }

}