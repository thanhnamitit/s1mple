import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_s1mple/model/user.dart';
import 'package:injectable/injectable.dart';

import '../model/answer.dart';
import '../model/reply.dart';

@injectable
class ObserveToAnswersUseCase {
  FirebaseFirestore firestore;

  ObserveToAnswersUseCase(this.firestore);

  Stream<List<Answer>> call() async* {
    final user = User(
      id: '123',
      name: 'Do Thanh Nam',
      avatar: 'https://thanhnamitit.xyz/conversation/navi_team_avatar.png',
      role: Role.patient,
    );

    final reply = Reply(
      content: 'Mình cũng doán thế',
      user: user,
      dateTime: DateTime.now(),
    );

    final answer = Answer(
      id: '1324',
      content: 'Chắc bạn bị trĩ',
      votes: 1,
      user: user,
      dateTime: DateTime.now(),
      replies: [
        reply,
        reply,
        reply,
        reply,
      ],
    );

    yield [answer, answer];
  }
}
