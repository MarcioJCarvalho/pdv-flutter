import 'package:path/path.dart';
import 'package:pdv_flutter/app/database/sqlite/script_db.dart';
import 'package:sqflite/sqflite.dart';

class Connection{
  static Database _db;

  static Future<Database> get()async{
    //verificação de conexão
    if(_db==null){
      //caminho do banco, formado por 2 partes(local, nome-banco)
      var path = join(await getDatabasesPath(),'pdv-db');
      _db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, v){
          db.execute(createTable);
          db.execute(insert1);
          db.execute(insert2);
          db.execute(insert3);
          db.execute(insert4);
          db.execute(insert5);

        }
      );
    }
    return _db;
  }
}