import 'package:russian_quiz_app/data/Vocab.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../data/Initial_Vocab.dart';

Database? globalDatabase;

Future<void> openDB() async {
  globalDatabase = await openDatabase(
    join(await getDatabasesPath(), 'vocabs_database.db'),
    onCreate: (db, version) async {
      db.execute(
        'CREATE TABLE vocabs(id INTEGER PRIMARY KEY AUTOINCREMENT, russian TEXT, translation TEXT)',
      );
      await _insertInitialData(db);
    },
    version: 1,
  );
}

Future<void> _insertInitialData(Database db) async {
  initialVocab.forEach((v) async {
    await db.insert(
      'vocabs',
      v.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  });
}

Future<void> insertVocab(Vocab voacb) async {
  final db = globalDatabase;
  if (db == null) {
    openDB();
  }
  await db!.insert(
    'vocabs',
    voacb.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Vocab>> getAllVocabs() async {
  final db = globalDatabase;
  final List<Map<String, dynamic>> maps;
  if (db == null) {
    await openDB();
    final db = globalDatabase;
    maps = await db!.query('vocabs');
  } else {
    maps = await db.query('vocabs');
  }

  return List.generate(maps.length, (i) {
    return Vocab(
      russian: maps[i]['russian'] as String,
      translation: maps[i]['translation'] as String,
    );
  });
}
