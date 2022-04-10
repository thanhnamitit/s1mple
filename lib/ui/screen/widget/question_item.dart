import 'package:flutter/material.dart';

import '../../../model/question.dart';
import 'tags.dart';
import 'user_info_and_date_time_block.dart';

class QuestionItem extends StatelessWidget {
  final Question question;
  final VoidCallback? onTap;

  const QuestionItem(
    this.question, {
    Key? key,
    this.onTap,
  }) : super(key: key);

  Widget buildHeader(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          fontSize: 14,
        );
    final item = ({required String title, required int value}) => Column(
          children: [
            Text(
              title,
              style: textStyle,
            ),
            Text(
              value.toString(),
              style: textStyle,
            ),
          ],
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        item(title: 'Votes', value: question.votes),
        SizedBox(height: 4),
        item(title: 'Answers', value: question.answers),
      ],
    );
  }

  Widget buildTitle(BuildContext context) {
    return Text(
      question.title,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black87),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget buildTags(BuildContext context) {
    final tags = question.tags ?? [];
    if (tags.isEmpty) return SizedBox(height: 4);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Tags(tags),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 64,
              child: buildHeader(context),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTitle(context),
                  SizedBox(height: 2),
                  buildTags(context),
                  SizedBox(height: 4),
                  UserInfoAndDateTimeBlock(
                    user: question.user,
                    dateTime: question.dateTime,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
