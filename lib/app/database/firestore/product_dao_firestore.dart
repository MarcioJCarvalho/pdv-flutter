import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pdv_flutter/app/domain/entities/product.dart';
import 'package:pdv_flutter/app/domain/interfaces/product_dao.dart';

class ProductDAOFirestore implements ProductDAO {
  CollectionReference productCollection;

  ProductDAOFirestore() {
    productCollection = FirebaseFirestore.instance.collection('product');
  }
  @override
  Future<List<Product>> find() async {
    var result = await productCollection.get();
    return result.docs.map(
      (doc) => Product(
        id: doc.reference.id.toString(),
        nome: doc['nome'],
        quantidade: doc['quantidade'],
        //.toList no final para não dar erro
        urlImg: doc['urlImg'])).toList();
  }

  @override
  remove(id) {
    productCollection.doc(id).delete();
  }

  @override
  save(Product product) {
    productCollection.doc(product.id).set({
      'nome': product.nome,
      'quantidade': product.quantidade,
      'urlImg': product.urlImg
    });
  }
}
