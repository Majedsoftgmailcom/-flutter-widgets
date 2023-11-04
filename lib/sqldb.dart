
import 'dart:developer';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
class Sqldb{
static Database?_db;

Future<Database?> get db async{
if (_db==null) {
  _db= await intilaldatabase();
  return _db;
  //print('موجوده مسبقا');
}
else {
  return _db;
  //print('موجوده مسبقا');

}
}
  intilaldatabase()async{
String pathdb= await getDatabasesPath();
String path=join(pathdb,'kh5_db.db');
Database mydb=await openDatabase(path,onCreate:createdb ,version: 1,onUpgrade:onupgread );
return mydb;
  }

createdb(Database db,int version) async{
await db.execute('CREATE TABLE t2(id INTEGER NOT NULL PRIMARY KEY autoincrement,name TEXT NOT NULL )');
await db.execute('CREATE TABLE note(id INTEGER NOT NULL PRIMARY KEY autoincrement,name TEXT NOT NULL,dit TEXT NOT NULL,dat TEXT NOT NULL)');
// ignore: avoid_print
print('تم انشاء قاعدة البيانات لنجاح');
  }

  onupgread(Database db,int oldv,int oldn){
   // db.execute('ALTER TABLE NOTE ADD ( DIT TEXT ');
log('تم انشاء نسخة جديده من قاعدة البيانات');
  }
  insertdata(sql) async {
   // Database mydb= intilaldatabase();
   var mydb= await db;
    var result=mydb!.rawInsert(sql);
    return "تم انشاء سجل جديد $result";

  }
  selectdata(String sql) async{
    // Database mydb= intilaldatabase();
   Database? mydb= await db;
    Future<List<Map<String, Object?>>> result=mydb!.rawQuery(sql)  ;
    return result;

  }
}