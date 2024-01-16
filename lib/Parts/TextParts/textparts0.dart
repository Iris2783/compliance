import 'package:flutter/material.dart';

class TextParts0 extends StatelessWidget {
  final String bulletPoint;
  final List<TextPart> textParts;

  TextParts0({super.key, required this.bulletPoint, required this.textParts});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(bulletPoint, style: const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
        // const SizedBox(width: 5),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: textParts.map((part) => TextSpan(text: part.text, style: part.style)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class TextPart {
  final String text;
  final TextStyle style;

  TextPart({required this.text, required this.style});
}
