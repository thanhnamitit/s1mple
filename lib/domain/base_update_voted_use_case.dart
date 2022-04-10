import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

enum VoteType { up, down }

@injectable
class BaseUpdateVotedUseCase {
  FirebaseFirestore firestore;

  BaseUpdateVotedUseCase(this.firestore);

  Future<MapEntry<List<String>, List<String>>> update({
    required DocumentReference<Map<String, dynamic>> ref,
    required VoteType type,
    required String userId,
  }) async {
    return await firestore.runTransaction((transaction) async {
      final json = await transaction.get(ref);
      final data = json.data()!;
      final voted = <String>[
        ...data['voted'].map((e) => e.toString()).toList()
      ];
      final devoted = <String>[
        ...data['devoted'].map((e) => e.toString()).toList()
      ];
      if (type == VoteType.up) {
        voted.contains(userId) ? voted.remove(userId) : voted.add(userId);
        if (devoted.contains(userId)) {
          devoted.remove(userId);
        }
      } else {
        devoted.contains(userId) ? devoted.remove(userId) : devoted.add(userId);
        if (voted.contains(userId)) {
          voted.remove(userId);
        }
      }
      transaction.update(ref, {
        'voted': voted,
        'devoted': devoted,
      });
      return MapEntry(voted, devoted);
    });
  }
}
