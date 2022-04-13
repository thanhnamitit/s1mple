import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_widget/share_widget.dart';

import '../../../di/hackathon_di.dart';
import '../../../domain/submit_question_use_case.dart';
import '../../../model/answer.dart';
import '../../../model/question.dart';
import '../../../model/user.dart';
import '../../bottom_sheet/input_bottom_sheet.dart';
import '../widget/firebase_image.dart';
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

class _QuestionDetailScreenState extends State<QuestionDetailScreen>
    with LoadingMixin {
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

  Widget buildImages(List<String> paths) {
    if (paths.isEmpty) return SizedBox();
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SingleChildScrollView(
        child: Row(
          children: paths
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 80,
                      height: 80,
                      child: FirebaseImage(storagePath: e),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget buildQuestionDetail() {
    return BlocBuilder<QuestionDetailBloc, QuestionDetailState>(
      builder: (context, state) {
        final question = state.question;
        final textTheme = Theme.of(context).textTheme;
        final images = question.images ?? [];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(question.title, style: textTheme.headline5),
            SizedBox(height: 12),
            Text(question.content, style: textTheme.bodyText1),
            SizedBox(height: 12),
            Tags(question.tags),
            SizedBox(height: 12),
            buildImages(images),
            Row(
              children: [
                IgnorePointer(
                  ignoring: state.votingQuestion is Loading,
                  child: VoteWidget(
                    votes: question.votes,
                    type: getVoteType(
                      devoted: question.devoted,
                      voted: question.voted,
                      userId: bloc.user.id,
                    ),
                    submitting: state.votingQuestion is Loading,
                    requestChange: (_) => bloc.vote(_),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: UserInfoAndDateTimeBlock(
                    user: question.user,
                    dateTime: question.dateTime,
                    isAnonymous: question.isAnonymous,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final text = await inputText(
                  context: context,
                  title: 'Trả lời',
                  hint: 'Tối thiểu 15 ký tự...',
                );
                if (text is String) {
                  bloc.submitAnswer(text);
                }
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xffF3F7F9),
                ),
                child: Text(
                  'Trả lời',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: Colors.black45),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildAnswerLoading() {
    return Row(
      children: [
        Text(
          'Đang lấy danh sách bình luận',
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(width: 12),
        SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator(strokeWidth: 2),
        )
      ],
    );
  }

  Widget buildAnswer(
    Answer answer, {
    required bool submitting,
    required bool ignoring,
  }) {
    return IgnorePointer(
      ignoring: ignoring || answer.type == AnswerType.loading,
      child: Container(
        child: Row(
          children: [
            VoteWidget(
              votes: answer.votes,
              submitting: submitting,
              type: getVoteType(
                devoted: answer.devoted,
                voted: answer.voted,
                userId: bloc.user.id,
              ),
              requestChange: (_) => bloc.voteAnswer(_, answer),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (answer.type == AnswerType.loading) ...[
                    Row(
                      children: [
                        Flexible(child: Text(answer.content)),
                        SizedBox(width: 8),
                        SizedBox(
                          width: 12,
                          height: 12,
                          child: CircularProgressIndicator(strokeWidth: 1),
                        ),
                      ],
                    ),
                  ] else if (answer.type == AnswerType.aiPredict) ...[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(answer.content),
                        SizedBox(height: 8),
                        Tags(
                          answer.specifications?.map((e) => e.name).toList(),
                          onTagTap: (_) {
                            final spec = specifications
                                .firstWhereOrNull((e) => e.name == _)
                                ?.code;
                            Navigator.of(context).pushRoutePath(
                              RoutePath.bookAppointmentByDoctor(
                                specialties: spec != null ? [spec] : null,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ] else
                    Text(answer.content),
                  SizedBox(height: 8),
                  UserInfoAndDateTimeBlock(
                    user: answer.user,
                    dateTime: answer.dateTime,
                    onTap: () {
                      if (answer.user.role == Role.doctor &&
                          widget.user.role != Role.doctor) {
                        Navigator.of(context).pushNamed(
                          'telehealth/doctorProfile',
                          arguments: answer.user.id,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAnswers() {
    return BlocBuilder<QuestionDetailBloc, QuestionDetailState>(
      builder: (_, state) {
        final votingAnswer = state.votingAnswer;
        return state.answers.maybeMap(
          orElse: () => buildAnswerLoading(),
          success: (_) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _.data.map(
              (e) {
                return buildAnswer(
                  e,
                  submitting:
                      votingAnswer?.call() == e && votingAnswer is Loading,
                  ignoring: votingAnswer is Loading,
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<QuestionDetailBloc, QuestionDetailState>(
            listenWhen: (p, c) => p.submittingAnswer != c.submittingAnswer,
            listener: (_, state) {
              if (state.submittingAnswer is Fail) {
                showError('Có lỗi xảy ra, vui lòng thử lại');
              }
            },
          )
        ],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildQuestionDetail(),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 18),
                      height: 1,
                      width: double.infinity,
                      color: ShareColors.bg300,
                    ),
                    buildAnswers(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
