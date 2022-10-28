import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class DemoDBprovider {
  late final Database _database;
  final int version;
  DemoDBprovider(this.version);
  bool isOpen = false;
  Future<void> openDataBase(String query) async {
    _database =
        await openDatabase(p.join(await getDatabasesPath(), 'demo_db.db'),
            onCreate: (db, version) {
      return db.execute(query);
    }, version: version);
  }

  Future<void> dispose() async {
    await _database.close();
  }

  Database get db => _database;
}
