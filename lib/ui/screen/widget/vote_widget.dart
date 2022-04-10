import 'package:flutter/material.dart';
import 'package:share_widget/res/share_color.dart';

import '../../../const.dart';
import '../../../domain/base_update_voted_use_case.dart';

VoteType? getVoteType({
  required List<String> voted,
  required List<String> devoted,
  required String userId,
}) {
  if (voted.contains(userId)) {
    return VoteType.up;
  } else if (devoted.contains(userId)) {
    return VoteType.down;
  } else {
    return null;
  }
}

class VoteWidget extends StatelessWidget {
  final int votes;
  final Function(VoteType)? requestChange;
  final VoteType? type;
  final bool submitting;

  const VoteWidget({
    Key? key,
    required this.votes,
    this.type,
    this.requestChange,
    this.submitting = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final btnSize = 36.0;
    final baseColor = ShareColors.bg300;
    final activeColor = ShareColors.primary500;
    return Column(
      children: [
        InkWell(
          onTap: () => requestChange?.call(VoteType.up),
          child: RotatedBox(
            quarterTurns: 2,
            child: Image.asset(
              'assets/ic_arrow_down.png',
              package: Const.packageName,
              color: type != VoteType.up ? baseColor : activeColor,
              width: btnSize,
              height: btnSize,
            ),
          ),
        ),
        SizedBox(
          width: 28,
          height: 28,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 256),
            child: submitting
                ? SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    votes.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: ShareColors.bg500,
                    ),
                  ),
          ),
        ),
        InkWell(
          onTap: () => requestChange?.call(VoteType.down),
          child: Image.asset(
            'assets/ic_arrow_down.png',
            package: Const.packageName,
            color: type != VoteType.down ? baseColor : activeColor,
            width: btnSize,
            height: btnSize,
          ),
        ),
      ],
    );
  }
}
