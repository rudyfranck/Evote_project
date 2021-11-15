import 'package:evote_app/common/theme_helper.dart';
import 'package:evote_client/graphql/poll.data.gql.dart';
import 'package:evote_client/polls_client.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:localstorage/localstorage.dart';

class CandidateList extends StatelessWidget {

  final GFetchPollData_polls_candidate pollCandidate;
  final GFetchPollData_polls poll;
  final LocalStorage storage =  new LocalStorage('Auth');

  CandidateList({Key? key, required this.pollCandidate,required this.poll}): super (key: key);



  @override
  Widget build(BuildContext context) {
    void vote (BuildContext context){
      final client = GetIt.instance<Client>();
      final vote = GvoteReq((b){
        String token = storage.getItem('Token');
        Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
        return b
          ..vars.poll_id = poll.G_id
          ..vars.candidate_id = pollCandidate.G_id
          ..vars.user_id = decodedToken["subject"];
      });
      client.request(vote).listen((response) {
        final data = response.data!.vote;
        final errors = response.graphqlErrors;
        if(data != null ){
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return ThemeHelper().alartDialog(
                  'You have vote  for',
                  pollCandidate.username, context);
            },
          );
        }else{
          for (var index = 0; index < errors!.length; index++) {
            ScaffoldMessenger.of(context).showSnackBar( SnackBar(
              backgroundColor: Colors.red,
              content: Text(errors[index].message,
                style: const TextStyle(
                    color: Colors.black87
                ),
              ),
            ));
          }
        }
      });
    }
    return
      Column(
      children: [
        Card(
          color: Colors.grey[300],
          elevation: 8.0,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            // height: 200,
            // width: 350,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: SvgPicture.network(
                              "https://avatars.dicebear.com/api/male/" +pollCandidate.username+ ".svg?",
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height * 0.6,),
                        ),
                        Flexible(child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              width: 150,
                              color: Colors.black54,
                              height: 2,
                            ),
                            const SizedBox(height: 4),
                            Text(pollCandidate.email,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Text('Nizhny Novgorod'),
                            const Text('Russia'),
                          ],
                        )
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(pollCandidate.username,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                             Text(poll.title)
                          ],
                        ),
                        const SizedBox(width: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    "VOTE".toUpperCase(),
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  vote(context);

                                },
                              ),
                            ),
                            // TextButton(
                            //
                            //   child: const Text('VOTE',
                            //     style: TextStyle(
                            //         color: Colors.purple
                            //     ),
                            //   ),
                            //   onPressed: ()  {
                            //       vote(context);
                            //     }
                            //
                            // ),
                            const SizedBox(width: 8),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: 1,
          color: Colors.grey.shade200,
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}

class ReconnectingOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularProgressIndicator(),
        SizedBox(height: 12),
        Text(
          'Reconnecting...',
        ),
      ],
    ),
  );
}