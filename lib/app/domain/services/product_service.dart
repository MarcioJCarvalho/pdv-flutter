import 'package:get_it/get_it.dart';
import 'package:pdv_flutter/app/domain/entities/product.dart';
import 'package:pdv_flutter/app/domain/exception/domain_layer_exeception.dart';
import 'package:pdv_flutter/app/domain/interfaces/product_dao.dart';

class ProductService{
  var _dao = GetIt.I.get<ProductDAO>();

  save(Product product){
    validateName(product.nome);
    validateQtd(product.quantidade);
    _dao.save(product);
  }

  remove(int id){
    _dao.remove(id);
  }

  Future<List<Product>> find(){
    return _dao.find();
  }

  validateName(String name){
    var min = 3;
    var max = 50;

// tratamento de exeção
    if (name == null) {
      throw new DomainLayerException('O nome é obrigatório.');
    }else if(name.length < min){
      throw new DomainLayerException('O nome deve possuir pelo menos $min caracteres.');
    }else if(name.length > max){
      throw new DomainLayerException('O nome deve possuir no máximo $max caracteres.');
    }
  }

  validateQtd(String qtd){
    if (qtd == null) {
      throw new DomainLayerException('A quantidade é obrigatória.');
    }
  }
}