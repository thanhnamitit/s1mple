import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_widget/share_widget.dart';

import '../../../di/hackathon_di.dart';
import '../../../model/question.dart';
import '../../../model/user.dart';
import '../widget/tags.dart';
import '../widget/user_info_and_date_time_block.dart';
import '../widget/vote_widget.dart';
import 'question_detail_bloc.dart';
import 'question_detail_state.dart';

class QuestionDetailScreen extends StatefulWidget {
  final Question question;
  final User user;

  const QuestionDetailScreen({
    Key? key,
    required this.question,
    required this.user,
  }) : super(key: key);

  @override
  _QuestionDetailScreenState createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<QuestionDetailScreen> {
  late final QuestionDetailBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = getIt.get(
      param1: widget.question,
      param2: widget.user,
    )..setup();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  Widget buildQuestionDetail() {
    return BlocBuilder<QuestionDetailBloc, QuestionDetailState>(
      buildWhen: (p, c) => p.question != c.question,
      builder: (context, state) {
        final question = state.question;
        final textTheme = Theme.of(context).textTheme;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(question.title, style: textTheme.headline5),
            SizedBox(height: 12),
            Text(question.content, style: textTheme.bodyText1),
            SizedBox(height: 12),
            Tags(question.tags),
            SizedBox(height: 12),
            Row(
              children: [
                VoteWidget(
                  votes: question.votes,
                  onTapDown: () {},
                  onTapUp: () {},
                ),
                SizedBox(width: 24),
                Expanded(
                  child: UserInfoAndDateTimeBlock(
                    user: question.user,
                    dateTime: question.dateTime,
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: ShareScaffold(
        appBar: AppBar(leading: ShareBackButton()),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ShareBackground(
            padding: EdgeInsets.zero,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
              child: Column(
                children: [
                  buildQuestionDetail(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
