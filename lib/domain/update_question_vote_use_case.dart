import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../const.dart';
import '../model/question.dart';
import 'base_update_voted_use_case.dart';

@injectable
class UpdateQuestionVoteUseCase extends BaseUpdateVotedUseCase {
  UpdateQuestionVoteUseCase(FirebaseFirestore firestore) : super(firestore);

  Future<Question> call({
    required VoteType type,
    required String userId,
    required Question question,
  }) async {
    final questionRef = firestore.collection(Const.questions).doc(question.id!);
    final entry = await update(ref: questionRef, type: type, userId: userId);
    return question.copyWith(voted: entry.key, devoted: entry.value);
  }
}
