import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_widget/res/share_color.dart';

import '../../../model/user.dart';

final timeFormat = DateFormat('hh:mm dd/MM/yyyy');

class UserInfoAndDateTimeBlock extends StatelessWidget {
  final User user;
  final DateTime dateTime;
  final bool isAnonymous;

  const UserInfoAndDateTimeBlock({
    Key? key,
    required this.user,
    required this.dateTime,
    this.isAnonymous = false,
  }) : super(key: key);

  Widget buildRoleLabel(BuildContext context) {
    final tag = user.role == Role.ai
        ? 'AI'
        : user.role == Role.doctor
            ? 'Doctor'
            : null;
    if (tag == null) return SizedBox();
    return Row(
      children: [
        SizedBox(width: 4),
        Container(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          decoration: BoxDecoration(
            color: ShareColors.warning400,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            tag,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.button?.copyWith(
                  color: Colors.white,
                  fontSize: 13,
                ),
          ),
        ),
      ],
    );
  }

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
              imageUrl: isAnonymous ? '' : user.avatar ?? '',
              errorWidget: (_, __, ___) {
                return Container(
                  width: avatarSize,
                  height: avatarSize,
                  decoration: BoxDecoration(color: Colors.black54),
                  child: Icon(
                    Icons.person,
                    size: avatarSize / 2,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(width: 4),
        Text(
          isAnonymous ? 'Ẩn danh' : user.name,
          style: textStyle,
        ),
        buildRoleLabel(context),
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
