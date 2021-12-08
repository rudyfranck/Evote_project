// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchPollData> _$gFetchPollDataSerializer =
    new _$GFetchPollDataSerializer();
Serializer<GFetchPollData_polls> _$gFetchPollDataPollsSerializer =
    new _$GFetchPollData_pollsSerializer();
Serializer<GFetchPollData_polls_candidate>
    _$gFetchPollDataPollsCandidateSerializer =
    new _$GFetchPollData_polls_candidateSerializer();
Serializer<GFetchPollData_polls_candidate_voters>
    _$gFetchPollDataPollsCandidateVotersSerializer =
    new _$GFetchPollData_polls_candidate_votersSerializer();
Serializer<GFecthUsersData> _$gFecthUsersDataSerializer =
    new _$GFecthUsersDataSerializer();
Serializer<GFecthUsersData_users> _$gFecthUsersDataUsersSerializer =
    new _$GFecthUsersData_usersSerializer();
Serializer<GFecthUsersData_users_voters>
    _$gFecthUsersDataUsersVotersSerializer =
    new _$GFecthUsersData_users_votersSerializer();
Serializer<GFecthUserData> _$gFecthUserDataSerializer =
    new _$GFecthUserDataSerializer();
Serializer<GFecthUserData_user> _$gFecthUserDataUserSerializer =
    new _$GFecthUserData_userSerializer();
Serializer<GpollVotersData> _$gpollVotersDataSerializer =
    new _$GpollVotersDataSerializer();
Serializer<GaddCandidateData> _$gaddCandidateDataSerializer =
    new _$GaddCandidateDataSerializer();
Serializer<GvoteData> _$gvoteDataSerializer = new _$GvoteDataSerializer();
Serializer<GvoteData_vote> _$gvoteDataVoteSerializer =
    new _$GvoteData_voteSerializer();
Serializer<GvoteData_vote_candidate> _$gvoteDataVoteCandidateSerializer =
    new _$GvoteData_vote_candidateSerializer();
Serializer<GvoteData_vote_candidate_voters>
    _$gvoteDataVoteCandidateVotersSerializer =
    new _$GvoteData_vote_candidate_votersSerializer();
Serializer<GregisterData> _$gregisterDataSerializer =
    new _$GregisterDataSerializer();
Serializer<GregisterData_register> _$gregisterDataRegisterSerializer =
    new _$GregisterData_registerSerializer();
Serializer<GregisterData_register_voters>
    _$gregisterDataRegisterVotersSerializer =
    new _$GregisterData_register_votersSerializer();
Serializer<GloginData> _$gloginDataSerializer = new _$GloginDataSerializer();
Serializer<GloginData_login> _$gloginDataLoginSerializer =
    new _$GloginData_loginSerializer();
Serializer<GdeletePollData> _$gdeletePollDataSerializer =
    new _$GdeletePollDataSerializer();
Serializer<GcreatePollData> _$gcreatePollDataSerializer =
    new _$GcreatePollDataSerializer();
Serializer<GcreatePollData_createPoll> _$gcreatePollDataCreatePollSerializer =
    new _$GcreatePollData_createPollSerializer();

class _$GFetchPollDataSerializer
    implements StructuredSerializer<GFetchPollData> {
  @override
  final Iterable<Type> types = const [GFetchPollData, _$GFetchPollData];
  @override
  final String wireName = 'GFetchPollData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFetchPollData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.polls;
    if (value != null) {
      result
        ..add('polls')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GFetchPollData_polls)])));
    }
    return result;
  }

  @override
  GFetchPollData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchPollDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'polls':
          result.polls.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GFetchPollData_polls)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchPollData_pollsSerializer
    implements StructuredSerializer<GFetchPollData_polls> {
  @override
  final Iterable<Type> types = const [
    GFetchPollData_polls,
    _$GFetchPollData_polls
  ];
  @override
  final String wireName = 'GFetchPollData_polls';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchPollData_polls object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDate)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDate)),
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.candidate;
    if (value != null) {
      result
        ..add('candidate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GFetchPollData_polls_candidate)])));
    }
    return result;
  }

  @override
  GFetchPollData_polls deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchPollData_pollsBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDate))! as _i2.GDate);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDate))! as _i2.GDate);
          break;
        case 'candidate':
          result.candidate.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFetchPollData_polls_candidate)
              ]))! as BuiltList<Object?>);
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchPollData_polls_candidateSerializer
    implements StructuredSerializer<GFetchPollData_polls_candidate> {
  @override
  final Iterable<Type> types = const [
    GFetchPollData_polls_candidate,
    _$GFetchPollData_polls_candidate
  ];
  @override
  final String wireName = 'GFetchPollData_polls_candidate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchPollData_polls_candidate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRoleEnum)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.voters;
    if (value != null) {
      result
        ..add('voters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GFetchPollData_polls_candidate_voters)
            ])));
    }
    return result;
  }

  @override
  GFetchPollData_polls_candidate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchPollData_polls_candidateBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRoleEnum)) as _i2.GRoleEnum;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'voters':
          result.voters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFetchPollData_polls_candidate_voters)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchPollData_polls_candidate_votersSerializer
    implements StructuredSerializer<GFetchPollData_polls_candidate_voters> {
  @override
  final Iterable<Type> types = const [
    GFetchPollData_polls_candidate_voters,
    _$GFetchPollData_polls_candidate_voters
  ];
  @override
  final String wireName = 'GFetchPollData_polls_candidate_voters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchPollData_polls_candidate_voters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRoleEnum)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFetchPollData_polls_candidate_voters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchPollData_polls_candidate_votersBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRoleEnum)) as _i2.GRoleEnum;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFecthUsersDataSerializer
    implements StructuredSerializer<GFecthUsersData> {
  @override
  final Iterable<Type> types = const [GFecthUsersData, _$GFecthUsersData];
  @override
  final String wireName = 'GFecthUsersData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFecthUsersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GFecthUsersData_users)])));
    }
    return result;
  }

  @override
  GFecthUsersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFecthUsersDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFecthUsersData_users)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFecthUsersData_usersSerializer
    implements StructuredSerializer<GFecthUsersData_users> {
  @override
  final Iterable<Type> types = const [
    GFecthUsersData_users,
    _$GFecthUsersData_users
  ];
  @override
  final String wireName = 'GFecthUsersData_users';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFecthUsersData_users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRoleEnum)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.voters;
    if (value != null) {
      result
        ..add('voters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GFecthUsersData_users_voters)])));
    }
    return result;
  }

  @override
  GFecthUsersData_users deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFecthUsersData_usersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_id':
          result.G_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRoleEnum)) as _i2.GRoleEnum;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'voters':
          result.voters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFecthUsersData_users_voters)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFecthUsersData_users_votersSerializer
    implements StructuredSerializer<GFecthUsersData_users_voters> {
  @override
  final Iterable<Type> types = const [
    GFecthUsersData_users_voters,
    _$GFecthUsersData_users_voters
  ];
  @override
  final String wireName = 'GFecthUsersData_users_voters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFecthUsersData_users_voters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRoleEnum)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GFecthUsersData_users_voters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFecthUsersData_users_votersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_id':
          result.G_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRoleEnum)) as _i2.GRoleEnum;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GFecthUserDataSerializer
    implements StructuredSerializer<GFecthUserData> {
  @override
  final Iterable<Type> types = const [GFecthUserData, _$GFecthUserData];
  @override
  final String wireName = 'GFecthUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFecthUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GFecthUserData_user)));
    }
    return result;
  }

  @override
  GFecthUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFecthUserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFecthUserData_user))!
              as GFecthUserData_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GFecthUserData_userSerializer
    implements StructuredSerializer<GFecthUserData_user> {
  @override
  final Iterable<Type> types = const [
    GFecthUserData_user,
    _$GFecthUserData_user
  ];
  @override
  final String wireName = 'GFecthUserData_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFecthUserData_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRoleEnum)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFecthUserData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFecthUserData_userBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRoleEnum)) as _i2.GRoleEnum;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GpollVotersDataSerializer
    implements StructuredSerializer<GpollVotersData> {
  @override
  final Iterable<Type> types = const [GpollVotersData, _$GpollVotersData];
  @override
  final String wireName = 'GpollVotersData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GpollVotersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pollVoters;
    if (value != null) {
      result
        ..add('pollVoters')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GpollVotersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpollVotersDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pollVoters':
          result.pollVoters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GaddCandidateDataSerializer
    implements StructuredSerializer<GaddCandidateData> {
  @override
  final Iterable<Type> types = const [GaddCandidateData, _$GaddCandidateData];
  @override
  final String wireName = 'GaddCandidateData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GaddCandidateData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.addCandidate;
    if (value != null) {
      result
        ..add('addCandidate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GaddCandidateData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GaddCandidateDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addCandidate':
          result.addCandidate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GvoteDataSerializer implements StructuredSerializer<GvoteData> {
  @override
  final Iterable<Type> types = const [GvoteData, _$GvoteData];
  @override
  final String wireName = 'GvoteData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GvoteData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.vote;
    if (value != null) {
      result
        ..add('vote')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GvoteData_vote)));
    }
    return result;
  }

  @override
  GvoteData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvoteDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote':
          result.vote.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GvoteData_vote))!
              as GvoteData_vote);
          break;
      }
    }

    return result.build();
  }
}

class _$GvoteData_voteSerializer
    implements StructuredSerializer<GvoteData_vote> {
  @override
  final Iterable<Type> types = const [GvoteData_vote, _$GvoteData_vote];
  @override
  final String wireName = 'GvoteData_vote';

  @override
  Iterable<Object?> serialize(Serializers serializers, GvoteData_vote object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDate)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDate)),
    ];
    Object? value;
    value = object.candidate;
    if (value != null) {
      result
        ..add('candidate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GvoteData_vote_candidate)])));
    }
    return result;
  }

  @override
  GvoteData_vote deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvoteData_voteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_id':
          result.G_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDate))! as _i2.GDate);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDate))! as _i2.GDate);
          break;
        case 'candidate':
          result.candidate.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GvoteData_vote_candidate)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GvoteData_vote_candidateSerializer
    implements StructuredSerializer<GvoteData_vote_candidate> {
  @override
  final Iterable<Type> types = const [
    GvoteData_vote_candidate,
    _$GvoteData_vote_candidate
  ];
  @override
  final String wireName = 'GvoteData_vote_candidate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GvoteData_vote_candidate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRoleEnum)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.voters;
    if (value != null) {
      result
        ..add('voters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GvoteData_vote_candidate_voters)])));
    }
    return result;
  }

  @override
  GvoteData_vote_candidate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvoteData_vote_candidateBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRoleEnum)) as _i2.GRoleEnum;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'voters':
          result.voters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GvoteData_vote_candidate_voters)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GvoteData_vote_candidate_votersSerializer
    implements StructuredSerializer<GvoteData_vote_candidate_voters> {
  @override
  final Iterable<Type> types = const [
    GvoteData_vote_candidate_voters,
    _$GvoteData_vote_candidate_voters
  ];
  @override
  final String wireName = 'GvoteData_vote_candidate_voters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GvoteData_vote_candidate_voters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRoleEnum)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GvoteData_vote_candidate_voters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GvoteData_vote_candidate_votersBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRoleEnum)) as _i2.GRoleEnum;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GregisterDataSerializer implements StructuredSerializer<GregisterData> {
  @override
  final Iterable<Type> types = const [GregisterData, _$GregisterData];
  @override
  final String wireName = 'GregisterData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GregisterData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.register;
    if (value != null) {
      result
        ..add('register')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GregisterData_register)));
    }
    return result;
  }

  @override
  GregisterData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GregisterDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'register':
          result.register.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GregisterData_register))!
              as GregisterData_register);
          break;
      }
    }

    return result.build();
  }
}

class _$GregisterData_registerSerializer
    implements StructuredSerializer<GregisterData_register> {
  @override
  final Iterable<Type> types = const [
    GregisterData_register,
    _$GregisterData_register
  ];
  @override
  final String wireName = 'GregisterData_register';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GregisterData_register object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRoleEnum)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.voters;
    if (value != null) {
      result
        ..add('voters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GregisterData_register_voters)])));
    }
    return result;
  }

  @override
  GregisterData_register deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GregisterData_registerBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRoleEnum)) as _i2.GRoleEnum;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'voters':
          result.voters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GregisterData_register_voters)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GregisterData_register_votersSerializer
    implements StructuredSerializer<GregisterData_register_voters> {
  @override
  final Iterable<Type> types = const [
    GregisterData_register_voters,
    _$GregisterData_register_voters
  ];
  @override
  final String wireName = 'GregisterData_register_voters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GregisterData_register_voters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRoleEnum)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GregisterData_register_voters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GregisterData_register_votersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_id':
          result.G_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRoleEnum)) as _i2.GRoleEnum;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GloginDataSerializer implements StructuredSerializer<GloginData> {
  @override
  final Iterable<Type> types = const [GloginData, _$GloginData];
  @override
  final String wireName = 'GloginData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloginData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.login;
    if (value != null) {
      result
        ..add('login')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GloginData_login)));
    }
    return result;
  }

  @override
  GloginData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloginDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GloginData_login))!
              as GloginData_login);
          break;
      }
    }

    return result.build();
  }
}

class _$GloginData_loginSerializer
    implements StructuredSerializer<GloginData_login> {
  @override
  final Iterable<Type> types = const [GloginData_login, _$GloginData_login];
  @override
  final String wireName = 'GloginData_login';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloginData_login object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GloginData_login deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloginData_loginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GdeletePollDataSerializer
    implements StructuredSerializer<GdeletePollData> {
  @override
  final Iterable<Type> types = const [GdeletePollData, _$GdeletePollData];
  @override
  final String wireName = 'GdeletePollData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdeletePollData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deletePoll;
    if (value != null) {
      result
        ..add('deletePoll')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GdeletePollData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeletePollDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deletePoll':
          result.deletePoll = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreatePollDataSerializer
    implements StructuredSerializer<GcreatePollData> {
  @override
  final Iterable<Type> types = const [GcreatePollData, _$GcreatePollData];
  @override
  final String wireName = 'GcreatePollData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GcreatePollData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createPoll;
    if (value != null) {
      result
        ..add('createPoll')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GcreatePollData_createPoll)));
    }
    return result;
  }

  @override
  GcreatePollData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreatePollDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createPoll':
          result.createPoll.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GcreatePollData_createPoll))!
              as GcreatePollData_createPoll);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreatePollData_createPollSerializer
    implements StructuredSerializer<GcreatePollData_createPoll> {
  @override
  final Iterable<Type> types = const [
    GcreatePollData_createPoll,
    _$GcreatePollData_createPoll
  ];
  @override
  final String wireName = 'GcreatePollData_createPoll';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreatePollData_createPoll object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDate)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDate)),
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GcreatePollData_createPoll deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreatePollData_createPollBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDate))! as _i2.GDate);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDate))! as _i2.GDate);
          break;
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchPollData extends GFetchPollData {
  @override
  final String G__typename;
  @override
  final BuiltList<GFetchPollData_polls>? polls;

  factory _$GFetchPollData([void Function(GFetchPollDataBuilder)? updates]) =>
      (new GFetchPollDataBuilder()..update(updates)).build();

  _$GFetchPollData._({required this.G__typename, this.polls}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchPollData', 'G__typename');
  }

  @override
  GFetchPollData rebuild(void Function(GFetchPollDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchPollDataBuilder toBuilder() =>
      new GFetchPollDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchPollData &&
        G__typename == other.G__typename &&
        polls == other.polls;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), polls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchPollData')
          ..add('G__typename', G__typename)
          ..add('polls', polls))
        .toString();
  }
}

class GFetchPollDataBuilder
    implements Builder<GFetchPollData, GFetchPollDataBuilder> {
  _$GFetchPollData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFetchPollData_polls>? _polls;
  ListBuilder<GFetchPollData_polls> get polls =>
      _$this._polls ??= new ListBuilder<GFetchPollData_polls>();
  set polls(ListBuilder<GFetchPollData_polls>? polls) => _$this._polls = polls;

  GFetchPollDataBuilder() {
    GFetchPollData._initializeBuilder(this);
  }

  GFetchPollDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _polls = $v.polls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchPollData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchPollData;
  }

  @override
  void update(void Function(GFetchPollDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchPollData build() {
    _$GFetchPollData _$result;
    try {
      _$result = _$v ??
          new _$GFetchPollData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFetchPollData', 'G__typename'),
              polls: _polls?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'polls';
        _polls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchPollData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchPollData_polls extends GFetchPollData_polls {
  @override
  final String G_id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int duration;
  @override
  final _i2.GDate createdAt;
  @override
  final _i2.GDate updatedAt;
  @override
  final BuiltList<GFetchPollData_polls_candidate>? candidate;
  @override
  final String G__typename;

  factory _$GFetchPollData_polls(
          [void Function(GFetchPollData_pollsBuilder)? updates]) =>
      (new GFetchPollData_pollsBuilder()..update(updates)).build();

  _$GFetchPollData_polls._(
      {required this.G_id,
      required this.title,
      required this.description,
      required this.duration,
      required this.createdAt,
      required this.updatedAt,
      this.candidate,
      required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G_id, 'GFetchPollData_polls', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GFetchPollData_polls', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, 'GFetchPollData_polls', 'description');
    BuiltValueNullFieldError.checkNotNull(
        duration, 'GFetchPollData_polls', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GFetchPollData_polls', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'GFetchPollData_polls', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchPollData_polls', 'G__typename');
  }

  @override
  GFetchPollData_polls rebuild(
          void Function(GFetchPollData_pollsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchPollData_pollsBuilder toBuilder() =>
      new GFetchPollData_pollsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchPollData_polls &&
        G_id == other.G_id &&
        title == other.title &&
        description == other.description &&
        duration == other.duration &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        candidate == other.candidate &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G_id.hashCode), title.hashCode),
                            description.hashCode),
                        duration.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            candidate.hashCode),
        G__typename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchPollData_polls')
          ..add('G_id', G_id)
          ..add('title', title)
          ..add('description', description)
          ..add('duration', duration)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('candidate', candidate)
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GFetchPollData_pollsBuilder
    implements Builder<GFetchPollData_polls, GFetchPollData_pollsBuilder> {
  _$GFetchPollData_polls? _$v;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  _i2.GDateBuilder? _createdAt;
  _i2.GDateBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateBuilder();
  set createdAt(_i2.GDateBuilder? createdAt) => _$this._createdAt = createdAt;

  _i2.GDateBuilder? _updatedAt;
  _i2.GDateBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GDateBuilder();
  set updatedAt(_i2.GDateBuilder? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<GFetchPollData_polls_candidate>? _candidate;
  ListBuilder<GFetchPollData_polls_candidate> get candidate =>
      _$this._candidate ??= new ListBuilder<GFetchPollData_polls_candidate>();
  set candidate(ListBuilder<GFetchPollData_polls_candidate>? candidate) =>
      _$this._candidate = candidate;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFetchPollData_pollsBuilder() {
    GFetchPollData_polls._initializeBuilder(this);
  }

  GFetchPollData_pollsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G_id = $v.G_id;
      _title = $v.title;
      _description = $v.description;
      _duration = $v.duration;
      _createdAt = $v.createdAt.toBuilder();
      _updatedAt = $v.updatedAt.toBuilder();
      _candidate = $v.candidate?.toBuilder();
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchPollData_polls other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchPollData_polls;
  }

  @override
  void update(void Function(GFetchPollData_pollsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchPollData_polls build() {
    _$GFetchPollData_polls _$result;
    try {
      _$result = _$v ??
          new _$GFetchPollData_polls._(
              G_id: BuiltValueNullFieldError.checkNotNull(
                  G_id, 'GFetchPollData_polls', 'G_id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GFetchPollData_polls', 'title'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'GFetchPollData_polls', 'description'),
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, 'GFetchPollData_polls', 'duration'),
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build(),
              candidate: _candidate?.build(),
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFetchPollData_polls', 'G__typename'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();
        _$failedField = 'candidate';
        _candidate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchPollData_polls', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchPollData_polls_candidate extends GFetchPollData_polls_candidate {
  @override
  final String G_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final _i2.GRoleEnum role;
  @override
  final bool status;
  @override
  final String password;
  @override
  final String G__typename;
  @override
  final BuiltList<GFetchPollData_polls_candidate_voters>? voters;

  factory _$GFetchPollData_polls_candidate(
          [void Function(GFetchPollData_polls_candidateBuilder)? updates]) =>
      (new GFetchPollData_polls_candidateBuilder()..update(updates)).build();

  _$GFetchPollData_polls_candidate._(
      {required this.G_id,
      required this.username,
      required this.email,
      required this.role,
      required this.status,
      required this.password,
      required this.G__typename,
      this.voters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G_id, 'GFetchPollData_polls_candidate', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GFetchPollData_polls_candidate', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GFetchPollData_polls_candidate', 'email');
    BuiltValueNullFieldError.checkNotNull(
        role, 'GFetchPollData_polls_candidate', 'role');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GFetchPollData_polls_candidate', 'status');
    BuiltValueNullFieldError.checkNotNull(
        password, 'GFetchPollData_polls_candidate', 'password');
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchPollData_polls_candidate', 'G__typename');
  }

  @override
  GFetchPollData_polls_candidate rebuild(
          void Function(GFetchPollData_polls_candidateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchPollData_polls_candidateBuilder toBuilder() =>
      new GFetchPollData_polls_candidateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchPollData_polls_candidate &&
        G_id == other.G_id &&
        username == other.username &&
        email == other.email &&
        role == other.role &&
        status == other.status &&
        password == other.password &&
        G__typename == other.G__typename &&
        voters == other.voters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G_id.hashCode), username.hashCode),
                            email.hashCode),
                        role.hashCode),
                    status.hashCode),
                password.hashCode),
            G__typename.hashCode),
        voters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchPollData_polls_candidate')
          ..add('G_id', G_id)
          ..add('username', username)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status)
          ..add('password', password)
          ..add('G__typename', G__typename)
          ..add('voters', voters))
        .toString();
  }
}

class GFetchPollData_polls_candidateBuilder
    implements
        Builder<GFetchPollData_polls_candidate,
            GFetchPollData_polls_candidateBuilder> {
  _$GFetchPollData_polls_candidate? _$v;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GRoleEnum? _role;
  _i2.GRoleEnum? get role => _$this._role;
  set role(_i2.GRoleEnum? role) => _$this._role = role;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFetchPollData_polls_candidate_voters>? _voters;
  ListBuilder<GFetchPollData_polls_candidate_voters> get voters =>
      _$this._voters ??=
          new ListBuilder<GFetchPollData_polls_candidate_voters>();
  set voters(ListBuilder<GFetchPollData_polls_candidate_voters>? voters) =>
      _$this._voters = voters;

  GFetchPollData_polls_candidateBuilder() {
    GFetchPollData_polls_candidate._initializeBuilder(this);
  }

  GFetchPollData_polls_candidateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G_id = $v.G_id;
      _username = $v.username;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _password = $v.password;
      _G__typename = $v.G__typename;
      _voters = $v.voters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchPollData_polls_candidate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchPollData_polls_candidate;
  }

  @override
  void update(void Function(GFetchPollData_polls_candidateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchPollData_polls_candidate build() {
    _$GFetchPollData_polls_candidate _$result;
    try {
      _$result = _$v ??
          new _$GFetchPollData_polls_candidate._(
              G_id: BuiltValueNullFieldError.checkNotNull(
                  G_id, 'GFetchPollData_polls_candidate', 'G_id'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GFetchPollData_polls_candidate', 'username'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'GFetchPollData_polls_candidate', 'email'),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, 'GFetchPollData_polls_candidate', 'role'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'GFetchPollData_polls_candidate', 'status'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, 'GFetchPollData_polls_candidate', 'password'),
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFetchPollData_polls_candidate', 'G__typename'),
              voters: _voters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'voters';
        _voters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchPollData_polls_candidate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchPollData_polls_candidate_voters
    extends GFetchPollData_polls_candidate_voters {
  @override
  final String G_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final _i2.GRoleEnum role;
  @override
  final bool status;
  @override
  final String password;
  @override
  final String G__typename;

  factory _$GFetchPollData_polls_candidate_voters(
          [void Function(GFetchPollData_polls_candidate_votersBuilder)?
              updates]) =>
      (new GFetchPollData_polls_candidate_votersBuilder()..update(updates))
          .build();

  _$GFetchPollData_polls_candidate_voters._(
      {required this.G_id,
      required this.username,
      required this.email,
      required this.role,
      required this.status,
      required this.password,
      required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G_id, 'GFetchPollData_polls_candidate_voters', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GFetchPollData_polls_candidate_voters', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GFetchPollData_polls_candidate_voters', 'email');
    BuiltValueNullFieldError.checkNotNull(
        role, 'GFetchPollData_polls_candidate_voters', 'role');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GFetchPollData_polls_candidate_voters', 'status');
    BuiltValueNullFieldError.checkNotNull(
        password, 'GFetchPollData_polls_candidate_voters', 'password');
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchPollData_polls_candidate_voters', 'G__typename');
  }

  @override
  GFetchPollData_polls_candidate_voters rebuild(
          void Function(GFetchPollData_polls_candidate_votersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchPollData_polls_candidate_votersBuilder toBuilder() =>
      new GFetchPollData_polls_candidate_votersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchPollData_polls_candidate_voters &&
        G_id == other.G_id &&
        username == other.username &&
        email == other.email &&
        role == other.role &&
        status == other.status &&
        password == other.password &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G_id.hashCode), username.hashCode),
                        email.hashCode),
                    role.hashCode),
                status.hashCode),
            password.hashCode),
        G__typename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchPollData_polls_candidate_voters')
          ..add('G_id', G_id)
          ..add('username', username)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status)
          ..add('password', password)
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GFetchPollData_polls_candidate_votersBuilder
    implements
        Builder<GFetchPollData_polls_candidate_voters,
            GFetchPollData_polls_candidate_votersBuilder> {
  _$GFetchPollData_polls_candidate_voters? _$v;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GRoleEnum? _role;
  _i2.GRoleEnum? get role => _$this._role;
  set role(_i2.GRoleEnum? role) => _$this._role = role;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFetchPollData_polls_candidate_votersBuilder() {
    GFetchPollData_polls_candidate_voters._initializeBuilder(this);
  }

  GFetchPollData_polls_candidate_votersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G_id = $v.G_id;
      _username = $v.username;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _password = $v.password;
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchPollData_polls_candidate_voters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchPollData_polls_candidate_voters;
  }

  @override
  void update(
      void Function(GFetchPollData_polls_candidate_votersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchPollData_polls_candidate_voters build() {
    final _$result = _$v ??
        new _$GFetchPollData_polls_candidate_voters._(
            G_id: BuiltValueNullFieldError.checkNotNull(
                G_id, 'GFetchPollData_polls_candidate_voters', 'G_id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GFetchPollData_polls_candidate_voters', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GFetchPollData_polls_candidate_voters', 'email'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, 'GFetchPollData_polls_candidate_voters', 'role'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GFetchPollData_polls_candidate_voters', 'status'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GFetchPollData_polls_candidate_voters', 'password'),
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFetchPollData_polls_candidate_voters', 'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GFecthUsersData extends GFecthUsersData {
  @override
  final String G__typename;
  @override
  final BuiltList<GFecthUsersData_users>? users;

  factory _$GFecthUsersData([void Function(GFecthUsersDataBuilder)? updates]) =>
      (new GFecthUsersDataBuilder()..update(updates)).build();

  _$GFecthUsersData._({required this.G__typename, this.users}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFecthUsersData', 'G__typename');
  }

  @override
  GFecthUsersData rebuild(void Function(GFecthUsersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFecthUsersDataBuilder toBuilder() =>
      new GFecthUsersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFecthUsersData &&
        G__typename == other.G__typename &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFecthUsersData')
          ..add('G__typename', G__typename)
          ..add('users', users))
        .toString();
  }
}

class GFecthUsersDataBuilder
    implements Builder<GFecthUsersData, GFecthUsersDataBuilder> {
  _$GFecthUsersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFecthUsersData_users>? _users;
  ListBuilder<GFecthUsersData_users> get users =>
      _$this._users ??= new ListBuilder<GFecthUsersData_users>();
  set users(ListBuilder<GFecthUsersData_users>? users) => _$this._users = users;

  GFecthUsersDataBuilder() {
    GFecthUsersData._initializeBuilder(this);
  }

  GFecthUsersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _users = $v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFecthUsersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFecthUsersData;
  }

  @override
  void update(void Function(GFecthUsersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFecthUsersData build() {
    _$GFecthUsersData _$result;
    try {
      _$result = _$v ??
          new _$GFecthUsersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFecthUsersData', 'G__typename'),
              users: _users?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFecthUsersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFecthUsersData_users extends GFecthUsersData_users {
  @override
  final String G__typename;
  @override
  final String G_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final _i2.GRoleEnum role;
  @override
  final bool status;
  @override
  final BuiltList<GFecthUsersData_users_voters>? voters;

  factory _$GFecthUsersData_users(
          [void Function(GFecthUsersData_usersBuilder)? updates]) =>
      (new GFecthUsersData_usersBuilder()..update(updates)).build();

  _$GFecthUsersData_users._(
      {required this.G__typename,
      required this.G_id,
      required this.username,
      required this.email,
      required this.role,
      required this.status,
      this.voters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFecthUsersData_users', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        G_id, 'GFecthUsersData_users', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GFecthUsersData_users', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GFecthUsersData_users', 'email');
    BuiltValueNullFieldError.checkNotNull(
        role, 'GFecthUsersData_users', 'role');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GFecthUsersData_users', 'status');
  }

  @override
  GFecthUsersData_users rebuild(
          void Function(GFecthUsersData_usersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFecthUsersData_usersBuilder toBuilder() =>
      new GFecthUsersData_usersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFecthUsersData_users &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        username == other.username &&
        email == other.email &&
        role == other.role &&
        status == other.status &&
        voters == other.voters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), G_id.hashCode),
                        username.hashCode),
                    email.hashCode),
                role.hashCode),
            status.hashCode),
        voters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFecthUsersData_users')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('username', username)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status)
          ..add('voters', voters))
        .toString();
  }
}

class GFecthUsersData_usersBuilder
    implements Builder<GFecthUsersData_users, GFecthUsersData_usersBuilder> {
  _$GFecthUsersData_users? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GRoleEnum? _role;
  _i2.GRoleEnum? get role => _$this._role;
  set role(_i2.GRoleEnum? role) => _$this._role = role;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<GFecthUsersData_users_voters>? _voters;
  ListBuilder<GFecthUsersData_users_voters> get voters =>
      _$this._voters ??= new ListBuilder<GFecthUsersData_users_voters>();
  set voters(ListBuilder<GFecthUsersData_users_voters>? voters) =>
      _$this._voters = voters;

  GFecthUsersData_usersBuilder() {
    GFecthUsersData_users._initializeBuilder(this);
  }

  GFecthUsersData_usersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _G_id = $v.G_id;
      _username = $v.username;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _voters = $v.voters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFecthUsersData_users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFecthUsersData_users;
  }

  @override
  void update(void Function(GFecthUsersData_usersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFecthUsersData_users build() {
    _$GFecthUsersData_users _$result;
    try {
      _$result = _$v ??
          new _$GFecthUsersData_users._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFecthUsersData_users', 'G__typename'),
              G_id: BuiltValueNullFieldError.checkNotNull(
                  G_id, 'GFecthUsersData_users', 'G_id'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GFecthUsersData_users', 'username'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'GFecthUsersData_users', 'email'),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, 'GFecthUsersData_users', 'role'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'GFecthUsersData_users', 'status'),
              voters: _voters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'voters';
        _voters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFecthUsersData_users', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFecthUsersData_users_voters extends GFecthUsersData_users_voters {
  @override
  final String G__typename;
  @override
  final String G_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final _i2.GRoleEnum role;
  @override
  final bool status;

  factory _$GFecthUsersData_users_voters(
          [void Function(GFecthUsersData_users_votersBuilder)? updates]) =>
      (new GFecthUsersData_users_votersBuilder()..update(updates)).build();

  _$GFecthUsersData_users_voters._(
      {required this.G__typename,
      required this.G_id,
      required this.username,
      required this.email,
      required this.role,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFecthUsersData_users_voters', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        G_id, 'GFecthUsersData_users_voters', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GFecthUsersData_users_voters', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GFecthUsersData_users_voters', 'email');
    BuiltValueNullFieldError.checkNotNull(
        role, 'GFecthUsersData_users_voters', 'role');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GFecthUsersData_users_voters', 'status');
  }

  @override
  GFecthUsersData_users_voters rebuild(
          void Function(GFecthUsersData_users_votersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFecthUsersData_users_votersBuilder toBuilder() =>
      new GFecthUsersData_users_votersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFecthUsersData_users_voters &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        username == other.username &&
        email == other.email &&
        role == other.role &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), G_id.hashCode),
                    username.hashCode),
                email.hashCode),
            role.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFecthUsersData_users_voters')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('username', username)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status))
        .toString();
  }
}

class GFecthUsersData_users_votersBuilder
    implements
        Builder<GFecthUsersData_users_voters,
            GFecthUsersData_users_votersBuilder> {
  _$GFecthUsersData_users_voters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GRoleEnum? _role;
  _i2.GRoleEnum? get role => _$this._role;
  set role(_i2.GRoleEnum? role) => _$this._role = role;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  GFecthUsersData_users_votersBuilder() {
    GFecthUsersData_users_voters._initializeBuilder(this);
  }

  GFecthUsersData_users_votersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _G_id = $v.G_id;
      _username = $v.username;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFecthUsersData_users_voters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFecthUsersData_users_voters;
  }

  @override
  void update(void Function(GFecthUsersData_users_votersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFecthUsersData_users_voters build() {
    final _$result = _$v ??
        new _$GFecthUsersData_users_voters._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GFecthUsersData_users_voters', 'G__typename'),
            G_id: BuiltValueNullFieldError.checkNotNull(
                G_id, 'GFecthUsersData_users_voters', 'G_id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GFecthUsersData_users_voters', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GFecthUsersData_users_voters', 'email'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, 'GFecthUsersData_users_voters', 'role'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GFecthUsersData_users_voters', 'status'));
    replace(_$result);
    return _$result;
  }
}

class _$GFecthUserData extends GFecthUserData {
  @override
  final String G__typename;
  @override
  final GFecthUserData_user? user;

  factory _$GFecthUserData([void Function(GFecthUserDataBuilder)? updates]) =>
      (new GFecthUserDataBuilder()..update(updates)).build();

  _$GFecthUserData._({required this.G__typename, this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFecthUserData', 'G__typename');
  }

  @override
  GFecthUserData rebuild(void Function(GFecthUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFecthUserDataBuilder toBuilder() =>
      new GFecthUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFecthUserData &&
        G__typename == other.G__typename &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFecthUserData')
          ..add('G__typename', G__typename)
          ..add('user', user))
        .toString();
  }
}

class GFecthUserDataBuilder
    implements Builder<GFecthUserData, GFecthUserDataBuilder> {
  _$GFecthUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFecthUserData_userBuilder? _user;
  GFecthUserData_userBuilder get user =>
      _$this._user ??= new GFecthUserData_userBuilder();
  set user(GFecthUserData_userBuilder? user) => _$this._user = user;

  GFecthUserDataBuilder() {
    GFecthUserData._initializeBuilder(this);
  }

  GFecthUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFecthUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFecthUserData;
  }

  @override
  void update(void Function(GFecthUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFecthUserData build() {
    _$GFecthUserData _$result;
    try {
      _$result = _$v ??
          new _$GFecthUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFecthUserData', 'G__typename'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFecthUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFecthUserData_user extends GFecthUserData_user {
  @override
  final String G_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final _i2.GRoleEnum role;
  @override
  final bool status;
  @override
  final String updatedAt;
  @override
  final String createdAt;
  @override
  final String G__typename;

  factory _$GFecthUserData_user(
          [void Function(GFecthUserData_userBuilder)? updates]) =>
      (new GFecthUserData_userBuilder()..update(updates)).build();

  _$GFecthUserData_user._(
      {required this.G_id,
      required this.username,
      required this.email,
      required this.role,
      required this.status,
      required this.updatedAt,
      required this.createdAt,
      required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G_id, 'GFecthUserData_user', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GFecthUserData_user', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GFecthUserData_user', 'email');
    BuiltValueNullFieldError.checkNotNull(role, 'GFecthUserData_user', 'role');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GFecthUserData_user', 'status');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'GFecthUserData_user', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GFecthUserData_user', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFecthUserData_user', 'G__typename');
  }

  @override
  GFecthUserData_user rebuild(
          void Function(GFecthUserData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFecthUserData_userBuilder toBuilder() =>
      new GFecthUserData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFecthUserData_user &&
        G_id == other.G_id &&
        username == other.username &&
        email == other.email &&
        role == other.role &&
        status == other.status &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G_id.hashCode), username.hashCode),
                            email.hashCode),
                        role.hashCode),
                    status.hashCode),
                updatedAt.hashCode),
            createdAt.hashCode),
        G__typename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFecthUserData_user')
          ..add('G_id', G_id)
          ..add('username', username)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status)
          ..add('updatedAt', updatedAt)
          ..add('createdAt', createdAt)
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GFecthUserData_userBuilder
    implements Builder<GFecthUserData_user, GFecthUserData_userBuilder> {
  _$GFecthUserData_user? _$v;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GRoleEnum? _role;
  _i2.GRoleEnum? get role => _$this._role;
  set role(_i2.GRoleEnum? role) => _$this._role = role;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFecthUserData_userBuilder() {
    GFecthUserData_user._initializeBuilder(this);
  }

  GFecthUserData_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G_id = $v.G_id;
      _username = $v.username;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _updatedAt = $v.updatedAt;
      _createdAt = $v.createdAt;
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFecthUserData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFecthUserData_user;
  }

  @override
  void update(void Function(GFecthUserData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFecthUserData_user build() {
    final _$result = _$v ??
        new _$GFecthUserData_user._(
            G_id: BuiltValueNullFieldError.checkNotNull(
                G_id, 'GFecthUserData_user', 'G_id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GFecthUserData_user', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GFecthUserData_user', 'email'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, 'GFecthUserData_user', 'role'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GFecthUserData_user', 'status'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, 'GFecthUserData_user', 'updatedAt'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, 'GFecthUserData_user', 'createdAt'),
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GFecthUserData_user', 'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GpollVotersData extends GpollVotersData {
  @override
  final String G__typename;
  @override
  final int? pollVoters;

  factory _$GpollVotersData([void Function(GpollVotersDataBuilder)? updates]) =>
      (new GpollVotersDataBuilder()..update(updates)).build();

  _$GpollVotersData._({required this.G__typename, this.pollVoters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GpollVotersData', 'G__typename');
  }

  @override
  GpollVotersData rebuild(void Function(GpollVotersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpollVotersDataBuilder toBuilder() =>
      new GpollVotersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpollVotersData &&
        G__typename == other.G__typename &&
        pollVoters == other.pollVoters;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), pollVoters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpollVotersData')
          ..add('G__typename', G__typename)
          ..add('pollVoters', pollVoters))
        .toString();
  }
}

class GpollVotersDataBuilder
    implements Builder<GpollVotersData, GpollVotersDataBuilder> {
  _$GpollVotersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _pollVoters;
  int? get pollVoters => _$this._pollVoters;
  set pollVoters(int? pollVoters) => _$this._pollVoters = pollVoters;

  GpollVotersDataBuilder() {
    GpollVotersData._initializeBuilder(this);
  }

  GpollVotersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pollVoters = $v.pollVoters;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpollVotersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpollVotersData;
  }

  @override
  void update(void Function(GpollVotersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GpollVotersData build() {
    final _$result = _$v ??
        new _$GpollVotersData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GpollVotersData', 'G__typename'),
            pollVoters: pollVoters);
    replace(_$result);
    return _$result;
  }
}

class _$GaddCandidateData extends GaddCandidateData {
  @override
  final String G__typename;
  @override
  final bool? addCandidate;

  factory _$GaddCandidateData(
          [void Function(GaddCandidateDataBuilder)? updates]) =>
      (new GaddCandidateDataBuilder()..update(updates)).build();

  _$GaddCandidateData._({required this.G__typename, this.addCandidate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GaddCandidateData', 'G__typename');
  }

  @override
  GaddCandidateData rebuild(void Function(GaddCandidateDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GaddCandidateDataBuilder toBuilder() =>
      new GaddCandidateDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GaddCandidateData &&
        G__typename == other.G__typename &&
        addCandidate == other.addCandidate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), addCandidate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GaddCandidateData')
          ..add('G__typename', G__typename)
          ..add('addCandidate', addCandidate))
        .toString();
  }
}

class GaddCandidateDataBuilder
    implements Builder<GaddCandidateData, GaddCandidateDataBuilder> {
  _$GaddCandidateData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _addCandidate;
  bool? get addCandidate => _$this._addCandidate;
  set addCandidate(bool? addCandidate) => _$this._addCandidate = addCandidate;

  GaddCandidateDataBuilder() {
    GaddCandidateData._initializeBuilder(this);
  }

  GaddCandidateDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addCandidate = $v.addCandidate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GaddCandidateData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GaddCandidateData;
  }

  @override
  void update(void Function(GaddCandidateDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GaddCandidateData build() {
    final _$result = _$v ??
        new _$GaddCandidateData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GaddCandidateData', 'G__typename'),
            addCandidate: addCandidate);
    replace(_$result);
    return _$result;
  }
}

class _$GvoteData extends GvoteData {
  @override
  final String G__typename;
  @override
  final GvoteData_vote? vote;

  factory _$GvoteData([void Function(GvoteDataBuilder)? updates]) =>
      (new GvoteDataBuilder()..update(updates)).build();

  _$GvoteData._({required this.G__typename, this.vote}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GvoteData', 'G__typename');
  }

  @override
  GvoteData rebuild(void Function(GvoteDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvoteDataBuilder toBuilder() => new GvoteDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvoteData &&
        G__typename == other.G__typename &&
        vote == other.vote;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), vote.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GvoteData')
          ..add('G__typename', G__typename)
          ..add('vote', vote))
        .toString();
  }
}

class GvoteDataBuilder implements Builder<GvoteData, GvoteDataBuilder> {
  _$GvoteData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GvoteData_voteBuilder? _vote;
  GvoteData_voteBuilder get vote =>
      _$this._vote ??= new GvoteData_voteBuilder();
  set vote(GvoteData_voteBuilder? vote) => _$this._vote = vote;

  GvoteDataBuilder() {
    GvoteData._initializeBuilder(this);
  }

  GvoteDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vote = $v.vote?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvoteData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvoteData;
  }

  @override
  void update(void Function(GvoteDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GvoteData build() {
    _$GvoteData _$result;
    try {
      _$result = _$v ??
          new _$GvoteData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GvoteData', 'G__typename'),
              vote: _vote?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vote';
        _vote?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GvoteData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GvoteData_vote extends GvoteData_vote {
  @override
  final String G__typename;
  @override
  final String G_id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int duration;
  @override
  final _i2.GDate createdAt;
  @override
  final _i2.GDate updatedAt;
  @override
  final BuiltList<GvoteData_vote_candidate>? candidate;

  factory _$GvoteData_vote([void Function(GvoteData_voteBuilder)? updates]) =>
      (new GvoteData_voteBuilder()..update(updates)).build();

  _$GvoteData_vote._(
      {required this.G__typename,
      required this.G_id,
      required this.title,
      required this.description,
      required this.duration,
      required this.createdAt,
      required this.updatedAt,
      this.candidate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GvoteData_vote', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(G_id, 'GvoteData_vote', 'G_id');
    BuiltValueNullFieldError.checkNotNull(title, 'GvoteData_vote', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, 'GvoteData_vote', 'description');
    BuiltValueNullFieldError.checkNotNull(
        duration, 'GvoteData_vote', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GvoteData_vote', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'GvoteData_vote', 'updatedAt');
  }

  @override
  GvoteData_vote rebuild(void Function(GvoteData_voteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvoteData_voteBuilder toBuilder() =>
      new GvoteData_voteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvoteData_vote &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        title == other.title &&
        description == other.description &&
        duration == other.duration &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        candidate == other.candidate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), G_id.hashCode),
                            title.hashCode),
                        description.hashCode),
                    duration.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        candidate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GvoteData_vote')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('title', title)
          ..add('description', description)
          ..add('duration', duration)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('candidate', candidate))
        .toString();
  }
}

class GvoteData_voteBuilder
    implements Builder<GvoteData_vote, GvoteData_voteBuilder> {
  _$GvoteData_vote? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  _i2.GDateBuilder? _createdAt;
  _i2.GDateBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateBuilder();
  set createdAt(_i2.GDateBuilder? createdAt) => _$this._createdAt = createdAt;

  _i2.GDateBuilder? _updatedAt;
  _i2.GDateBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GDateBuilder();
  set updatedAt(_i2.GDateBuilder? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<GvoteData_vote_candidate>? _candidate;
  ListBuilder<GvoteData_vote_candidate> get candidate =>
      _$this._candidate ??= new ListBuilder<GvoteData_vote_candidate>();
  set candidate(ListBuilder<GvoteData_vote_candidate>? candidate) =>
      _$this._candidate = candidate;

  GvoteData_voteBuilder() {
    GvoteData_vote._initializeBuilder(this);
  }

  GvoteData_voteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _G_id = $v.G_id;
      _title = $v.title;
      _description = $v.description;
      _duration = $v.duration;
      _createdAt = $v.createdAt.toBuilder();
      _updatedAt = $v.updatedAt.toBuilder();
      _candidate = $v.candidate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvoteData_vote other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvoteData_vote;
  }

  @override
  void update(void Function(GvoteData_voteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GvoteData_vote build() {
    _$GvoteData_vote _$result;
    try {
      _$result = _$v ??
          new _$GvoteData_vote._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GvoteData_vote', 'G__typename'),
              G_id: BuiltValueNullFieldError.checkNotNull(
                  G_id, 'GvoteData_vote', 'G_id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GvoteData_vote', 'title'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'GvoteData_vote', 'description'),
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, 'GvoteData_vote', 'duration'),
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build(),
              candidate: _candidate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();
        _$failedField = 'candidate';
        _candidate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GvoteData_vote', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GvoteData_vote_candidate extends GvoteData_vote_candidate {
  @override
  final String G_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final _i2.GRoleEnum role;
  @override
  final bool status;
  @override
  final String password;
  @override
  final String G__typename;
  @override
  final BuiltList<GvoteData_vote_candidate_voters>? voters;

  factory _$GvoteData_vote_candidate(
          [void Function(GvoteData_vote_candidateBuilder)? updates]) =>
      (new GvoteData_vote_candidateBuilder()..update(updates)).build();

  _$GvoteData_vote_candidate._(
      {required this.G_id,
      required this.username,
      required this.email,
      required this.role,
      required this.status,
      required this.password,
      required this.G__typename,
      this.voters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G_id, 'GvoteData_vote_candidate', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GvoteData_vote_candidate', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GvoteData_vote_candidate', 'email');
    BuiltValueNullFieldError.checkNotNull(
        role, 'GvoteData_vote_candidate', 'role');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GvoteData_vote_candidate', 'status');
    BuiltValueNullFieldError.checkNotNull(
        password, 'GvoteData_vote_candidate', 'password');
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GvoteData_vote_candidate', 'G__typename');
  }

  @override
  GvoteData_vote_candidate rebuild(
          void Function(GvoteData_vote_candidateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvoteData_vote_candidateBuilder toBuilder() =>
      new GvoteData_vote_candidateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvoteData_vote_candidate &&
        G_id == other.G_id &&
        username == other.username &&
        email == other.email &&
        role == other.role &&
        status == other.status &&
        password == other.password &&
        G__typename == other.G__typename &&
        voters == other.voters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G_id.hashCode), username.hashCode),
                            email.hashCode),
                        role.hashCode),
                    status.hashCode),
                password.hashCode),
            G__typename.hashCode),
        voters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GvoteData_vote_candidate')
          ..add('G_id', G_id)
          ..add('username', username)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status)
          ..add('password', password)
          ..add('G__typename', G__typename)
          ..add('voters', voters))
        .toString();
  }
}

class GvoteData_vote_candidateBuilder
    implements
        Builder<GvoteData_vote_candidate, GvoteData_vote_candidateBuilder> {
  _$GvoteData_vote_candidate? _$v;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GRoleEnum? _role;
  _i2.GRoleEnum? get role => _$this._role;
  set role(_i2.GRoleEnum? role) => _$this._role = role;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GvoteData_vote_candidate_voters>? _voters;
  ListBuilder<GvoteData_vote_candidate_voters> get voters =>
      _$this._voters ??= new ListBuilder<GvoteData_vote_candidate_voters>();
  set voters(ListBuilder<GvoteData_vote_candidate_voters>? voters) =>
      _$this._voters = voters;

  GvoteData_vote_candidateBuilder() {
    GvoteData_vote_candidate._initializeBuilder(this);
  }

  GvoteData_vote_candidateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G_id = $v.G_id;
      _username = $v.username;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _password = $v.password;
      _G__typename = $v.G__typename;
      _voters = $v.voters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvoteData_vote_candidate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvoteData_vote_candidate;
  }

  @override
  void update(void Function(GvoteData_vote_candidateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GvoteData_vote_candidate build() {
    _$GvoteData_vote_candidate _$result;
    try {
      _$result = _$v ??
          new _$GvoteData_vote_candidate._(
              G_id: BuiltValueNullFieldError.checkNotNull(
                  G_id, 'GvoteData_vote_candidate', 'G_id'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GvoteData_vote_candidate', 'username'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'GvoteData_vote_candidate', 'email'),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, 'GvoteData_vote_candidate', 'role'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'GvoteData_vote_candidate', 'status'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, 'GvoteData_vote_candidate', 'password'),
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GvoteData_vote_candidate', 'G__typename'),
              voters: _voters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'voters';
        _voters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GvoteData_vote_candidate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GvoteData_vote_candidate_voters
    extends GvoteData_vote_candidate_voters {
  @override
  final String G_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final _i2.GRoleEnum role;
  @override
  final bool status;
  @override
  final String password;
  @override
  final String G__typename;

  factory _$GvoteData_vote_candidate_voters(
          [void Function(GvoteData_vote_candidate_votersBuilder)? updates]) =>
      (new GvoteData_vote_candidate_votersBuilder()..update(updates)).build();

  _$GvoteData_vote_candidate_voters._(
      {required this.G_id,
      required this.username,
      required this.email,
      required this.role,
      required this.status,
      required this.password,
      required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G_id, 'GvoteData_vote_candidate_voters', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GvoteData_vote_candidate_voters', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GvoteData_vote_candidate_voters', 'email');
    BuiltValueNullFieldError.checkNotNull(
        role, 'GvoteData_vote_candidate_voters', 'role');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GvoteData_vote_candidate_voters', 'status');
    BuiltValueNullFieldError.checkNotNull(
        password, 'GvoteData_vote_candidate_voters', 'password');
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GvoteData_vote_candidate_voters', 'G__typename');
  }

  @override
  GvoteData_vote_candidate_voters rebuild(
          void Function(GvoteData_vote_candidate_votersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GvoteData_vote_candidate_votersBuilder toBuilder() =>
      new GvoteData_vote_candidate_votersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GvoteData_vote_candidate_voters &&
        G_id == other.G_id &&
        username == other.username &&
        email == other.email &&
        role == other.role &&
        status == other.status &&
        password == other.password &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G_id.hashCode), username.hashCode),
                        email.hashCode),
                    role.hashCode),
                status.hashCode),
            password.hashCode),
        G__typename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GvoteData_vote_candidate_voters')
          ..add('G_id', G_id)
          ..add('username', username)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status)
          ..add('password', password)
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GvoteData_vote_candidate_votersBuilder
    implements
        Builder<GvoteData_vote_candidate_voters,
            GvoteData_vote_candidate_votersBuilder> {
  _$GvoteData_vote_candidate_voters? _$v;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GRoleEnum? _role;
  _i2.GRoleEnum? get role => _$this._role;
  set role(_i2.GRoleEnum? role) => _$this._role = role;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GvoteData_vote_candidate_votersBuilder() {
    GvoteData_vote_candidate_voters._initializeBuilder(this);
  }

  GvoteData_vote_candidate_votersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G_id = $v.G_id;
      _username = $v.username;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _password = $v.password;
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GvoteData_vote_candidate_voters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GvoteData_vote_candidate_voters;
  }

  @override
  void update(void Function(GvoteData_vote_candidate_votersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GvoteData_vote_candidate_voters build() {
    final _$result = _$v ??
        new _$GvoteData_vote_candidate_voters._(
            G_id: BuiltValueNullFieldError.checkNotNull(
                G_id, 'GvoteData_vote_candidate_voters', 'G_id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GvoteData_vote_candidate_voters', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GvoteData_vote_candidate_voters', 'email'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, 'GvoteData_vote_candidate_voters', 'role'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GvoteData_vote_candidate_voters', 'status'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GvoteData_vote_candidate_voters', 'password'),
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GvoteData_vote_candidate_voters', 'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GregisterData extends GregisterData {
  @override
  final String G__typename;
  @override
  final GregisterData_register? register;

  factory _$GregisterData([void Function(GregisterDataBuilder)? updates]) =>
      (new GregisterDataBuilder()..update(updates)).build();

  _$GregisterData._({required this.G__typename, this.register}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GregisterData', 'G__typename');
  }

  @override
  GregisterData rebuild(void Function(GregisterDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregisterDataBuilder toBuilder() => new GregisterDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregisterData &&
        G__typename == other.G__typename &&
        register == other.register;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), register.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GregisterData')
          ..add('G__typename', G__typename)
          ..add('register', register))
        .toString();
  }
}

class GregisterDataBuilder
    implements Builder<GregisterData, GregisterDataBuilder> {
  _$GregisterData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GregisterData_registerBuilder? _register;
  GregisterData_registerBuilder get register =>
      _$this._register ??= new GregisterData_registerBuilder();
  set register(GregisterData_registerBuilder? register) =>
      _$this._register = register;

  GregisterDataBuilder() {
    GregisterData._initializeBuilder(this);
  }

  GregisterDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _register = $v.register?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GregisterData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregisterData;
  }

  @override
  void update(void Function(GregisterDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GregisterData build() {
    _$GregisterData _$result;
    try {
      _$result = _$v ??
          new _$GregisterData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GregisterData', 'G__typename'),
              register: _register?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'register';
        _register?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GregisterData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GregisterData_register extends GregisterData_register {
  @override
  final String G_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;
  @override
  final bool status;
  @override
  final _i2.GRoleEnum role;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String G__typename;
  @override
  final BuiltList<GregisterData_register_voters>? voters;

  factory _$GregisterData_register(
          [void Function(GregisterData_registerBuilder)? updates]) =>
      (new GregisterData_registerBuilder()..update(updates)).build();

  _$GregisterData_register._(
      {required this.G_id,
      required this.username,
      required this.email,
      required this.password,
      required this.status,
      required this.role,
      required this.createdAt,
      required this.updatedAt,
      required this.G__typename,
      this.voters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G_id, 'GregisterData_register', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GregisterData_register', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GregisterData_register', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, 'GregisterData_register', 'password');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GregisterData_register', 'status');
    BuiltValueNullFieldError.checkNotNull(
        role, 'GregisterData_register', 'role');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GregisterData_register', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'GregisterData_register', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GregisterData_register', 'G__typename');
  }

  @override
  GregisterData_register rebuild(
          void Function(GregisterData_registerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregisterData_registerBuilder toBuilder() =>
      new GregisterData_registerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregisterData_register &&
        G_id == other.G_id &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        status == other.status &&
        role == other.role &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        G__typename == other.G__typename &&
        voters == other.voters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G_id.hashCode),
                                        username.hashCode),
                                    email.hashCode),
                                password.hashCode),
                            status.hashCode),
                        role.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            G__typename.hashCode),
        voters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GregisterData_register')
          ..add('G_id', G_id)
          ..add('username', username)
          ..add('email', email)
          ..add('password', password)
          ..add('status', status)
          ..add('role', role)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('G__typename', G__typename)
          ..add('voters', voters))
        .toString();
  }
}

class GregisterData_registerBuilder
    implements Builder<GregisterData_register, GregisterData_registerBuilder> {
  _$GregisterData_register? _$v;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  _i2.GRoleEnum? _role;
  _i2.GRoleEnum? get role => _$this._role;
  set role(_i2.GRoleEnum? role) => _$this._role = role;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GregisterData_register_voters>? _voters;
  ListBuilder<GregisterData_register_voters> get voters =>
      _$this._voters ??= new ListBuilder<GregisterData_register_voters>();
  set voters(ListBuilder<GregisterData_register_voters>? voters) =>
      _$this._voters = voters;

  GregisterData_registerBuilder() {
    GregisterData_register._initializeBuilder(this);
  }

  GregisterData_registerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G_id = $v.G_id;
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _status = $v.status;
      _role = $v.role;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _G__typename = $v.G__typename;
      _voters = $v.voters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GregisterData_register other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregisterData_register;
  }

  @override
  void update(void Function(GregisterData_registerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GregisterData_register build() {
    _$GregisterData_register _$result;
    try {
      _$result = _$v ??
          new _$GregisterData_register._(
              G_id: BuiltValueNullFieldError.checkNotNull(
                  G_id, 'GregisterData_register', 'G_id'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GregisterData_register', 'username'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'GregisterData_register', 'email'),
              password: BuiltValueNullFieldError.checkNotNull(
                  password, 'GregisterData_register', 'password'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'GregisterData_register', 'status'),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, 'GregisterData_register', 'role'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'GregisterData_register', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, 'GregisterData_register', 'updatedAt'),
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GregisterData_register', 'G__typename'),
              voters: _voters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'voters';
        _voters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GregisterData_register', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GregisterData_register_voters extends GregisterData_register_voters {
  @override
  final String G__typename;
  @override
  final String G_id;
  @override
  final String username;
  @override
  final String email;
  @override
  final _i2.GRoleEnum role;
  @override
  final bool status;

  factory _$GregisterData_register_voters(
          [void Function(GregisterData_register_votersBuilder)? updates]) =>
      (new GregisterData_register_votersBuilder()..update(updates)).build();

  _$GregisterData_register_voters._(
      {required this.G__typename,
      required this.G_id,
      required this.username,
      required this.email,
      required this.role,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GregisterData_register_voters', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        G_id, 'GregisterData_register_voters', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GregisterData_register_voters', 'username');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GregisterData_register_voters', 'email');
    BuiltValueNullFieldError.checkNotNull(
        role, 'GregisterData_register_voters', 'role');
    BuiltValueNullFieldError.checkNotNull(
        status, 'GregisterData_register_voters', 'status');
  }

  @override
  GregisterData_register_voters rebuild(
          void Function(GregisterData_register_votersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregisterData_register_votersBuilder toBuilder() =>
      new GregisterData_register_votersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregisterData_register_voters &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        username == other.username &&
        email == other.email &&
        role == other.role &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), G_id.hashCode),
                    username.hashCode),
                email.hashCode),
            role.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GregisterData_register_voters')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('username', username)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status))
        .toString();
  }
}

class GregisterData_register_votersBuilder
    implements
        Builder<GregisterData_register_voters,
            GregisterData_register_votersBuilder> {
  _$GregisterData_register_voters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GRoleEnum? _role;
  _i2.GRoleEnum? get role => _$this._role;
  set role(_i2.GRoleEnum? role) => _$this._role = role;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  GregisterData_register_votersBuilder() {
    GregisterData_register_voters._initializeBuilder(this);
  }

  GregisterData_register_votersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _G_id = $v.G_id;
      _username = $v.username;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GregisterData_register_voters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregisterData_register_voters;
  }

  @override
  void update(void Function(GregisterData_register_votersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GregisterData_register_voters build() {
    final _$result = _$v ??
        new _$GregisterData_register_voters._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GregisterData_register_voters', 'G__typename'),
            G_id: BuiltValueNullFieldError.checkNotNull(
                G_id, 'GregisterData_register_voters', 'G_id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GregisterData_register_voters', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GregisterData_register_voters', 'email'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, 'GregisterData_register_voters', 'role'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'GregisterData_register_voters', 'status'));
    replace(_$result);
    return _$result;
  }
}

class _$GloginData extends GloginData {
  @override
  final String G__typename;
  @override
  final GloginData_login? login;

  factory _$GloginData([void Function(GloginDataBuilder)? updates]) =>
      (new GloginDataBuilder()..update(updates)).build();

  _$GloginData._({required this.G__typename, this.login}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GloginData', 'G__typename');
  }

  @override
  GloginData rebuild(void Function(GloginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloginDataBuilder toBuilder() => new GloginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloginData &&
        G__typename == other.G__typename &&
        login == other.login;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), login.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GloginData')
          ..add('G__typename', G__typename)
          ..add('login', login))
        .toString();
  }
}

class GloginDataBuilder implements Builder<GloginData, GloginDataBuilder> {
  _$GloginData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GloginData_loginBuilder? _login;
  GloginData_loginBuilder get login =>
      _$this._login ??= new GloginData_loginBuilder();
  set login(GloginData_loginBuilder? login) => _$this._login = login;

  GloginDataBuilder() {
    GloginData._initializeBuilder(this);
  }

  GloginDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloginData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloginData;
  }

  @override
  void update(void Function(GloginDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GloginData build() {
    _$GloginData _$result;
    try {
      _$result = _$v ??
          new _$GloginData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GloginData', 'G__typename'),
              login: _login?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'login';
        _login?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GloginData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GloginData_login extends GloginData_login {
  @override
  final String G__typename;
  @override
  final String token;

  factory _$GloginData_login(
          [void Function(GloginData_loginBuilder)? updates]) =>
      (new GloginData_loginBuilder()..update(updates)).build();

  _$GloginData_login._({required this.G__typename, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GloginData_login', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(token, 'GloginData_login', 'token');
  }

  @override
  GloginData_login rebuild(void Function(GloginData_loginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloginData_loginBuilder toBuilder() =>
      new GloginData_loginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloginData_login &&
        G__typename == other.G__typename &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GloginData_login')
          ..add('G__typename', G__typename)
          ..add('token', token))
        .toString();
  }
}

class GloginData_loginBuilder
    implements Builder<GloginData_login, GloginData_loginBuilder> {
  _$GloginData_login? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GloginData_loginBuilder() {
    GloginData_login._initializeBuilder(this);
  }

  GloginData_loginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloginData_login other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloginData_login;
  }

  @override
  void update(void Function(GloginData_loginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GloginData_login build() {
    final _$result = _$v ??
        new _$GloginData_login._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GloginData_login', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GloginData_login', 'token'));
    replace(_$result);
    return _$result;
  }
}

class _$GdeletePollData extends GdeletePollData {
  @override
  final String G__typename;
  @override
  final bool? deletePoll;

  factory _$GdeletePollData([void Function(GdeletePollDataBuilder)? updates]) =>
      (new GdeletePollDataBuilder()..update(updates)).build();

  _$GdeletePollData._({required this.G__typename, this.deletePoll})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GdeletePollData', 'G__typename');
  }

  @override
  GdeletePollData rebuild(void Function(GdeletePollDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeletePollDataBuilder toBuilder() =>
      new GdeletePollDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeletePollData &&
        G__typename == other.G__typename &&
        deletePoll == other.deletePoll;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), deletePoll.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GdeletePollData')
          ..add('G__typename', G__typename)
          ..add('deletePoll', deletePoll))
        .toString();
  }
}

class GdeletePollDataBuilder
    implements Builder<GdeletePollData, GdeletePollDataBuilder> {
  _$GdeletePollData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deletePoll;
  bool? get deletePoll => _$this._deletePoll;
  set deletePoll(bool? deletePoll) => _$this._deletePoll = deletePoll;

  GdeletePollDataBuilder() {
    GdeletePollData._initializeBuilder(this);
  }

  GdeletePollDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deletePoll = $v.deletePoll;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeletePollData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeletePollData;
  }

  @override
  void update(void Function(GdeletePollDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GdeletePollData build() {
    final _$result = _$v ??
        new _$GdeletePollData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GdeletePollData', 'G__typename'),
            deletePoll: deletePoll);
    replace(_$result);
    return _$result;
  }
}

class _$GcreatePollData extends GcreatePollData {
  @override
  final String G__typename;
  @override
  final GcreatePollData_createPoll? createPoll;

  factory _$GcreatePollData([void Function(GcreatePollDataBuilder)? updates]) =>
      (new GcreatePollDataBuilder()..update(updates)).build();

  _$GcreatePollData._({required this.G__typename, this.createPoll})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GcreatePollData', 'G__typename');
  }

  @override
  GcreatePollData rebuild(void Function(GcreatePollDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreatePollDataBuilder toBuilder() =>
      new GcreatePollDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreatePollData &&
        G__typename == other.G__typename &&
        createPoll == other.createPoll;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createPoll.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcreatePollData')
          ..add('G__typename', G__typename)
          ..add('createPoll', createPoll))
        .toString();
  }
}

class GcreatePollDataBuilder
    implements Builder<GcreatePollData, GcreatePollDataBuilder> {
  _$GcreatePollData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GcreatePollData_createPollBuilder? _createPoll;
  GcreatePollData_createPollBuilder get createPoll =>
      _$this._createPoll ??= new GcreatePollData_createPollBuilder();
  set createPoll(GcreatePollData_createPollBuilder? createPoll) =>
      _$this._createPoll = createPoll;

  GcreatePollDataBuilder() {
    GcreatePollData._initializeBuilder(this);
  }

  GcreatePollDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createPoll = $v.createPoll?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreatePollData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreatePollData;
  }

  @override
  void update(void Function(GcreatePollDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcreatePollData build() {
    _$GcreatePollData _$result;
    try {
      _$result = _$v ??
          new _$GcreatePollData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GcreatePollData', 'G__typename'),
              createPoll: _createPoll?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createPoll';
        _createPoll?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GcreatePollData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreatePollData_createPoll extends GcreatePollData_createPoll {
  @override
  final String G_id;
  @override
  final String title;
  @override
  final int duration;
  @override
  final String description;
  @override
  final _i2.GDate createdAt;
  @override
  final _i2.GDate updatedAt;
  @override
  final String G__typename;

  factory _$GcreatePollData_createPoll(
          [void Function(GcreatePollData_createPollBuilder)? updates]) =>
      (new GcreatePollData_createPollBuilder()..update(updates)).build();

  _$GcreatePollData_createPoll._(
      {required this.G_id,
      required this.title,
      required this.duration,
      required this.description,
      required this.createdAt,
      required this.updatedAt,
      required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G_id, 'GcreatePollData_createPoll', 'G_id');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GcreatePollData_createPoll', 'title');
    BuiltValueNullFieldError.checkNotNull(
        duration, 'GcreatePollData_createPoll', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        description, 'GcreatePollData_createPoll', 'description');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GcreatePollData_createPoll', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'GcreatePollData_createPoll', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GcreatePollData_createPoll', 'G__typename');
  }

  @override
  GcreatePollData_createPoll rebuild(
          void Function(GcreatePollData_createPollBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreatePollData_createPollBuilder toBuilder() =>
      new GcreatePollData_createPollBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreatePollData_createPoll &&
        G_id == other.G_id &&
        title == other.title &&
        duration == other.duration &&
        description == other.description &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G_id.hashCode), title.hashCode),
                        duration.hashCode),
                    description.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        G__typename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GcreatePollData_createPoll')
          ..add('G_id', G_id)
          ..add('title', title)
          ..add('duration', duration)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GcreatePollData_createPollBuilder
    implements
        Builder<GcreatePollData_createPoll, GcreatePollData_createPollBuilder> {
  _$GcreatePollData_createPoll? _$v;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.GDateBuilder? _createdAt;
  _i2.GDateBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateBuilder();
  set createdAt(_i2.GDateBuilder? createdAt) => _$this._createdAt = createdAt;

  _i2.GDateBuilder? _updatedAt;
  _i2.GDateBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GDateBuilder();
  set updatedAt(_i2.GDateBuilder? updatedAt) => _$this._updatedAt = updatedAt;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GcreatePollData_createPollBuilder() {
    GcreatePollData_createPoll._initializeBuilder(this);
  }

  GcreatePollData_createPollBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G_id = $v.G_id;
      _title = $v.title;
      _duration = $v.duration;
      _description = $v.description;
      _createdAt = $v.createdAt.toBuilder();
      _updatedAt = $v.updatedAt.toBuilder();
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreatePollData_createPoll other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreatePollData_createPoll;
  }

  @override
  void update(void Function(GcreatePollData_createPollBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GcreatePollData_createPoll build() {
    _$GcreatePollData_createPoll _$result;
    try {
      _$result = _$v ??
          new _$GcreatePollData_createPoll._(
              G_id: BuiltValueNullFieldError.checkNotNull(
                  G_id, 'GcreatePollData_createPoll', 'G_id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GcreatePollData_createPoll', 'title'),
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, 'GcreatePollData_createPoll', 'duration'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'GcreatePollData_createPoll', 'description'),
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build(),
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GcreatePollData_createPoll', 'G__typename'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GcreatePollData_createPoll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
