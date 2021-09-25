import 'package:flutter/material.dart';
import 'package:pdv_flutter/app/app.dart';
import 'package:pdv_flutter/app/domain/entities/product.dart';

class ProductList extends StatelessWidget {
  //retorna de forma assincrona uma lista de Map com seu respectivo valor
  Future<List<Product>> _buscar()async{
    //return await ProductDAOImpl().find();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _buscar(),
      builder: (context, futuro){
        if(futuro.hasData){
          List<Product> lista = futuro.data;
          return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i){
          var produto = lista[i];
          var img = CircleAvatar(backgroundImage: NetworkImage(produto.urlImg));
          return ListTile(
            leading: img,
            title: Text(produto.nome),
            subtitle: Text(produto.quantidade),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.edit), onPressed: null),
                  IconButton(icon: Icon(Icons.delete), onPressed: null),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {Navigator.of(context).pushNamed(App.PRODUCT_FORM);},
        tooltip: 'Add Produto',
        child: Icon(Icons.add),
      ),
    );
        }else{
          return Scaffold();
        }
      }
    );
  }
}