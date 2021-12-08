// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:evote_client/graphql/schema.schema.gql.dart' as _i2;
import 'package:evote_client/graphql/serializers.gql.dart' as _i1;

part 'poll.data.gql.g.dart';

abstract class GFetchPollData
    implements Built<GFetchPollData, GFetchPollDataBuilder> {
  GFetchPollData._();

  factory GFetchPollData([Function(GFetchPollDataBuilder b) updates]) =
      _$GFetchPollData;

  static void _initializeBuilder(GFetchPollDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFetchPollData_polls>? get polls;
  static Serializer<GFetchPollData> get serializer =>
      _$gFetchPollDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchPollData.serializer, this)
          as Map<String, dynamic>);
  static GFetchPollData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchPollData.serializer, json);
}

abstract class GFetchPollData_polls
    implements Built<GFetchPollData_polls, GFetchPollData_pollsBuilder> {
  GFetchPollData_polls._();

  factory GFetchPollData_polls(
          [Function(GFetchPollData_pollsBuilder b) updates]) =
      _$GFetchPollData_polls;

  static void _initializeBuilder(GFetchPollData_pollsBuilder b) =>
      b..G__typename = 'Poll';
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get title;
  String get description;
  int get duration;
  _i2.GDate get createdAt;
  _i2.GDate get updatedAt;
  BuiltList<GFetchPollData_polls_candidate>? get candidate;
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GFetchPollData_polls> get serializer =>
      _$gFetchPollDataPollsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchPollData_polls.serializer, this)
          as Map<String, dynamic>);
  static GFetchPollData_polls? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchPollData_polls.serializer, json);
}

abstract class GFetchPollData_polls_candidate
    implements
        Built<GFetchPollData_polls_candidate,
            GFetchPollData_polls_candidateBuilder> {
  GFetchPollData_polls_candidate._();

  factory GFetchPollData_polls_candidate(
          [Function(GFetchPollData_polls_candidateBuilder b) updates]) =
      _$GFetchPollData_polls_candidate;

  static void _initializeBuilder(GFetchPollData_polls_candidateBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get username;
  String get email;
  _i2.GRoleEnum get role;
  bool get status;
  String get password;
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFetchPollData_polls_candidate_voters>? get voters;
  static Serializer<GFetchPollData_polls_candidate> get serializer =>
      _$gFetchPollDataPollsCandidateSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFetchPollData_polls_candidate.serializer, this) as Map<String, dynamic>);
  static GFetchPollData_polls_candidate? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFetchPollData_polls_candidate.serializer, json);
}

abstract class GFetchPollData_polls_candidate_voters
    implements
        Built<GFetchPollData_polls_candidate_voters,
            GFetchPollData_polls_candidate_votersBuilder> {
  GFetchPollData_polls_candidate_voters._();

  factory GFetchPollData_polls_candidate_voters(
          [Function(GFetchPollData_polls_candidate_votersBuilder b) updates]) =
      _$GFetchPollData_polls_candidate_voters;

  static void _initializeBuilder(
          GFetchPollData_polls_candidate_votersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get username;
  String get email;
  _i2.GRoleEnum get role;
  bool get status;
  String get password;
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GFetchPollData_polls_candidate_voters> get serializer =>
      _$gFetchPollDataPollsCandidateVotersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFetchPollData_polls_candidate_voters.serializer, this)
      as Map<String, dynamic>);
  static GFetchPollData_polls_candidate_voters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchPollData_polls_candidate_voters.serializer, json);
}

abstract class GFecthUsersData
    implements Built<GFecthUsersData, GFecthUsersDataBuilder> {
  GFecthUsersData._();

  factory GFecthUsersData([Function(GFecthUsersDataBuilder b) updates]) =
      _$GFecthUsersData;

  static void _initializeBuilder(GFecthUsersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFecthUsersData_users>? get users;
  static Serializer<GFecthUsersData> get serializer =>
      _$gFecthUsersDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFecthUsersData.serializer, this)
          as Map<String, dynamic>);
  static GFecthUsersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFecthUsersData.serializer, json);
}

abstract class GFecthUsersData_users
    implements Built<GFecthUsersData_users, GFecthUsersData_usersBuilder> {
  GFecthUsersData_users._();

  factory GFecthUsersData_users(
          [Function(GFecthUsersData_usersBuilder b) updates]) =
      _$GFecthUsersData_users;

  static void _initializeBuilder(GFecthUsersData_usersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get username;
  String get email;
  _i2.GRoleEnum get role;
  bool get status;
  BuiltList<GFecthUsersData_users_voters>? get voters;
  static Serializer<GFecthUsersData_users> get serializer =>
      _$gFecthUsersDataUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFecthUsersData_users.serializer, this)
          as Map<String, dynamic>);
  static GFecthUsersData_users? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFecthUsersData_users.serializer, json);
}

abstract class GFecthUsersData_users_voters
    implements
        Built<GFecthUsersData_users_voters,
            GFecthUsersData_users_votersBuilder> {
  GFecthUsersData_users_voters._();

  factory GFecthUsersData_users_voters(
          [Function(GFecthUsersData_users_votersBuilder b) updates]) =
      _$GFecthUsersData_users_voters;

  static void _initializeBuilder(GFecthUsersData_users_votersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get username;
  String get email;
  _i2.GRoleEnum get role;
  bool get status;
  static Serializer<GFecthUsersData_users_voters> get serializer =>
      _$gFecthUsersDataUsersVotersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFecthUsersData_users_voters.serializer, this) as Map<String, dynamic>);
  static GFecthUsersData_users_voters? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFecthUsersData_users_voters.serializer, json);
}

abstract class GFecthUserData
    implements Built<GFecthUserData, GFecthUserDataBuilder> {
  GFecthUserData._();

  factory GFecthUserData([Function(GFecthUserDataBuilder b) updates]) =
      _$GFecthUserData;

  static void _initializeBuilder(GFecthUserDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFecthUserData_user? get user;
  static Serializer<GFecthUserData> get serializer =>
      _$gFecthUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFecthUserData.serializer, this)
          as Map<String, dynamic>);
  static GFecthUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFecthUserData.serializer, json);
}

abstract class GFecthUserData_user
    implements Built<GFecthUserData_user, GFecthUserData_userBuilder> {
  GFecthUserData_user._();

  factory GFecthUserData_user(
      [Function(GFecthUserData_userBuilder b) updates]) = _$GFecthUserData_user;

  static void _initializeBuilder(GFecthUserData_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get username;
  String get email;
  _i2.GRoleEnum get role;
  bool get status;
  String get updatedAt;
  String get createdAt;
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GFecthUserData_user> get serializer =>
      _$gFecthUserDataUserSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFecthUserData_user.serializer, this)
          as Map<String, dynamic>);
  static GFecthUserData_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFecthUserData_user.serializer, json);
}

abstract class GpollVotersData
    implements Built<GpollVotersData, GpollVotersDataBuilder> {
  GpollVotersData._();

  factory GpollVotersData([Function(GpollVotersDataBuilder b) updates]) =
      _$GpollVotersData;

  static void _initializeBuilder(GpollVotersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get pollVoters;
  static Serializer<GpollVotersData> get serializer =>
      _$gpollVotersDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GpollVotersData.serializer, this)
          as Map<String, dynamic>);
  static GpollVotersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GpollVotersData.serializer, json);
}

abstract class GaddCandidateData
    implements Built<GaddCandidateData, GaddCandidateDataBuilder> {
  GaddCandidateData._();

  factory GaddCandidateData([Function(GaddCandidateDataBuilder b) updates]) =
      _$GaddCandidateData;

  static void _initializeBuilder(GaddCandidateDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get addCandidate;
  static Serializer<GaddCandidateData> get serializer =>
      _$gaddCandidateDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GaddCandidateData.serializer, this)
          as Map<String, dynamic>);
  static GaddCandidateData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GaddCandidateData.serializer, json);
}

abstract class GvoteData implements Built<GvoteData, GvoteDataBuilder> {
  GvoteData._();

  factory GvoteData([Function(GvoteDataBuilder b) updates]) = _$GvoteData;

  static void _initializeBuilder(GvoteDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GvoteData_vote? get vote;
  static Serializer<GvoteData> get serializer => _$gvoteDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GvoteData.serializer, this)
          as Map<String, dynamic>);
  static GvoteData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GvoteData.serializer, json);
}

abstract class GvoteData_vote
    implements Built<GvoteData_vote, GvoteData_voteBuilder> {
  GvoteData_vote._();

  factory GvoteData_vote([Function(GvoteData_voteBuilder b) updates]) =
      _$GvoteData_vote;

  static void _initializeBuilder(GvoteData_voteBuilder b) =>
      b..G__typename = 'Poll';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get title;
  String get description;
  int get duration;
  _i2.GDate get createdAt;
  _i2.GDate get updatedAt;
  BuiltList<GvoteData_vote_candidate>? get candidate;
  static Serializer<GvoteData_vote> get serializer => _$gvoteDataVoteSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GvoteData_vote.serializer, this)
          as Map<String, dynamic>);
  static GvoteData_vote? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GvoteData_vote.serializer, json);
}

abstract class GvoteData_vote_candidate
    implements
        Built<GvoteData_vote_candidate, GvoteData_vote_candidateBuilder> {
  GvoteData_vote_candidate._();

  factory GvoteData_vote_candidate(
          [Function(GvoteData_vote_candidateBuilder b) updates]) =
      _$GvoteData_vote_candidate;

  static void _initializeBuilder(GvoteData_vote_candidateBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get username;
  String get email;
  _i2.GRoleEnum get role;
  bool get status;
  String get password;
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GvoteData_vote_candidate_voters>? get voters;
  static Serializer<GvoteData_vote_candidate> get serializer =>
      _$gvoteDataVoteCandidateSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GvoteData_vote_candidate.serializer, this)
          as Map<String, dynamic>);
  static GvoteData_vote_candidate? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GvoteData_vote_candidate.serializer, json);
}

abstract class GvoteData_vote_candidate_voters
    implements
        Built<GvoteData_vote_candidate_voters,
            GvoteData_vote_candidate_votersBuilder> {
  GvoteData_vote_candidate_voters._();

  factory GvoteData_vote_candidate_voters(
          [Function(GvoteData_vote_candidate_votersBuilder b) updates]) =
      _$GvoteData_vote_candidate_voters;

  static void _initializeBuilder(GvoteData_vote_candidate_votersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get username;
  String get email;
  _i2.GRoleEnum get role;
  bool get status;
  String get password;
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GvoteData_vote_candidate_voters> get serializer =>
      _$gvoteDataVoteCandidateVotersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GvoteData_vote_candidate_voters.serializer, this)
      as Map<String, dynamic>);
  static GvoteData_vote_candidate_voters? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GvoteData_vote_candidate_voters.serializer, json);
}

abstract class GregisterData
    implements Built<GregisterData, GregisterDataBuilder> {
  GregisterData._();

  factory GregisterData([Function(GregisterDataBuilder b) updates]) =
      _$GregisterData;

  static void _initializeBuilder(GregisterDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GregisterData_register? get register;
  static Serializer<GregisterData> get serializer => _$gregisterDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GregisterData.serializer, this)
          as Map<String, dynamic>);
  static GregisterData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GregisterData.serializer, json);
}

abstract class GregisterData_register
    implements Built<GregisterData_register, GregisterData_registerBuilder> {
  GregisterData_register._();

  factory GregisterData_register(
          [Function(GregisterData_registerBuilder b) updates]) =
      _$GregisterData_register;

  static void _initializeBuilder(GregisterData_registerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get username;
  String get email;
  String get password;
  bool get status;
  _i2.GRoleEnum get role;
  String get createdAt;
  String get updatedAt;
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GregisterData_register_voters>? get voters;
  static Serializer<GregisterData_register> get serializer =>
      _$gregisterDataRegisterSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GregisterData_register.serializer, this)
          as Map<String, dynamic>);
  static GregisterData_register? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GregisterData_register.serializer, json);
}

abstract class GregisterData_register_voters
    implements
        Built<GregisterData_register_voters,
            GregisterData_register_votersBuilder> {
  GregisterData_register_voters._();

  factory GregisterData_register_voters(
          [Function(GregisterData_register_votersBuilder b) updates]) =
      _$GregisterData_register_voters;

  static void _initializeBuilder(GregisterData_register_votersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get username;
  String get email;
  _i2.GRoleEnum get role;
  bool get status;
  static Serializer<GregisterData_register_voters> get serializer =>
      _$gregisterDataRegisterVotersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GregisterData_register_voters.serializer, this) as Map<String, dynamic>);
  static GregisterData_register_voters? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GregisterData_register_voters.serializer, json);
}

abstract class GloginData implements Built<GloginData, GloginDataBuilder> {
  GloginData._();

  factory GloginData([Function(GloginDataBuilder b) updates]) = _$GloginData;

  static void _initializeBuilder(GloginDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GloginData_login? get login;
  static Serializer<GloginData> get serializer => _$gloginDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GloginData.serializer, this)
          as Map<String, dynamic>);
  static GloginData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GloginData.serializer, json);
}

abstract class GloginData_login
    implements Built<GloginData_login, GloginData_loginBuilder> {
  GloginData_login._();

  factory GloginData_login([Function(GloginData_loginBuilder b) updates]) =
      _$GloginData_login;

  static void _initializeBuilder(GloginData_loginBuilder b) =>
      b..G__typename = 'LoginResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GloginData_login> get serializer =>
      _$gloginDataLoginSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GloginData_login.serializer, this)
          as Map<String, dynamic>);
  static GloginData_login? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GloginData_login.serializer, json);
}

abstract class GdeletePollData
    implements Built<GdeletePollData, GdeletePollDataBuilder> {
  GdeletePollData._();

  factory GdeletePollData([Function(GdeletePollDataBuilder b) updates]) =
      _$GdeletePollData;

  static void _initializeBuilder(GdeletePollDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get deletePoll;
  static Serializer<GdeletePollData> get serializer =>
      _$gdeletePollDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GdeletePollData.serializer, this)
          as Map<String, dynamic>);
  static GdeletePollData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GdeletePollData.serializer, json);
}

abstract class GcreatePollData
    implements Built<GcreatePollData, GcreatePollDataBuilder> {
  GcreatePollData._();

  factory GcreatePollData([Function(GcreatePollDataBuilder b) updates]) =
      _$GcreatePollData;

  static void _initializeBuilder(GcreatePollDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcreatePollData_createPoll? get createPoll;
  static Serializer<GcreatePollData> get serializer =>
      _$gcreatePollDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GcreatePollData.serializer, this)
          as Map<String, dynamic>);
  static GcreatePollData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GcreatePollData.serializer, json);
}

abstract class GcreatePollData_createPoll
    implements
        Built<GcreatePollData_createPoll, GcreatePollData_createPollBuilder> {
  GcreatePollData_createPoll._();

  factory GcreatePollData_createPoll(
          [Function(GcreatePollData_createPollBuilder b) updates]) =
      _$GcreatePollData_createPoll;

  static void _initializeBuilder(GcreatePollData_createPollBuilder b) =>
      b..G__typename = 'Poll';
  @BuiltValueField(wireName: '_id')
  String get G_id;
  String get title;
  int get duration;
  String get description;
  _i2.GDate get createdAt;
  _i2.GDate get updatedAt;
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GcreatePollData_createPoll> get serializer =>
      _$gcreatePollDataCreatePollSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GcreatePollData_createPoll.serializer, this) as Map<String, dynamic>);
  static GcreatePollData_createPoll? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GcreatePollData_createPoll.serializer, json);
}
