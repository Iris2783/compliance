import 'package:flutter/material.dart';

class TextParts3 extends StatelessWidget {
  final String bulletPoint3;
  final List<TextPart3> textParts3;

  TextParts3({Key? key, required this.bulletPoint3, required this.textParts3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(bulletPoint3, style: const TextStyle(fontSize: 15, color: Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
        // const SizedBox(width: 3),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: textParts3.map((segment) => TextSpan(text: segment.text, style: segment.style)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class TextPart3 {
  final String text;
  final TextStyle style;

  TextPart3({required this.text, required this.style});
}
