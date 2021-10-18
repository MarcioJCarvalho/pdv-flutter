import 'package:flutter/material.dart';

class ProductForm extends StatelessWidget {

Widget fildName(){
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Nome'
    ),
  ); 
}

Widget fildQtd(){
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Quantidade'
    ),
  ); 
}

Widget fildImg(){
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Url Imagem',
      hintText: 'http://www.site.com'
    ),
  ); 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produto'),
        actions: [
          IconButton(icon: Icon(Icons.save),
          onPressed: null)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              fildName(),
              fildQtd(),
              fildImg()
            ],
          )),
      ),
    );
  }
}