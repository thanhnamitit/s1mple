import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final bottomSheetShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  ),
);

Future<dynamic> showAppBottomSheet(
  BuildContext context, {
  required WidgetBuilder builder,
  Color? backgroundColor,
}) {
  return showModalBottomSheet(
    context: context,
    shape: bottomSheetShape,
    backgroundColor: Colors.white,
    builder: builder,
    isScrollControlled: true,
  );
}
