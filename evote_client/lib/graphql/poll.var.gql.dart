// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:evote_client/graphql/schema.schema.gql.dart' as _i2;
import 'package:evote_client/graphql/serializers.gql.dart' as _i1;

part 'poll.var.gql.g.dart';

abstract class GFetchPollVars
    implements Built<GFetchPollVars, GFetchPollVarsBuilder> {
  GFetchPollVars._();

  factory GFetchPollVars([Function(GFetchPollVarsBuilder b) updates]) =
      _$GFetchPollVars;

  static Serializer<GFetchPollVars> get serializer =>
      _$gFetchPollVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchPollVars.serializer, this)
          as Map<String, dynamic>);
  static GFetchPollVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchPollVars.serializer, json);
}

abstract class GFecthUsersVars
    implements Built<GFecthUsersVars, GFecthUsersVarsBuilder> {
  GFecthUsersVars._();

  factory GFecthUsersVars([Function(GFecthUsersVarsBuilder b) updates]) =
      _$GFecthUsersVars;

  static Serializer<GFecthUsersVars> get serializer =>
      _$gFecthUsersVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFecthUsersVars.serializer, this)
          as Map<String, dynamic>);
  static GFecthUsersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFecthUsersVars.serializer, json);
}

abstract class GFecthUserVars
    implements Built<GFecthUserVars, GFecthUserVarsBuilder> {
  GFecthUserVars._();

  factory GFecthUserVars([Function(GFecthUserVarsBuilder b) updates]) =
      _$GFecthUserVars;

  String get id;
  static Serializer<GFecthUserVars> get serializer =>
      _$gFecthUserVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFecthUserVars.serializer, this)
          as Map<String, dynamic>);
  static GFecthUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFecthUserVars.serializer, json);
}

abstract class GpollVotersVars
    implements Built<GpollVotersVars, GpollVotersVarsBuilder> {
  GpollVotersVars._();

  factory GpollVotersVars([Function(GpollVotersVarsBuilder b) updates]) =
      _$GpollVotersVars;

  @BuiltValueField(wireName: '_id')
  String get G_id;
  static Serializer<GpollVotersVars> get serializer =>
      _$gpollVotersVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GpollVotersVars.serializer, this)
          as Map<String, dynamic>);
  static GpollVotersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GpollVotersVars.serializer, json);
}

abstract class GaddCandidateVars
    implements Built<GaddCandidateVars, GaddCandidateVarsBuilder> {
  GaddCandidateVars._();

  factory GaddCandidateVars([Function(GaddCandidateVarsBuilder b) updates]) =
      _$GaddCandidateVars;

  String get user_email;
  String get poll_id;
  static Serializer<GaddCandidateVars> get serializer =>
      _$gaddCandidateVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GaddCandidateVars.serializer, this)
          as Map<String, dynamic>);
  static GaddCandidateVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GaddCandidateVars.serializer, json);
}

abstract class GvoteVars implements Built<GvoteVars, GvoteVarsBuilder> {
  GvoteVars._();

  factory GvoteVars([Function(GvoteVarsBuilder b) updates]) = _$GvoteVars;

  String get user_id;
  String get poll_id;
  String get candidate_id;
  static Serializer<GvoteVars> get serializer => _$gvoteVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GvoteVars.serializer, this)
          as Map<String, dynamic>);
  static GvoteVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GvoteVars.serializer, json);
}

abstract class GregisterVars
    implements Built<GregisterVars, GregisterVarsBuilder> {
  GregisterVars._();

  factory GregisterVars([Function(GregisterVarsBuilder b) updates]) =
      _$GregisterVars;

  _i2.GCreateUserInput get input;
  static Serializer<GregisterVars> get serializer => _$gregisterVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GregisterVars.serializer, this)
          as Map<String, dynamic>);
  static GregisterVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GregisterVars.serializer, json);
}

abstract class GloginVars implements Built<GloginVars, GloginVarsBuilder> {
  GloginVars._();

  factory GloginVars([Function(GloginVarsBuilder b) updates]) = _$GloginVars;

  _i2.GLoginUserInput get input;
  static Serializer<GloginVars> get serializer => _$gloginVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GloginVars.serializer, this)
          as Map<String, dynamic>);
  static GloginVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GloginVars.serializer, json);
}

abstract class GdeletePollVars
    implements Built<GdeletePollVars, GdeletePollVarsBuilder> {
  GdeletePollVars._();

  factory GdeletePollVars([Function(GdeletePollVarsBuilder b) updates]) =
      _$GdeletePollVars;

  String get id;
  static Serializer<GdeletePollVars> get serializer =>
      _$gdeletePollVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GdeletePollVars.serializer, this)
          as Map<String, dynamic>);
  static GdeletePollVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GdeletePollVars.serializer, json);
}

abstract class GcreatePollVars
    implements Built<GcreatePollVars, GcreatePollVarsBuilder> {
  GcreatePollVars._();

  factory GcreatePollVars([Function(GcreatePollVarsBuilder b) updates]) =
      _$GcreatePollVars;

  _i2.GCreatePollInput get input;
  static Serializer<GcreatePollVars> get serializer =>
      _$gcreatePollVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GcreatePollVars.serializer, this)
          as Map<String, dynamic>);
  static GcreatePollVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GcreatePollVars.serializer, json);
}
