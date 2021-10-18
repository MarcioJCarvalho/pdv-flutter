import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:pdv_flutter/app/domain/entities/product.dart';
import 'package:pdv_flutter/app/domain/services/product_service.dart';

part 'product_form_back.g.dart';

class ProductFormBack = _ProductFormBack with _$ProductFormBack;

abstract class _ProductFormBack with Store{
  Product product;
  var _service = GetIt.I.get<ProductService>();
  bool _nameIsValid;
  bool _qtdIsValid;

  //@action
  bool get isValid => _nameIsValid && _qtdIsValid;

  //diferenciar novo com alteração
  _ProductFormBack(BuildContext context){
    var parameter = ModalRoute.of(context).settings.arguments;
    product = (parameter == null)? Product(): parameter;
  }

  //salvar
  save() async{
    await _service.save(product);
  }

  //validações
  String validateName(String name){
    try{
      _service.validateName(name);
      _nameIsValid = true;
      return null;
    }catch(e){
      _nameIsValid = false;
      return e.toString();
    }
  }

  String validateQtd(String qtd){
    try{
      _service.validateQtd(qtd);
      _qtdIsValid = true;
      return null;
    }catch(e){
      _qtdIsValid = false;
      return e.toString();
    }
  }
}