// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchPollVars> _$gFetchPollVarsSerializer =
    new _$GFetchPollVarsSerializer();
Serializer<GFecthUsersVars> _$gFecthUsersVarsSerializer =
    new _$GFecthUsersVarsSerializer();
Serializer<GFecthUserVars> _$gFecthUserVarsSerializer =
    new _$GFecthUserVarsSerializer();
Serializer<GpollVotersVars> _$gpollVotersVarsSerializer =
    new _$GpollVotersVarsSerializer();
Serializer<GregisterVars> _$gregisterVarsSerializer =
    new _$GregisterVarsSerializer();
Serializer<GloginVars> _$gloginVarsSerializer = new _$GloginVarsSerializer();
Serializer<GvoteVars> _$gvoteVarsSerializer = new _$GvoteVarsSerializer();

class _$GFetchPollVarsSerializer
    implements StructuredSerializer<GFetchPollVars> {
  @override
  final Iterable<Type> types = const [GFetchPollVars, _$GFetchPollVars];
  @override
  final String wireName = 'GFetchPollVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFetchPollVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GFetchPollVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GFetchPollVarsBuilder().build();
  }
}

class _$GFecthUsersVarsSerializer
    implements StructuredSerializer<GFecthUsersVars> {
  @override
  final Iterable<Type> types = const [GFecthUsersVars, _$GFecthUsersVars];
  @override
  final String wireName = 'GFecthUsersVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFecthUsersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GFecthUsersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GFecthUsersVarsBuilder().build();
  }
}

class _$GFecthUserVarsSerializer
    implements StructuredSerializer<GFecthUserVars> {
  @override
  final Iterable<Type> types = const [GFecthUserVars, _$GFecthUserVars];
  @override
  final String wireName = 'GFecthUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFecthUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFecthUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFecthUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GpollVotersVarsSerializer
    implements StructuredSerializer<GpollVotersVars> {
  @override
  final Iterable<Type> types = const [GpollVotersVars, _$GpollVotersVars];
  @override
  final String wireName = 'GpollVotersVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GpollVotersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GpollVotersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpollVotersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '_id':
          result.G_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GregisterVarsSerializer implements StructuredSerializer<GregisterVars> {
  @override
  final Iterable<Type> types = const [GregisterVars, _$GregisterVars];
  @override
  final String wireName = 'GregisterVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GregisterVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GCreateUserInput)),
    ];

    return result;
  }

  @override
  GregisterVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GregisterVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GCreateUserInput))!
              as _i2.GCreateUserInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GloginVarsSerializer implements StructuredSerializer<GloginVars> {
  @override
  final Iterable<Type> types = const [GloginVars, _$GloginVars];
  @override
  final String wireName = 'GloginVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloginVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i2.GLoginUserInput)),
    ];

    return result;
  }

  @override
  GloginVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloginVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GLoginUserInput))!
              as _i2.GLoginUserInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GvoteVarsSerializer implements StructuredSerializer<GvoteVars> {
  @override
  final Iterable<Type> types = const [GvoteVars, _$GvoteVars];
  @override
  final String wireName = 'GvoteVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GvoteVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'user_id',
      serializers.serialize(object.user_id,
          specifiedType: const FullType(String)),
      'poll_id',
      serializers.serialize(object.poll_id,
          specifiedType: const FullType(String)),
      'candidate_id',
      serializers.serialize(object.candidate_id,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GvoteVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvoteVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_id':
          result.user_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poll_id':
          result.poll_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'candidate_id':
          result.candidate_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchPollVars extends GFetchPollVars {
  factory _$GFetchPollVars([void Function(GFetchPollVarsBuilder)? updates]) =>
      (new GFetchPollVarsBuilder()..update(updates)).build();

  _$GFetchPollVars._() : super._();

  @override
  GFetchPollVars rebuild(void Function(GFetchPollVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchPollVarsBuilder toBuilder() =>
      new GFetchPollVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchPollVars;
  }

  @override
  int get hashCode {
    return 82755594;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GFetchPollVars').toString();
  }
}

class GFetchPollVarsBuilder
    implements Builder<GFetchPollVars, GFetchPollVarsBuilder> {
  _$GFetchPollVars? _$v;

  GFetchPollVarsBuilder();

  @override
  void replace(GFetchPollVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchPollVars;
  }

  @override
  void update(void Function(GFetchPollVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchPollVars build() {
    final _$result = _$v ?? new _$GFetchPollVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GFecthUsersVars extends GFecthUsersVars {
  factory _$GFecthUsersVars([void Function(GFecthUsersVarsBuilder)? updates]) =>
      (new GFecthUsersVarsBuilder()..update(updates)).build();

  _$GFecthUsersVars._() : super._();

  @override
  GFecthUsersVars rebuild(void Function(GFecthUsersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFecthUsersVarsBuilder toBuilder() =>
      new GFecthUsersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFecthUsersVars;
  }

  @override
  int get hashCode {
    return 523686662;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GFecthUsersVars').toString();
  }
}

class GFecthUsersVarsBuilder
    implements Builder<GFecthUsersVars, GFecthUsersVarsBuilder> {
  _$GFecthUsersVars? _$v;

  GFecthUsersVarsBuilder();

  @override
  void replace(GFecthUsersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFecthUsersVars;
  }

  @override
  void update(void Function(GFecthUsersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFecthUsersVars build() {
    final _$result = _$v ?? new _$GFecthUsersVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GFecthUserVars extends GFecthUserVars {
  @override
  final String id;

  factory _$GFecthUserVars([void Function(GFecthUserVarsBuilder)? updates]) =>
      (new GFecthUserVarsBuilder()..update(updates)).build();

  _$GFecthUserVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GFecthUserVars', 'id');
  }

  @override
  GFecthUserVars rebuild(void Function(GFecthUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFecthUserVarsBuilder toBuilder() =>
      new GFecthUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFecthUserVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFecthUserVars')..add('id', id))
        .toString();
  }
}

class GFecthUserVarsBuilder
    implements Builder<GFecthUserVars, GFecthUserVarsBuilder> {
  _$GFecthUserVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GFecthUserVarsBuilder();

  GFecthUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFecthUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFecthUserVars;
  }

  @override
  void update(void Function(GFecthUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFecthUserVars build() {
    final _$result = _$v ??
        new _$GFecthUserVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFecthUserVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GpollVotersVars extends GpollVotersVars {
  @override
  final String G_id;

  factory _$GpollVotersVars([void Function(GpollVotersVarsBuilder)? updates]) =>
      (new GpollVotersVarsBuilder()..update(updates)).build();

  _$GpollVotersVars._({required this.G_id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(G_id, 'GpollVotersVars', 'G_id');
  }

  @override
  GpollVotersVars rebuild(void Function(GpollVotersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpollVotersVarsBuilder toBuilder() =>
      new GpollVotersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpollVotersVars && G_id == other.G_id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, G_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpollVotersVars')..add('G_id', G_id))
        .toString();
  }
}

class GpollVotersVarsBuilder
    implements Builder<GpollVotersVars, GpollVotersVarsBuilder> {
  _$GpollVotersVars? _$v;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  GpollVotersVarsBuilder();

  GpollVotersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G_id = $v.G_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpollVotersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpollVotersVars;
  }

  @override
  void update(void Function(GpollVotersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GpollVotersVars build() {
    final _$result = _$v ??
        new _$GpollVotersVars._(
            G_id: BuiltValueNullFieldError.checkNotNull(
                G_id, 'GpollVotersVars', 'G_id'));
    replace(_$result);
    return _$result;
  }
}

class _$GregisterVars extends GregisterVars {
  @override
  final _i2.GCreateUserInput input;

  factory _$GregisterVars([void Function(GregisterVarsBuilder)? updates]) =>
      (new GregisterVarsBuilder()..update(updates)).build();

  _$GregisterVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, 'GregisterVars', 'input');
  }

  @override
  GregisterVars rebuild(void Function(GregisterVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregisterVarsBuilder toBuilder() => new GregisterVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregisterVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GregisterVars')..add('input', input))
        .toString();
  }
}

class GregisterVarsBuilder
    implements Builder<GregisterVars, GregisterVarsBuilder> {
  _$GregisterVars? _$v;

  _i2.GCreateUserInputBuilder? _input;
  _i2.GCreateUserInputBuilder get input =>
      _$this._input ??= new _i2.GCreateUserInputBuilder();
  set input(_i2.GCreateUserInputBuilder? input) => _$this._input = input;

  GregisterVarsBuilder();

  GregisterVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GregisterVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregisterVars;
  }

  @override
  void update(void Function(GregisterVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GregisterVars build() {
    _$GregisterVars _$result;
    try {
      _$result = _$v ?? new _$GregisterVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GregisterVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GloginVars extends GloginVars {
  @override
  final _i2.GLoginUserInput input;

  factory _$GloginVars([void Function(GloginVarsBuilder)? updates]) =>
      (new GloginVarsBuilder()..update(updates)).build();

  _$GloginVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, 'GloginVars', 'input');
  }

  @override
  GloginVars rebuild(void Function(GloginVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloginVarsBuilder toBuilder() => new GloginVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloginVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GloginVars')..add('input', input))
        .toString();
  }
}

class GloginVarsBuilder implements Builder<GloginVars, GloginVarsBuilder> {
  _$GloginVars? _$v;

  _i2.GLoginUserInputBuilder? _input;
  _i2.GLoginUserInputBuilder get input =>
      _$this._input ??= new _i2.GLoginUserInputBuilder();
  set input(_i2.GLoginUserInputBuilder? input) => _$this._input = input;

  GloginVarsBuilder();

  GloginVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloginVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloginVars;
  }

  @override
  void update(void Function(GloginVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GloginVars build() {
    _$GloginVars _$result;
    try {
      _$result = _$v ?? new _$GloginVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GloginVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GvoteVars extends GvoteVars {
  @override
  final String user_id;
  @override
  final String poll_id;
  @override
  final String candidate_id;

  factory _$GvoteVars([void Function(GvoteVarsBuilder)? updates]) =>
      (new GvoteVarsBuilder()..update(updates)).build();

  _$GvoteVars._(
      {required this.user_id,
      required this.poll_id,
      required this.candidate_id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(user_id, 'GvoteVars', 'user_id');
    BuiltValueNullFieldError.checkNotNull(poll_id, 'GvoteVars', 'poll_id');
    BuiltValueNullFieldError.checkNotNull(
        candidate_id, 'GvoteVars', 'candidate_id');
  }

  @override
  GvoteVars rebuild(void Function(GvoteVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvoteVarsBuilder toBuilder() => new GvoteVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvoteVars &&
        user_id == other.user_id &&
        poll_id == other.poll_id &&
        candidate_id == other.candidate_id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, user_id.hashCode), poll_id.hashCode),
        candidate_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GvoteVars')
          ..add('user_id', user_id)
          ..add('poll_id', poll_id)
          ..add('candidate_id', candidate_id))
        .toString();
  }
}

class GvoteVarsBuilder implements Builder<GvoteVars, GvoteVarsBuilder> {
  _$GvoteVars? _$v;

  String? _user_id;
  String? get user_id => _$this._user_id;
  set user_id(String? user_id) => _$this._user_id = user_id;

  String? _poll_id;
  String? get poll_id => _$this._poll_id;
  set poll_id(String? poll_id) => _$this._poll_id = poll_id;

  String? _candidate_id;
  String? get candidate_id => _$this._candidate_id;
  set candidate_id(String? candidate_id) => _$this._candidate_id = candidate_id;

  GvoteVarsBuilder();

  GvoteVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user_id = $v.user_id;
      _poll_id = $v.poll_id;
      _candidate_id = $v.candidate_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvoteVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvoteVars;
  }

  @override
  void update(void Function(GvoteVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GvoteVars build() {
    final _$result = _$v ??
        new _$GvoteVars._(
            user_id: BuiltValueNullFieldError.checkNotNull(
                user_id, 'GvoteVars', 'user_id'),
            poll_id: BuiltValueNullFieldError.checkNotNull(
                poll_id, 'GvoteVars', 'poll_id'),
            candidate_id: BuiltValueNullFieldError.checkNotNull(
                candidate_id, 'GvoteVars', 'candidate_id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
