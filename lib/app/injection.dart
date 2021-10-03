import 'package:get_it/get_it.dart';
import 'package:pdv_flutter/app/database/dao/product_dao_impl.dart';
import 'package:pdv_flutter/app/domain/interfaces/product_dao.dart';

setupeInjection(){
  GetIt getit = GetIt.I;

  getit.registerSingleton<ProductDAO>(ProductDAOImpl());
}