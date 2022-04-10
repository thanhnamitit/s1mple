import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../const.dart';
import '../model/answer.dart';

@injectable
class ObserveToAnswersUseCase {
  FirebaseFirestore firestore;

  ObserveToAnswersUseCase(this.firestore);

  Stream<List<Answer>> call(String questionId) {
    return firestore
        .collection(Const.questions)
        .doc(questionId)
        .collection(Const.answers)
        .orderBy('dateTime', descending: true)
        .snapshots()
        .map((e) => e.docs
            .map((doc) => Answer.fromJson(doc.data()).copyWith(id: doc.id))
            .toList());
  }
}
