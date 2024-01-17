import 'package:flutter/material.dart';

class IndentedTextParts extends StatelessWidget {
  final String indentedBulletSegment;
  final List<IndentedTextPart> indentedTextSymbol;

  IndentedTextParts({Key? key, required this.indentedBulletSegment, required this.indentedTextSymbol}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0), // ここでインデントを調整します
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(indentedBulletSegment, style: const TextStyle(fontSize: 18, color: Color.fromRGBO(220, 20, 60, 1), fontWeight: FontWeight.bold)),
          const SizedBox(width: 3),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: indentedTextSymbol.map((segment) => TextSpan(text: segment.text, style: segment.style)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IndentedTextPart {
  final String text;
  final TextStyle style;

  IndentedTextPart({required this.text, required this.style});
}
