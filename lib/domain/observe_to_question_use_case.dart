import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../const.dart';
import '../model/question.dart';

@injectable
class ObserveToQuestionUseCase {
  FirebaseFirestore firestore;

  ObserveToQuestionUseCase(this.firestore);

  Stream<Question> call(String id) {
    return firestore
        .collection(Const.questions)
        .doc(id)
        .snapshots()
        .map((doc) => Question.fromJson(doc.data()!).copyWith(id: doc.id));
  }
}
