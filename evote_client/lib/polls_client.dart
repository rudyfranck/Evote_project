import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

export 'graphql/poll.req.gql.dart';
export 'graphql/poll.var.gql.dart';
export 'graphql/poll.data.gql.dart';
export 'graphql/schema.schema.gql.dart';


Client initClient(String uri) {
  final link = HttpLink(uri);
  final cache = Cache();
  final client = Client(link: link, cache: cache);
  return client;
}