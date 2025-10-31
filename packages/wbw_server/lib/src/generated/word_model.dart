/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'word_language.dart' as _i2;

abstract class WordModel
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  WordModel._({
    this.id,
    required this.language,
    required this.word,
    required this.meaning,
  });

  factory WordModel({
    int? id,
    required _i2.WordLanguage language,
    required String word,
    required String meaning,
  }) = _WordModelImpl;

  factory WordModel.fromJson(Map<String, dynamic> jsonSerialization) {
    return WordModel(
      id: jsonSerialization['id'] as int?,
      language:
          _i2.WordLanguage.fromJson((jsonSerialization['language'] as String)),
      word: jsonSerialization['word'] as String,
      meaning: jsonSerialization['meaning'] as String,
    );
  }

  static final t = WordModelTable();

  static const db = WordModelRepository._();

  @override
  int? id;

  _i2.WordLanguage language;

  String word;

  String meaning;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [WordModel]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  WordModel copyWith({
    int? id,
    _i2.WordLanguage? language,
    String? word,
    String? meaning,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'language': language.toJson(),
      'word': word,
      'meaning': meaning,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'language': language.toJson(),
      'word': word,
      'meaning': meaning,
    };
  }

  static WordModelInclude include() {
    return WordModelInclude._();
  }

  static WordModelIncludeList includeList({
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WordModelTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WordModelTable>? orderByList,
    WordModelInclude? include,
  }) {
    return WordModelIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WordModel.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(WordModel.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WordModelImpl extends WordModel {
  _WordModelImpl({
    int? id,
    required _i2.WordLanguage language,
    required String word,
    required String meaning,
  }) : super._(
          id: id,
          language: language,
          word: word,
          meaning: meaning,
        );

  /// Returns a shallow copy of this [WordModel]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  WordModel copyWith({
    Object? id = _Undefined,
    _i2.WordLanguage? language,
    String? word,
    String? meaning,
  }) {
    return WordModel(
      id: id is int? ? id : this.id,
      language: language ?? this.language,
      word: word ?? this.word,
      meaning: meaning ?? this.meaning,
    );
  }
}

class WordModelTable extends _i1.Table<int?> {
  WordModelTable({super.tableRelation}) : super(tableName: 'words') {
    language = _i1.ColumnEnum(
      'language',
      this,
      _i1.EnumSerialization.byName,
    );
    word = _i1.ColumnString(
      'word',
      this,
    );
    meaning = _i1.ColumnString(
      'meaning',
      this,
    );
  }

  late final _i1.ColumnEnum<_i2.WordLanguage> language;

  late final _i1.ColumnString word;

  late final _i1.ColumnString meaning;

  @override
  List<_i1.Column> get columns => [
        id,
        language,
        word,
        meaning,
      ];
}

class WordModelInclude extends _i1.IncludeObject {
  WordModelInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => WordModel.t;
}

class WordModelIncludeList extends _i1.IncludeList {
  WordModelIncludeList._({
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(WordModel.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => WordModel.t;
}

class WordModelRepository {
  const WordModelRepository._();

  /// Returns a list of [WordModel]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<WordModel>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WordModelTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WordModelTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<WordModel>(
      where: where?.call(WordModel.t),
      orderBy: orderBy?.call(WordModel.t),
      orderByList: orderByList?.call(WordModel.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [WordModel] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<WordModel?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    int? offset,
    _i1.OrderByBuilder<WordModelTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WordModelTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<WordModel>(
      where: where?.call(WordModel.t),
      orderBy: orderBy?.call(WordModel.t),
      orderByList: orderByList?.call(WordModel.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [WordModel] by its [id] or null if no such row exists.
  Future<WordModel?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<WordModel>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [WordModel]s in the list and returns the inserted rows.
  ///
  /// The returned [WordModel]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<WordModel>> insert(
    _i1.Session session,
    List<WordModel> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<WordModel>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [WordModel] and returns the inserted row.
  ///
  /// The returned [WordModel] will have its `id` field set.
  Future<WordModel> insertRow(
    _i1.Session session,
    WordModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<WordModel>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [WordModel]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<WordModel>> update(
    _i1.Session session,
    List<WordModel> rows, {
    _i1.ColumnSelections<WordModelTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<WordModel>(
      rows,
      columns: columns?.call(WordModel.t),
      transaction: transaction,
    );
  }

  /// Updates a single [WordModel]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<WordModel> updateRow(
    _i1.Session session,
    WordModel row, {
    _i1.ColumnSelections<WordModelTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<WordModel>(
      row,
      columns: columns?.call(WordModel.t),
      transaction: transaction,
    );
  }

  /// Deletes all [WordModel]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<WordModel>> delete(
    _i1.Session session,
    List<WordModel> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WordModel>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [WordModel].
  Future<WordModel> deleteRow(
    _i1.Session session,
    WordModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<WordModel>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<WordModel>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WordModelTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<WordModel>(
      where: where(WordModel.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WordModel>(
      where: where?.call(WordModel.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
