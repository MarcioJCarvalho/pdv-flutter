import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pdv_flutter/app/app.dart';
import 'package:pdv_flutter/app/domain/entities/product.dart';
import 'package:pdv_flutter/app/view/product_list_back.dart';

class ProductList extends StatelessWidget {
  //retorna de forma assincrona uma lista de Map com seu respectivo valor

final _back = ProductListBack();

CircleAvatar circleAvatar(String url){
  return(Uri.tryParse(url).isAbsolute)?
    CircleAvatar(backgroundImage: NetworkImage(url))
    : CircleAvatar(child: Icon(Icons.add_a_photo));
}

Widget iconEditButton(Function edit){
  return IconButton(icon: Icon(Icons.edit), color: Colors.orange,onPressed: edit);
}

Widget iconDeleteButton(BuildContext context, Function delete){
  return IconButton(
    icon: Icon(Icons.delete), 
    color: Colors.red,
    onPressed: (){
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Excluir'),
          content: Text('O item será excluido'),
          actions: [
            FlatButton(
              child: Text('Cancelar'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: delete
            ),
          ],
        )
      );
    }
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              _back.goToForm(context);
            },
          )
        ],
      ),
      body:Observer(builder: (context){
      return  FutureBuilder(
      future: _back.list,
      builder: (context, futuro){
        if(!futuro.hasData){
          return CircularProgressIndicator();
        }else{
          List<Product> lista = futuro.data;
          return ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, i){
            var produto = lista[i];
            return ListTile(
              leading: circleAvatar(produto.urlImg),
              title: Text(produto.nome),
              onTap: (){
                _back.goToDetails(context, produto);
              },
              subtitle: Text(produto.quantidade),
              trailing: Container(
                width: 100,
                child: Row(
                  children: [
                    iconEditButton((){
                      _back.goToForm(context, produto);
                    }),
                    iconDeleteButton(context, (){
                      _back.remove(produto.id);
                      Navigator.of(context).pop();
                    }),
                  ],
                ),
              ),
            );
          },
        );
      }
    });
    }));
  }
}