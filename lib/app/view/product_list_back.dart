import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:pdv_flutter/app/app.dart';
import 'package:pdv_flutter/app/domain/entities/product.dart';
import 'package:pdv_flutter/app/domain/services/product_service.dart';

part 'product_list_back.g.dart';

class ProductListBack = _ProductListBack with _$ProductListBack;

abstract class _ProductListBack with Store{
  var _service = GetIt.I.get<ProductService>();

  //lista de produtos
  @observable
  Future<List<Product>> list;

  //metodo para atualizar a lista de produtos
  @action
  refreshList([dynamic value]){
    list = _service.find();
  }

  _ProductListBack(){
    refreshList();
  }

  //metodo para chamar o form salvar / alterar
  goToForm(BuildContext context, [Product product]){
    Navigator.of(context).pushNamed(App.PRODUCT_FORM, arguments: product).then(refreshList);
  }

  goToDetails(BuildContext context, Product product){
    Navigator.of(context).pushNamed(App.PRODUCT_DETAILS, arguments: product);
  }

  //excluir
  remove(int id){
    _service.remove(id);
    refreshList();
  }
}