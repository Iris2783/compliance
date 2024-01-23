import 'package:flutter/material.dart';

class TextParts1 extends StatelessWidget {
  final String bulletPoint1;
  final List<TextPart1> textParts1;

  TextParts1({super.key, required this.bulletPoint1, required this.textParts1});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(bulletPoint1,
            style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        // const SizedBox(width: 5),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: textParts1
                  .map((part) => TextSpan(text: part.text, style: part.style))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class TextPart1 {
  final String text;
  final TextStyle style;

  TextPart1({required this.text, required this.style});
}
