// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:evote_client/graphql/serializers.gql.dart' as _i1;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

abstract class GCreatePollInput
    implements Built<GCreatePollInput, GCreatePollInputBuilder> {
  GCreatePollInput._();

  factory GCreatePollInput([Function(GCreatePollInputBuilder b) updates]) =
      _$GCreatePollInput;

  String get title;
  String get description;
  int get duration;
  static Serializer<GCreatePollInput> get serializer =>
      _$gCreatePollInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreatePollInput.serializer, this)
          as Map<String, dynamic>);
  static GCreatePollInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreatePollInput.serializer, json);
}

abstract class GCreateUserInput
    implements Built<GCreateUserInput, GCreateUserInputBuilder> {
  GCreateUserInput._();

  factory GCreateUserInput([Function(GCreateUserInputBuilder b) updates]) =
      _$GCreateUserInput;

  String get username;
  String get password;
  String get email;
  static Serializer<GCreateUserInput> get serializer =>
      _$gCreateUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateUserInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateUserInput.serializer, json);
}

abstract class GDate implements Built<GDate, GDateBuilder> {
  GDate._();

  factory GDate([String? value]) =>
      _$GDate((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDate> get serializer => _i2.DefaultScalarSerializer<GDate>(
      (Object serialized) => GDate((serialized as String?)));
}

abstract class GLoginUserInput
    implements Built<GLoginUserInput, GLoginUserInputBuilder> {
  GLoginUserInput._();

  factory GLoginUserInput([Function(GLoginUserInputBuilder b) updates]) =
      _$GLoginUserInput;

  String get username;
  String get password;
  static Serializer<GLoginUserInput> get serializer =>
      _$gLoginUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginUserInput.serializer, this)
          as Map<String, dynamic>);
  static GLoginUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginUserInput.serializer, json);
}

class GRoleEnum extends EnumClass {
  const GRoleEnum._(String name) : super(name);

  static const GRoleEnum MEMBER = _$gRoleEnumMEMBER;

  static const GRoleEnum ADMIN = _$gRoleEnumADMIN;

  static Serializer<GRoleEnum> get serializer => _$gRoleEnumSerializer;
  static BuiltSet<GRoleEnum> get values => _$gRoleEnumValues;
  static GRoleEnum valueOf(String name) => _$gRoleEnumValueOf(name);
}

abstract class GUpdatePollInput
    implements Built<GUpdatePollInput, GUpdatePollInputBuilder> {
  GUpdatePollInput._();

  factory GUpdatePollInput([Function(GUpdatePollInputBuilder b) updates]) =
      _$GUpdatePollInput;

  String? get title;
  String? get description;
  int? get duration;
  static Serializer<GUpdatePollInput> get serializer =>
      _$gUpdatePollInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdatePollInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdatePollInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdatePollInput.serializer, json);
}

abstract class GUpdateUserInput
    implements Built<GUpdateUserInput, GUpdateUserInputBuilder> {
  GUpdateUserInput._();

  factory GUpdateUserInput([Function(GUpdateUserInputBuilder b) updates]) =
      _$GUpdateUserInput;

  String? get username;
  String? get password;
  String? get email;
  static Serializer<GUpdateUserInput> get serializer =>
      _$gUpdateUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateUserInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateUserInput.serializer, json);
}
