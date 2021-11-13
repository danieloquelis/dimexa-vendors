import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:dimexa_vendors/models/client/client.dart';
class DimexaDatabase {
  static final DimexaDatabase instance = DimexaDatabase._init();

  static Database? _database;

  DimexaDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('dimexa.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';
    const textType = 'TEXT NOT NULL';

    //create clients table
    await db.execute(
        '''
        CREATE TABLE $tableClients (
          "ClientFields.id" $idType,
        )
        '''
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}