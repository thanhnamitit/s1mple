import 'package:flutter/material.dart';
import 'package:share_widget/res/share_color.dart';

import '../../../const.dart';

class VoteWidget extends StatelessWidget {
  final int votes;
  final VoidCallback? onTapUp;
  final VoidCallback? onTapDown;

  const VoteWidget({
    Key? key,
    required this.votes,
    this.onTapUp,
    this.onTapDown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final btnSize = 36.0;
    final color = ShareColors.bg300;
    return Column(
      children: [
        InkWell(
          onTap: onTapUp,
          child: RotatedBox(
            quarterTurns: 2,
            child: Image.asset(
              'assets/ic_arrow_down.png',
              package: Const.packageName,
              color: color,
              width: btnSize,
              height: btnSize,
            ),
          ),
        ),
        Text(
          votes.toString(),
          style: TextStyle(
            fontSize: 18,
            color: ShareColors.bg500,
          ),
        ),
        InkWell(
          onTap: onTapDown,
          child: Image.asset(
            'assets/ic_arrow_down.png',
            package: Const.packageName,
            color: color,
            width: btnSize,
            height: btnSize,
          ),
        ),
      ],
    );
  }
}
