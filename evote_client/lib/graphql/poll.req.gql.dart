// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:evote_client/graphql/poll.ast.gql.dart' as _i5;
import 'package:evote_client/graphql/poll.data.gql.dart' as _i2;
import 'package:evote_client/graphql/poll.var.gql.dart' as _i3;
import 'package:evote_client/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'poll.req.gql.g.dart';

abstract class GFetchPollReq
    implements
        Built<GFetchPollReq, GFetchPollReqBuilder>,
        _i1.OperationRequest<_i2.GFetchPollData, _i3.GFetchPollVars> {
  GFetchPollReq._();

  factory GFetchPollReq([Function(GFetchPollReqBuilder b) updates]) =
      _$GFetchPollReq;

  static void _initializeBuilder(GFetchPollReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FetchPoll')
    ..executeOnListen = true;
  _i3.GFetchPollVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFetchPollData? Function(_i2.GFetchPollData?, _i2.GFetchPollData?)?
      get updateResult;
  _i2.GFetchPollData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFetchPollData? parseData(Map<String, dynamic> json) =>
      _i2.GFetchPollData.fromJson(json);
  static Serializer<GFetchPollReq> get serializer => _$gFetchPollReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFetchPollReq.serializer, this)
          as Map<String, dynamic>);
  static GFetchPollReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFetchPollReq.serializer, json);
}

abstract class GFecthUsersReq
    implements
        Built<GFecthUsersReq, GFecthUsersReqBuilder>,
        _i1.OperationRequest<_i2.GFecthUsersData, _i3.GFecthUsersVars> {
  GFecthUsersReq._();

  factory GFecthUsersReq([Function(GFecthUsersReqBuilder b) updates]) =
      _$GFecthUsersReq;

  static void _initializeBuilder(GFecthUsersReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FecthUsers')
    ..executeOnListen = true;
  _i3.GFecthUsersVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFecthUsersData? Function(_i2.GFecthUsersData?, _i2.GFecthUsersData?)?
      get updateResult;
  _i2.GFecthUsersData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFecthUsersData? parseData(Map<String, dynamic> json) =>
      _i2.GFecthUsersData.fromJson(json);
  static Serializer<GFecthUsersReq> get serializer =>
      _$gFecthUsersReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFecthUsersReq.serializer, this)
          as Map<String, dynamic>);
  static GFecthUsersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFecthUsersReq.serializer, json);
}

abstract class GFecthUserReq
    implements
        Built<GFecthUserReq, GFecthUserReqBuilder>,
        _i1.OperationRequest<_i2.GFecthUserData, _i3.GFecthUserVars> {
  GFecthUserReq._();

  factory GFecthUserReq([Function(GFecthUserReqBuilder b) updates]) =
      _$GFecthUserReq;

  static void _initializeBuilder(GFecthUserReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FecthUser')
    ..executeOnListen = true;
  _i3.GFecthUserVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFecthUserData? Function(_i2.GFecthUserData?, _i2.GFecthUserData?)?
      get updateResult;
  _i2.GFecthUserData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFecthUserData? parseData(Map<String, dynamic> json) =>
      _i2.GFecthUserData.fromJson(json);
  static Serializer<GFecthUserReq> get serializer => _$gFecthUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFecthUserReq.serializer, this)
          as Map<String, dynamic>);
  static GFecthUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFecthUserReq.serializer, json);
}

abstract class GpollVotersReq
    implements
        Built<GpollVotersReq, GpollVotersReqBuilder>,
        _i1.OperationRequest<_i2.GpollVotersData, _i3.GpollVotersVars> {
  GpollVotersReq._();

  factory GpollVotersReq([Function(GpollVotersReqBuilder b) updates]) =
      _$GpollVotersReq;

  static void _initializeBuilder(GpollVotersReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'pollVoters')
    ..executeOnListen = true;
  _i3.GpollVotersVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GpollVotersData? Function(_i2.GpollVotersData?, _i2.GpollVotersData?)?
      get updateResult;
  _i2.GpollVotersData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GpollVotersData? parseData(Map<String, dynamic> json) =>
      _i2.GpollVotersData.fromJson(json);
  static Serializer<GpollVotersReq> get serializer =>
      _$gpollVotersReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GpollVotersReq.serializer, this)
          as Map<String, dynamic>);
  static GpollVotersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GpollVotersReq.serializer, json);
}

abstract class GregisterReq
    implements
        Built<GregisterReq, GregisterReqBuilder>,
        _i1.OperationRequest<_i2.GregisterData, _i3.GregisterVars> {
  GregisterReq._();

  factory GregisterReq([Function(GregisterReqBuilder b) updates]) =
      _$GregisterReq;

  static void _initializeBuilder(GregisterReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'register')
    ..executeOnListen = true;
  _i3.GregisterVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GregisterData? Function(_i2.GregisterData?, _i2.GregisterData?)?
      get updateResult;
  _i2.GregisterData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GregisterData? parseData(Map<String, dynamic> json) =>
      _i2.GregisterData.fromJson(json);
  static Serializer<GregisterReq> get serializer => _$gregisterReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GregisterReq.serializer, this)
          as Map<String, dynamic>);
  static GregisterReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GregisterReq.serializer, json);
}

abstract class GloginReq
    implements
        Built<GloginReq, GloginReqBuilder>,
        _i1.OperationRequest<_i2.GloginData, _i3.GloginVars> {
  GloginReq._();

  factory GloginReq([Function(GloginReqBuilder b) updates]) = _$GloginReq;

  static void _initializeBuilder(GloginReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'login')
    ..executeOnListen = true;
  _i3.GloginVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GloginData? Function(_i2.GloginData?, _i2.GloginData?)? get updateResult;
  _i2.GloginData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GloginData? parseData(Map<String, dynamic> json) =>
      _i2.GloginData.fromJson(json);
  static Serializer<GloginReq> get serializer => _$gloginReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GloginReq.serializer, this)
          as Map<String, dynamic>);
  static GloginReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GloginReq.serializer, json);
}

abstract class GvoteReq
    implements
        Built<GvoteReq, GvoteReqBuilder>,
        _i1.OperationRequest<_i2.GvoteData, _i3.GvoteVars> {
  GvoteReq._();

  factory GvoteReq([Function(GvoteReqBuilder b) updates]) = _$GvoteReq;

  static void _initializeBuilder(GvoteReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'vote')
    ..executeOnListen = true;
  _i3.GvoteVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GvoteData? Function(_i2.GvoteData?, _i2.GvoteData?)? get updateResult;
  _i2.GvoteData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GvoteData? parseData(Map<String, dynamic> json) =>
      _i2.GvoteData.fromJson(json);
  static Serializer<GvoteReq> get serializer => _$gvoteReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GvoteReq.serializer, this)
          as Map<String, dynamic>);
  static GvoteReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GvoteReq.serializer, json);
}
