// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class SafeTableData extends DataClass implements Insertable<SafeTableData> {
  final int id;
  final String project;
  final String category;
  final String rule;
  final String recommendation;
  final String description;
  final String image;
  const SafeTableData(
      {required this.id,
      required this.project,
      required this.category,
      required this.rule,
      required this.recommendation,
      required this.description,
      required this.image});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project'] = Variable<String>(project);
    map['category'] = Variable<String>(category);
    map['rule'] = Variable<String>(rule);
    map['recommendation'] = Variable<String>(recommendation);
    map['description'] = Variable<String>(description);
    map['image'] = Variable<String>(image);
    return map;
  }

  SafeTableCompanion toCompanion(bool nullToAbsent) {
    return SafeTableCompanion(
      id: Value(id),
      project: Value(project),
      category: Value(category),
      rule: Value(rule),
      recommendation: Value(recommendation),
      description: Value(description),
      image: Value(image),
    );
  }

  factory SafeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SafeTableData(
      id: serializer.fromJson<int>(json['id']),
      project: serializer.fromJson<String>(json['project']),
      category: serializer.fromJson<String>(json['category']),
      rule: serializer.fromJson<String>(json['rule']),
      recommendation: serializer.fromJson<String>(json['recommendation']),
      description: serializer.fromJson<String>(json['description']),
      image: serializer.fromJson<String>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'project': serializer.toJson<String>(project),
      'category': serializer.toJson<String>(category),
      'rule': serializer.toJson<String>(rule),
      'recommendation': serializer.toJson<String>(recommendation),
      'description': serializer.toJson<String>(description),
      'image': serializer.toJson<String>(image),
    };
  }

  SafeTableData copyWith(
          {int? id,
          String? project,
          String? category,
          String? rule,
          String? recommendation,
          String? description,
          String? image}) =>
      SafeTableData(
        id: id ?? this.id,
        project: project ?? this.project,
        category: category ?? this.category,
        rule: rule ?? this.rule,
        recommendation: recommendation ?? this.recommendation,
        description: description ?? this.description,
        image: image ?? this.image,
      );
  @override
  String toString() {
    return (StringBuffer('SafeTableData(')
          ..write('id: $id, ')
          ..write('project: $project, ')
          ..write('category: $category, ')
          ..write('rule: $rule, ')
          ..write('recommendation: $recommendation, ')
          ..write('description: $description, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, project, category, rule, recommendation, description, image);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SafeTableData &&
          other.id == this.id &&
          other.project == this.project &&
          other.category == this.category &&
          other.rule == this.rule &&
          other.recommendation == this.recommendation &&
          other.description == this.description &&
          other.image == this.image);
}

class SafeTableCompanion extends UpdateCompanion<SafeTableData> {
  final Value<int> id;
  final Value<String> project;
  final Value<String> category;
  final Value<String> rule;
  final Value<String> recommendation;
  final Value<String> description;
  final Value<String> image;
  const SafeTableCompanion({
    this.id = const Value.absent(),
    this.project = const Value.absent(),
    this.category = const Value.absent(),
    this.rule = const Value.absent(),
    this.recommendation = const Value.absent(),
    this.description = const Value.absent(),
    this.image = const Value.absent(),
  });
  SafeTableCompanion.insert({
    this.id = const Value.absent(),
    required String project,
    required String category,
    required String rule,
    required String recommendation,
    required String description,
    required String image,
  })  : project = Value(project),
        category = Value(category),
        rule = Value(rule),
        recommendation = Value(recommendation),
        description = Value(description),
        image = Value(image);
  static Insertable<SafeTableData> custom({
    Expression<int>? id,
    Expression<String>? project,
    Expression<String>? category,
    Expression<String>? rule,
    Expression<String>? recommendation,
    Expression<String>? description,
    Expression<String>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (project != null) 'project': project,
      if (category != null) 'category': category,
      if (rule != null) 'rule': rule,
      if (recommendation != null) 'recommendation': recommendation,
      if (description != null) 'description': description,
      if (image != null) 'image': image,
    });
  }

  SafeTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? project,
      Value<String>? category,
      Value<String>? rule,
      Value<String>? recommendation,
      Value<String>? description,
      Value<String>? image}) {
    return SafeTableCompanion(
      id: id ?? this.id,
      project: project ?? this.project,
      category: category ?? this.category,
      rule: rule ?? this.rule,
      recommendation: recommendation ?? this.recommendation,
      description: description ?? this.description,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (project.present) {
      map['project'] = Variable<String>(project.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (rule.present) {
      map['rule'] = Variable<String>(rule.value);
    }
    if (recommendation.present) {
      map['recommendation'] = Variable<String>(recommendation.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SafeTableCompanion(')
          ..write('id: $id, ')
          ..write('project: $project, ')
          ..write('category: $category, ')
          ..write('rule: $rule, ')
          ..write('recommendation: $recommendation, ')
          ..write('description: $description, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class $SafeTableTable extends SafeTable
    with TableInfo<$SafeTableTable, SafeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SafeTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _projectMeta = const VerificationMeta('project');
  @override
  late final GeneratedColumn<String> project = GeneratedColumn<String>(
      'project', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _ruleMeta = const VerificationMeta('rule');
  @override
  late final GeneratedColumn<String> rule = GeneratedColumn<String>(
      'rule', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _recommendationMeta =
      const VerificationMeta('recommendation');
  @override
  late final GeneratedColumn<String> recommendation = GeneratedColumn<String>(
      'recommendation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, project, category, rule, recommendation, description, image];
  @override
  String get aliasedName => _alias ?? 'safe_table';
  @override
  String get actualTableName => 'safe_table';
  @override
  VerificationContext validateIntegrity(Insertable<SafeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project')) {
      context.handle(_projectMeta,
          project.isAcceptableOrUnknown(data['project']!, _projectMeta));
    } else if (isInserting) {
      context.missing(_projectMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('rule')) {
      context.handle(
          _ruleMeta, rule.isAcceptableOrUnknown(data['rule']!, _ruleMeta));
    } else if (isInserting) {
      context.missing(_ruleMeta);
    }
    if (data.containsKey('recommendation')) {
      context.handle(
          _recommendationMeta,
          recommendation.isAcceptableOrUnknown(
              data['recommendation']!, _recommendationMeta));
    } else if (isInserting) {
      context.missing(_recommendationMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SafeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SafeTableData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      project: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}project'])!,
      category: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      rule: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}rule'])!,
      recommendation: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}recommendation'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      image: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
    );
  }

  @override
  $SafeTableTable createAlias(String alias) {
    return $SafeTableTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $SafeTableTable safeTable = $SafeTableTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [safeTable];
}
