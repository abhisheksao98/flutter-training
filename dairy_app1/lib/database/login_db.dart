import 'package:dairy_app1/model/diary.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/login_model.dart';

class AppDairyDatabase {
  //? Creating the SingleTon instance for the NotesDatabase class
  static final AppDairyDatabase instance = AppDairyDatabase._init();
  AppDairyDatabase._init();

  //? Defines a Database private variable
  static Database? _database;

  //? getter variable for accessing the _database private variable
  //? Returns the _database is already created else it will initialize the database and it will return the DB
  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initializeDB('appdairy.db');
    return _database!;
  }

  //?Method to initialize the database
  Future<Database> _initializeDB(String filePath) async {
    final dbPath =
        await getDatabasesPath(); //? Returns the Database path based on the Platform i.e. Android or iOS
    final path = join(
        dbPath, filePath); //? Combines the DB Path with the Database file name
    return await openDatabase(path,
        version: 1,
        onCreate:
            _createDB); //? Opens the Database for the usage based on the provided path
  }

  //? Method to create the table
  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';

    await db.execute('''
CREATE TABLE $tableName(
  ${AppUserFields.id} $idType,
  ${AppUserFields.userName} $textType,
  ${AppUserFields.password} $textType
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

  //? Code for Registering a new User
  Future<bool> registerUser(AppUser appUser) async {
    final db = await instance.database;
    var result = await isUserExists(appUser.userName);
    if (result == false) {
      throw Exception('Username Already Exists');
    }
    final id = await db.insert(tableName, appUser.toJson());
    appUser.copy(id: id);
    return true;
  }

  Future<bool> isUserExists(String username) async {
    final db = await instance.database;

    final maps = await db.query(tableName,
        columns: AppUserFields.values,
        where: '${AppUserFields.userName} = ?',
        whereArgs: [username]);

    if (maps.isNotEmpty) {
      return false;
    } else {
      return true;
    }
  }

  //? Code to Read a Single Record
  Future<bool> validateUser(String username, String password) async {
    final db = await instance.database;

    final maps = await db.query(tableName,
        columns: AppUserFields.values,
        where:
            '${AppUserFields.userName} = ? and ${AppUserFields.password} = ?',
        whereArgs: [username, password]);

    if (maps.isNotEmpty) {
      return true;
    } else {
      return false;
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

  //?Code to release the resources
  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
