import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../const.dart';
import '../model/answer.dart';
import '../model/question.dart';
import '../model/user.dart';

const daLieu = Specification(name: 'Da Liễu', code: 'SP002');
const yHocGiaDinh = Specification(name: 'Y Học Gia Đình', code: 'SP001');
const nhiKhoa = Specification(name: 'Nhi Khoa', code: 'SP005');
const noiTongQuat = Specification(name: 'Nội Tổng Quát', code: 'SP008');
const sanPhuKhoa = Specification(name: 'Sản Phụ Khoa', code: 'SP013');
const namKhoa = Specification(name: 'Nam Khoa', code: 'SP025');

const specifications = [
  daLieu,
  yHocGiaDinh,
  nhiKhoa,
  noiTongQuat,
  sanPhuKhoa,
  namKhoa
];

@injectable
class SubmitQuestionUseCase {
  static final _uuid = Uuid();

  FirebaseFirestore firestore;
  FirebaseStorage storage;

  SubmitQuestionUseCase(this.firestore, this.storage);

  void fakeAiAnswer(Question question) async {
    final predict =
        await Dio().post('http://10.208.209.220:8080/classifier/', data: {
      'sentences': question.content,
    }).then((value) {
      print('SubmitQuestionUseCase.call ${Map.from(value.data)}');
      return Specification.fromJson(Map.from(value.data));
    });
    print('SubmitQuestionUseCase.call $predict');

    final specs = specifications.toList();
    specs.shuffle();
    final answer = Answer(
      content: 'AI đang phân tích...',
      user: User(
        id: '',
        role: Role.ai,
        name: 'S1mple',
        avatar: 'https://thanhnamitit.xyz/conversation/navi_team_avatar.png',
      ),
      type: AnswerType.loading,
      specifications: [predict],
      dateTime: DateTime.now(),
    );
    final answersRef = firestore
        .collection(Const.questions)
        .doc(question.id)
        .collection(Const.answers);
    final ref = await answersRef.add(answer.toJson());
    await Future.delayed(Duration(seconds: 7));
    await answersRef.doc(ref.id).update(
      {
        'type': 'aiPredict',
        'content':
            'Vấn đề của bạn có thể thuộc về một trong những chuyên khoa bên dưới'
      },
    );
  }

  Future<Question> call({
    required User user,
    required String title,
    required String content,
    required List<String> paths,
    required bool isAnonymous,
  }) async {
    final storagePaths = await Future.wait(paths.map((path) async {
      final result = await storage
          .ref('hackathon-s1mple/${_uuid.v4()}.${path.split('.').last}')
          .putFile(File(path));
      return result.ref.fullPath;
    })).then((value) => value.map((e) => e.toString()).toList());

    final question = Question(
      title: title,
      content: content,
      answers: 1,
      views: 0,
      user: user,
      images: storagePaths,
      isAnonymous: isAnonymous,
      dateTime: DateTime.now(),
    );

    final ref =
        await firestore.collection(Const.questions).add(question.toJson());
    final result = question.copyWith(id: ref.id);
    fakeAiAnswer(result);
    return result;
  }
}
