import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../const.dart';
import '../model/answer.dart';
import 'base_update_voted_use_case.dart';

@injectable
class UpdateCommentVotedUseCase extends BaseUpdateVotedUseCase {
  UpdateCommentVotedUseCase(FirebaseFirestore firestore) : super(firestore);

  Future<Answer> call({
    required VoteType type,
    required Answer answer,
    required String questionId,
    required String userId,
  }) async {
    final questionRef = firestore
        .collection(Const.questions)
        .doc(questionId)
        .collection(Const.answers)
        .doc(answer.id!);
    final entry = await update(ref: questionRef, type: type, userId: userId);
    return answer.copyWith(voted: entry.key, devoted: entry.value);
  }
}
