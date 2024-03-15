import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDataBase {
  Future<Database> initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'MyDatabase.db'),
      version: 1,
      onCreate: (db, version) {
        db.execute(
            'CREATE TABLE ProductDetail (ProductID INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,price TEXT,location TEXT,img1 TEXT,img2 TEXT,img3 TEXT,img4 TEXT,Detail TEXT,date TEXT,brand TEXT,des TEXT);');
      },
      // onUpgrade: (db, oldVersion, newVersion) {
      //   db.execute(
      //       'CREATE TABLE Tbl_User(UserId INTEGER PRIMARY KEY AUTOINCREMENT, UserName TEXT)');
      // },
    );
  }
  //
  Future<int> insertUserDetailInTblUser({required userName}) async {
    Database db = await initDatabase();
    Map<String, dynamic> map = {};
    map['name'] = userName;
    int pk = await db.insert('ProductDetail', map);
    return pk;
  }

  Future<int> updateUserDetailInTblUser({required userName,required userId}) async {
    Database db =await initDatabase();
    Map<String,dynamic> map = {};
    map['name'] = userName;
    int pk = await db.update('ProductDetail', map,where: 'ProductID = ?', whereArgs: [userId]);
    return pk;
  }

  Future<List<Map<String, dynamic>>> getUserListFromTblUser() async {
    Database db = await initDatabase();
    List<Map<String, dynamic>> userList =
    await db.rawQuery('SELECT * FROM ProductDetail');
    return userList;
  }

  Future<int> deleteUserFromTblUser({required userId}) async {
    Database db = await initDatabase();
    int pk =
    await db.delete('ProductDetail', where: 'ProductID = ?', whereArgs: [userId]);
    return pk;
  }
}
