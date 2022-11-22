import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:moor_demo_safe/models/safe_model.dart';
import 'package:moor_demo_safe/resources/list_resources.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

part 'drift_database.g.dart';

class SafeTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get project => text()();

  TextColumn get category => text()();

  TextColumn get rule => text()();

  TextColumn get recommendation => text()();

  TextColumn get description => text()();

  TextColumn get image => text()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    File path = File(join(documentsDirectory.path, "safe.sqlite"));

    return NativeDatabase(path);
  });
}

@DriftDatabase(tables: [SafeTable])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<SafeTableData>> getData() => select(safeTable).get();

  Future insertData(SafeTableData data) => into(safeTable).insert(data);

  Future updateData(SafeTableData data) => update(safeTable).replace(data);
}
