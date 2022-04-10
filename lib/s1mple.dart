library hackathon_s1mple;

import 'package:flutter/material.dart';

import 'model/user.dart';
import 'ui/screen/forum_home/forum_home_screen.dart';

export 'di/hackathon_di.dart' hide getIt;
export 'ui/screen/forum_home/forum_home_screen.dart';
export 'model/user.dart';

extension ContextEntension on BuildContext {
  void enterForum({required User user}) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (_) => ForumHomeScreen(user: user,),
      ),
    );
  }
}
