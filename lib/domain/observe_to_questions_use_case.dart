import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../const.dart';
import '../model/question.dart';

@injectable
class ObserveToQuestionsUseCase {
  FirebaseFirestore firestore;

  ObserveToQuestionsUseCase(this.firestore);

  Stream<List<Question>> call() {
    return firestore
        .collection(Const.questions)
        .orderBy('dateTime', descending: true)
        .snapshots()
        .map((e) {
      return e.docs.map((doc) {
        return Question.fromJson(doc.data()).copyWith(id: doc.id);
      }).toList();
    });
  }
}
