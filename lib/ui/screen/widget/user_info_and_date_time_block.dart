import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../model/user.dart';

final timeFormat = DateFormat('hh:mm dd/MM/yyyy');

class UserInfoAndDateTimeBlock extends StatelessWidget {
  final User user;
  final DateTime dateTime;

  const UserInfoAndDateTimeBlock({
    Key? key,
    required this.user,
    required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatarSize = 20.0;
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          fontSize: 13,
          color: Color.fromARGB(255, 19, 111, 197),
        );
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(avatarSize),
          child: SizedBox(
            width: avatarSize,
            height: avatarSize,
            child: CachedNetworkImage(
              imageUrl: user.avatar ?? '',
            ),
          ),
        ),
        SizedBox(width: 2),
        Text(
          user.name,
          style: textStyle,
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            timeFormat.format(dateTime),
            textAlign: TextAlign.end,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
