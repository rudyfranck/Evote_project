
import 'package:evote_client/polls_client.dart';

void main(List<String> arguments) {
  final client = initClient('http://192.168.0.100:3000/graphql');

  final pollReq = GFetchPollReq();

  client.request(pollReq).listen((response) {
    print(response.data!.polls);
  });
}