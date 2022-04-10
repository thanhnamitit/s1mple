import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  final List<String>? tags;

  const Tags(this.tags, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (tags == null || tags!.isEmpty) return SizedBox();
    final item = (String text) => Container(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 220, 233, 242),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.button?.copyWith(
                  color: Color.fromARGB(255, 57, 108, 148),
                  fontSize: 13,
                ),
          ),
        );
    return Wrap(
      runSpacing: 4,
      spacing: 4,
      children: tags!.map((e) => item(e)).toList(),
    );
  }
}
