import 'package:pdv_flutter/app/database/sqlite/conecction.dart';
import 'package:pdv_flutter/app/domain/entities/product.dart';
import 'package:pdv_flutter/app/domain/interfaces/product_dao.dart';
import 'package:sqflite/sqflite.dart';

class ProductDAOImpl implements ProductDAO{
  Database _db;
  @override
  Future<List<Product>> find() async{
    _db = await Connection.get();
    List<Map<String,dynamic>> resultado = await _db.query('products');

    //conversão de Map para lista de Produtos
    List<Product> lista = List.generate(resultado.length, (i){
      var linha = resultado[i];
      return Product(
        id: linha['id'],
        nome: linha['nome'],
        quantidade: linha['qtd'],
        urlImg: linha['img'],
        );
      }
    );

    return lista;
  }

  @override
  remove(int id) async{
      _db = await Connection.get();
      var sql = 'DELETE FROM products WHERE id = ?';
      _db.rawDelete(sql,[id]);
    }
  
    @override
    save(Product product) async{
      _db = await Connection.get();
      var sql;
      if(product.id == null){
        sql = 'INSERT INTO products(nome, qtd, img)VALUES(?,?,?)';
        _db.rawInsert(sql,[product.nome, product.quantidade, product.urlImg]);
      }else{
        sql = 'UPDATE products SET nome = ?,qtd = ?,img = ?WHERE id = ?';
        _db.rawUpdate(sql,[product.nome, product.quantidade, product.urlImg, product.id]);
      }
  }

}