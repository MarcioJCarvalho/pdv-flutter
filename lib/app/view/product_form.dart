import 'package:flutter/material.dart';
import 'package:pdv_flutter/app/view/product_form_back.dart';

class ProductForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();

Widget fildName(ProductFormBack back){
  return TextFormField(
    validator: back.validateName,
    onSaved: (newValue) => back.product.nome = newValue,
    initialValue: back.product.nome,
    decoration: InputDecoration(
      labelText: 'Nome'
    ),
  ); 
}

Widget fildQtd(ProductFormBack back){
  return TextFormField(
    validator: back.validateQtd,
    onSaved: (newValue) => back.product.quantidade = newValue,
    initialValue: back.product.quantidade,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: 'Quantidade'
    ),
  ); 
}

Widget fildImg(ProductFormBack back){
  return TextFormField(
    onSaved: (newValue) => back.product.urlImg = newValue,
    initialValue: back.product.urlImg,
    decoration: InputDecoration(
      labelText: 'Url Imagem',
      hintText: 'http://www.site.com'
    ),
  ); 
}

  @override
  Widget build(BuildContext context) {
    var _back = ProductFormBack(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produto'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: (){
              _form.currentState.validate();
              _form.currentState.save();
              if(_back.isValid){
                _back.save();
                Navigator.of(context).pop();
              }
          })
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _form,
          child: Column(
            children: [
              fildName(_back),
              fildQtd(_back),
              fildImg(_back)
            ],
          )),
      ),
    );
  }
}