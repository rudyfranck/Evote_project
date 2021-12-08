import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:evote_client/graphql/poll.data.gql.dart'
    show
        GFecthUserData,
        GFecthUserData_user,
        GFecthUsersData,
        GFecthUsersData_users,
        GFecthUsersData_users_voters,
        GFetchPollData,
        GFetchPollData_polls,
        GFetchPollData_polls_candidate,
        GFetchPollData_polls_candidate_voters,
        GaddCandidateData,
        GcreatePollData,
        GcreatePollData_createPoll,
        GdeletePollData,
        GloginData,
        GloginData_login,
        GpollVotersData,
        GregisterData,
        GregisterData_register,
        GregisterData_register_voters,
        GvoteData,
        GvoteData_vote,
        GvoteData_vote_candidate,
        GvoteData_vote_candidate_voters;
import 'package:evote_client/graphql/poll.req.gql.dart'
    show
        GFecthUserReq,
        GFecthUsersReq,
        GFetchPollReq,
        GaddCandidateReq,
        GcreatePollReq,
        GdeletePollReq,
        GloginReq,
        GpollVotersReq,
        GregisterReq,
        GvoteReq;
import 'package:evote_client/graphql/poll.var.gql.dart'
    show
        GFecthUserVars,
        GFecthUsersVars,
        GFetchPollVars,
        GaddCandidateVars,
        GcreatePollVars,
        GdeletePollVars,
        GloginVars,
        GpollVotersVars,
        GregisterVars,
        GvoteVars;
import 'package:evote_client/graphql/schema.schema.gql.dart'
    show
        GCreatePollInput,
        GCreateUserInput,
        GDate,
        GLoginUserInput,
        GRoleEnum,
        GUpdatePollInput,
        GUpdateUserInput;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreatePollInput,
  GCreateUserInput,
  GDate,
  GFecthUserData,
  GFecthUserData_user,
  GFecthUserReq,
  GFecthUserVars,
  GFecthUsersData,
  GFecthUsersData_users,
  GFecthUsersData_users_voters,
  GFecthUsersReq,
  GFecthUsersVars,
  GFetchPollData,
  GFetchPollData_polls,
  GFetchPollData_polls_candidate,
  GFetchPollData_polls_candidate_voters,
  GFetchPollReq,
  GFetchPollVars,
  GLoginUserInput,
  GRoleEnum,
  GUpdatePollInput,
  GUpdateUserInput,
  GaddCandidateData,
  GaddCandidateReq,
  GaddCandidateVars,
  GcreatePollData,
  GcreatePollData_createPoll,
  GcreatePollReq,
  GcreatePollVars,
  GdeletePollData,
  GdeletePollReq,
  GdeletePollVars,
  GloginData,
  GloginData_login,
  GloginReq,
  GloginVars,
  GpollVotersData,
  GpollVotersReq,
  GpollVotersVars,
  GregisterData,
  GregisterData_register,
  GregisterData_register_voters,
  GregisterReq,
  GregisterVars,
  GvoteData,
  GvoteData_vote,
  GvoteData_vote_candidate,
  GvoteData_vote_candidate_voters,
  GvoteReq,
  GvoteVars
])
final Serializers serializers = _serializersBuilder.build();
