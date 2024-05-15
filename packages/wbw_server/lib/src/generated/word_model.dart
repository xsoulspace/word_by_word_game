/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class WordModel extends _i1.TableRow {
  WordModel._({
    int? id,
    required this.language,
    required this.word,
    required this.meaning,
  }) : super(id);

  factory WordModel({
    int? id,
    required _i2.WordLanguage language,
    required String word,
    required String meaning,
  }) = _WordModelImpl;

  factory WordModel.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WordModel(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      language: serializationManager
          .deserialize<_i2.WordLanguage>(jsonSerialization['language']),
      word: serializationManager.deserialize<String>(jsonSerialization['word']),
      meaning: serializationManager
          .deserialize<String>(jsonSerialization['meaning']),
    );
  }

  static final t = WordModelTable();

  static const db = WordModelRepository._();

  _i2.WordLanguage language;

  String word;

  String meaning;

  @override
  _i1.Table get table => t;

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
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'language': language,
      'word': word,
      'meaning': meaning,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'language': language.toJson(),
      'word': word,
      'meaning': meaning,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'language':
        language = value;
        return;
      case 'word':
        word = value;
        return;
      case 'meaning':
        meaning = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<WordModel>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<WordModel>(
      where: where != null ? where(WordModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<WordModel?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<WordModel>(
      where: where != null ? where(WordModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<WordModel?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<WordModel>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WordModelTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WordModel>(
      where: where(WordModel.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    WordModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    WordModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    WordModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WordModel>(
      where: where != null ? where(WordModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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

class WordModelTable extends _i1.Table {
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

@Deprecated('Use WordModelTable.t instead.')
WordModelTable tWordModel = WordModelTable();

class WordModelInclude extends _i1.IncludeObject {
  WordModelInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => WordModel.t;
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
  _i1.Table get table => WordModel.t;
}

class WordModelRepository {
  const WordModelRepository._();

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
    return session.dbNext.find<WordModel>(
      where: where?.call(WordModel.t),
      orderBy: orderBy?.call(WordModel.t),
      orderByList: orderByList?.call(WordModel.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<WordModel?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    int? offset,
    _i1.OrderByBuilder<WordModelTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WordModelTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<WordModel>(
      where: where?.call(WordModel.t),
      orderBy: orderBy?.call(WordModel.t),
      orderByList: orderByList?.call(WordModel.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<WordModel?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<WordModel>(
      id,
      transaction: transaction,
    );
  }

  Future<List<WordModel>> insert(
    _i1.Session session,
    List<WordModel> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<WordModel>(
      rows,
      transaction: transaction,
    );
  }

  Future<WordModel> insertRow(
    _i1.Session session,
    WordModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<WordModel>(
      row,
      transaction: transaction,
    );
  }

  Future<List<WordModel>> update(
    _i1.Session session,
    List<WordModel> rows, {
    _i1.ColumnSelections<WordModelTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<WordModel>(
      rows,
      columns: columns?.call(WordModel.t),
      transaction: transaction,
    );
  }

  Future<WordModel> updateRow(
    _i1.Session session,
    WordModel row, {
    _i1.ColumnSelections<WordModelTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<WordModel>(
      row,
      columns: columns?.call(WordModel.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<WordModel> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<WordModel>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    WordModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<WordModel>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WordModelTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<WordModel>(
      where: where(WordModel.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WordModelTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<WordModel>(
      where: where?.call(WordModel.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
