import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:pdv_flutter/app/database/firestore/product_dao_firestore.dart';
import 'package:pdv_flutter/app/domain/interfaces/product_dao.dart';
import 'package:pdv_flutter/app/domain/services/product_service.dart';

setupeInjection() async{
  GetIt getIt = GetIt.I;

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //para trocar a tecnologia de persistencia
  //getIt.registerSingleton<ProductDAO>(ProductDAOImpl());
  getIt.registerSingleton<ProductDAO>(ProductDAOFirestore());
  getIt.registerSingleton<ProductService>(ProductService());
}