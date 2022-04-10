import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_widget/share_widget.dart';

import '../../../di/hackathon_di.dart';
import '../../../model/question.dart';
import '../../../model/user.dart';
import '../create_question/create_question_screen.dart';
import '../question_detail/question_detail_screen.dart';
import '../widget/question_item.dart';
import 'forum_home_bloc.dart';
import 'forum_home_state.dart';

class ForumHomeScreen extends StatefulWidget {
  final User user;

  const ForumHomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  _ForumHomeScreenState createState() => _ForumHomeScreenState();
}

class _ForumHomeScreenState extends State<ForumHomeScreen> {
  late final ForumHomeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = getIt()..setup();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  Widget buildBody(List<Question> questions) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (_, index) {
        final question = questions[index];
        return QuestionItem(
          question,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => QuestionDetailScreen(
                question: question,
                user: widget.user,
              ),
            ));
          },
        );
      },
      separatorBuilder: (_, __) => Container(height: 1, color: Colors.black12),
      itemCount: questions.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForumHomeBloc, ForumHomeState>(
      bloc: bloc,
      builder: (context, state) {
        return ShareScaffold(
          appBar: AppBar(
            title: Text('Hỏi Đáp'),
            leading: ShareBackButton(),
            actions: [
              InkWell(
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => CreateQuestionScreen(user: widget.user),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          body: ShareBackground(
            padding: EdgeInsets.zero,
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 256),
              child: state.questions.maybeMap(
                orElse: () => ShareSkeleton(),
                success: (_) => buildBody(_.data),
              ),
            ),
          ),
        );
      },
    );
  }
}
