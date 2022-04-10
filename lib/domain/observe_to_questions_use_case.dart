import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../model/question.dart';
import '../model/user.dart';

@injectable
class ObserveToQuestionsUseCase {
  FirebaseFirestore firestore;

  ObserveToQuestionsUseCase(this.firestore);

  Stream<List<Question>> call() async* {
    await Future.delayed(Duration(seconds: 1));
    final tags = () {
      final results = [
        'Sức khoẻ',
        'Da liễu',
        'Buồn',
        'Không vui',
        'Trĩ',
        'Tâm thần',
        'Đau',
        'Răng',
        'Miệng',
        'Thần kinh',
        'Hô hấp',
        'Ngoại khoa',
      ];
      results.shuffle();
      return results.take(Random().nextInt(3)).toList();
    };
    final user = User(
      id: '123',
      name: 'Do Thanh Nam',
      avatar: 'https://thanhnamitit.xyz/conversation/navi_team_avatar.png',
      role: Role.patient,
    );
    final content = '''
I'm looking every where on the web (dart website, stackoverflow, forums, etc), and I can't find my answer.

So there is my problem: I need to write a function, that print a random sort of a list, witch is provided as an argument. : In dart as well.

I try with maps, with Sets, with list ... I try the method with assert, with sort, I look at random method with Math on dart librabry ... nothing can do what I wana do.

Can some one help me with this?''';
    yield <Question>[
      Question(
        title:
            'The plugin path_provider_android doesnt have a main class defined',
        votes: 10,
        answers: 10,
        content: content,
        views: 10,
        user: user,
        dateTime: DateTime.now(),
        tags: tags(),
      ),
      Question(
        title:
            'How to take images from front and back camera simultaneously using cameraX time in android?',
        votes: 10,
        answers: 10,
        views: 10,
        tags: tags(),
        content: content,
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'The plugin path_provider_android doesnt have a main class defined',
        votes: 10,
        tags: tags(),
        answers: 10,
        content: content,
        views: 10,
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'How to take images from front and back camera simultaneously using cameraX time in android?',
        votes: 10,
        answers: 10,
        content: content,
        views: 10,
        tags: tags(),
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'The plugin path_provider_android doesnt have a main class defined',
        votes: 10,
        answers: 10,
        tags: tags(),
        views: 10,
        content: content,
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'How to take images from front and back camera simultaneously using cameraX time in android?',
        votes: 10,
        answers: 10,
        tags: tags(),
        content: content,
        views: 10,
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'The plugin path_provider_android doesnt have a main class defined',
        votes: 10,
        answers: 10,
        views: 10,
        content: content,
        tags: tags(),
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'How to take images from front and back camera simultaneously using cameraX time in android?',
        votes: 10,
        content: content,
        answers: 10,
        tags: tags(),
        views: 10,
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'The plugin path_provider_android doesnt have a main class defined',
        votes: 10,
        answers: 10,
        content: content,
        views: 10,
        tags: tags(),
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'How to take images from front and back camera simultaneously using cameraX time in android?',
        votes: 10,
        answers: 10,
        tags: tags(),
        views: 10,
        content: content,
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'The plugin path_provider_android doesnt have a main class defined',
        votes: 10,
        answers: 10,
        tags: tags(),
        views: 10,
        content: content,
        user: user,
        dateTime: DateTime.now(),
      ),
      Question(
        title:
            'How to take images from front and back camera simultaneously using cameraX time in android?',
        votes: 10,
        tags: tags(),
        answers: 10,
        content: content,
        views: 10,
        user: user,
        dateTime: DateTime.now(),
      ),
    ];
  }
}
