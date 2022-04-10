import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_widget/share_widget.dart';

import 'bottom_sheet.dart';
import 'bottom_sheet_app_bar.dart';

Future<dynamic> inputText({
  required BuildContext context,
  required String title,
  String? hint,
  TextCapitalization? textCapitalization,
  String? initValue,
}) {
  return showAppBottomSheet(
    context,
    builder: (_) => InputBottomSheetWidget(
      title: title,
      hint: hint,
      textCapitalization: textCapitalization,
      initValue: initValue,
    ),
  );
}

class InputBottomSheetWidget extends StatefulWidget {
  final List<TextInputFormatter>? inputFormatters;
  final String title;
  final String? hint;
  final int maxLength;
  final String? initValue;
  final TextCapitalization? textCapitalization;

  InputBottomSheetWidget({
    required this.title,
    required this.hint,
    this.maxLength = 128,
    this.inputFormatters,
    required this.textCapitalization,
    required this.initValue,
  });

  @override
  State<StatefulWidget> createState() => _InputBottomSheetState();
}

class _InputBottomSheetState extends State<InputBottomSheetWidget> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    final initValue = widget.initValue ?? '';
    controller.value = TextEditingValue(
      text: initValue,
      selection: TextSelection(
        baseOffset: 0,
        extentOffset: initValue.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        BottomSheetAppBar(widget.title),
        _textInput(context),
        _finishAction(context),
        SizedBox(height: MediaQuery.of(context).viewInsets.bottom)
      ],
    );
  }

  Widget _textInput(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: ShareColors.primary400,
      ),
      borderRadius: BorderRadius.circular(4),
    );
    return Container(
      margin: EdgeInsets.only(top: 24, left: 16, right: 12),
      child: TextFormField(
        controller: controller,
        maxLength: widget.maxLength,
        autofocus: true,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        style: Theme.of(context).textTheme.headline6,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          hintText: widget.hint,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
        ),
        onChanged: (text) {
          setState(() {});
        },
      ),
    );
  }

  bool _isTextValid() => controller.text.trim().length >= 15;

  Widget _finishAction(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 24,
        bottom: 8,
      ),
      child: SharePrimaryButton(
        text: 'Gửi',
        onTap: _isTextValid()
            ? () {
                Navigator.of(context).pop(controller.text.trim());
              }
            : null,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
