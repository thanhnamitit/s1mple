
import 'package:flutter/material.dart';

import '../model/question.dart';
import '../model/user.dart';
import '../ui/screen/forum_home/forum_home_screen.dart';
import '../ui/screen/question_detail/question_detail_screen.dart';

extension ContextEntension on BuildContext {
  void enterForum({required User user}) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (_) => ForumHomeScreen(
          user: user,
        ),
      ),
    );
  }

}
