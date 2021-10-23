import 'package:flutter/material.dart';
import 'package:pdv_flutter/app/domain/entities/product.dart';
import 'package:pdv_flutter/app/view/product_details_back.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails();

  @override
  Widget build(BuildContext context) {
    var _back = ProductDetailsBack(context);
    Product product = _back.product;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        var width = constraints.biggest.width;
        var radius = width/3;
        //var height = constraints.biggest.height;

        return Scaffold(
          body: ListView(
            children: [
              (Uri.tryParse(product.urlImg).isAbsolute)?
                // trocar os CircleAvatar para fotos do produto
                CircleAvatar(
                  backgroundImage: NetworkImage(product.urlImg),
                  radius:  radius,
                ):
                CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: width/2,
                  ),
                  radius:  radius,
                ),
              Center(
                child: Text('${product.nome}',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Quantidade'),
                  subtitle: Text('${product.quantidade}'),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: (){
              _back.goToBack();
            },
          ),
        );
      },
    );
  }
}