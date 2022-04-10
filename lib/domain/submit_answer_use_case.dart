import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hackathon_s1mple/const.dart';
import 'package:injectable/injectable.dart';

import '../model/answer.dart';
import '../model/user.dart';

@injectable
class SubmitAnswerUseCase {
  FirebaseFirestore firestore;

  SubmitAnswerUseCase(this.firestore);

  Future<Answer> call({
    required User user,
    required String content,
    required String questionId,
  }) async {
    final answer = Answer(
      user: user,
      content: content,
      dateTime: DateTime.now(),
    );
    final questionRef = firestore.collection(Const.questions).doc(questionId);
    await firestore.runTransaction((transaction) async {
      final count =
          await transaction.get(questionRef).then((e) => e.data()!['answers']);
      transaction.update(questionRef, {'answers': count + 1});
    });
    final ref =
        await questionRef.collection(Const.answers).add(answer.toJson());
    return answer.copyWith(id: ref.id);
  }
}
