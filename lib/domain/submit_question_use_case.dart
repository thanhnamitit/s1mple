import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../model/question.dart';
import '../model/user.dart';

@injectable
class SubmitQuestionUseCase {
  FirebaseFirestore firestore;

  SubmitQuestionUseCase(this.firestore);

  Future<Question> call({
    required User user,
    required String title,
    required String content,
    required List<String> paths,
    required bool isAnonymous,
  }) async {
    await Future.delayed(Duration(seconds: 3));
    return Question(
      title: title,
      content: content,
      votes: 0,
      answers: 0,
      views: 0,
      user: user,
      dateTime: DateTime.now(),
    );
  }
}
