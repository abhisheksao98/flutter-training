import 'package:dairy_app1/model/login_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/diary.dart';

class UserDatabase1 {
  static final UserDatabase1 instance = UserDatabase1._init();
  UserDatabase1._init();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _intialDB('notes.db');
    return _database!;
  }

  Future<Database> _intialDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 2, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';

    await db.execute(''' 
 CREATE TABLE $tableName(
  ${AppUserFields.id}$idType,
  ${AppUserFields.userName}$textType,
  ${AppUserFields.password}$textType
  )
  ''');
    await db.execute('''
 CREATE TABLE $dairymodel(
  ${DairyField.id}$idType,
  ${DairyField.date}$integerType,
  ${DairyField.Eventtitle}$textType,
  ${DairyField.description}$textType
''');
  }

  Future<bool> registerUser(AppUser user) async {
    final db = await instance.database;
    var result = await userExist(
      user.userName,
    );
    if (result == false) {
      throw Exception('Username already exist');
    } else {
      final id = await db.insert(tableName, user.toJson());

      user.copy(id: id);
      return true;
    }
  }

  Future<bool> userExist(String username) async {
    final db = await instance.database;
    final maps = await db.query(tableName,
        columns: AppUserFields.values,
        where: '${AppUserFields.userName}=?',
        whereArgs: [username]);
    if (maps.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> readData(String username, String password) async {
    final db = await instance.database;
    final maps = await db.query(tableName,
        columns: AppUserFields.values,
        where: '${AppUserFields.id}=?  ${AppUserFields.password}=?',
        whereArgs: [username, password]);
    if (maps.isNotEmpty) {
      return false;
    } else {
      return true;
    }
  }

  Future<dairy> readNotes(int id) async {
    final db = await instance.database;

    final maps = await db.query(dairymodel,
        columns: DairyField.values,
        where: '${DairyField.id}=?',
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return dairy.fromJson(maps.first);
    } else {
      throw Exception('Id $id not found');
    }
  }

  Future<dairy> create(dairy Dairy) async {
    final db = await instance.database;
    final id = await db.insert(dairymodel, Dairy.toJson());
    return Dairy.copy(id: id);
  }

  Future<List<dairy>> readallNotes() async {
    final db = await instance.database;
    const orderBy = '${DairyField.date} ASC';
    final result = await db.query(dairymodel, orderBy: orderBy);
    return result.map((json) => dairy.fromJson(json)).toList();
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return db.delete(dairymodel, where: '${DairyField.id}=?', whereArgs: [id]);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
