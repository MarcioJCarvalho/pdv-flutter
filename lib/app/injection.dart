import 'package:get_it/get_it.dart';
import 'package:pdv_flutter/app/database/dao/product_dao_impl.dart';
import 'package:pdv_flutter/app/domain/interfaces/product_dao.dart';
import 'package:pdv_flutter/app/domain/services/product_service.dart';

setupeInjection(){
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ProductDAO>(ProductDAOImpl());
  getIt.registerSingleton<ProductService>(ProductService());
}