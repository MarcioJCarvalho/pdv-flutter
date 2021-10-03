
import 'package:pdv_flutter/app/domain/entities/product.dart';

abstract class ProductDAO{

  save(Product product);

  remove(int id);

  Future<List<Product>>find();
}