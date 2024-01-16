import 'package:flutter/material.dart';

class TextParts2 extends StatelessWidget {
  final String bulletPoint2;
  final List<TextSpan2> textParts2;

  TextParts2({Key? key, required this.bulletPoint2, required this.textParts2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(bulletPoint2, style: const TextStyle(fontSize: 12, color: Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
        const SizedBox(width: 3),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: textParts2.map((segment) => TextSpan(text: segment.text, style: segment.style)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class TextSpan2 {
  final String text;
  final TextStyle style;

  TextSpan2({required this.text, required this.style});
}
