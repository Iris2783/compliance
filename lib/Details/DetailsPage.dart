import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String itemName;

  DetailsPage({required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName),
      ),
      body: Center(
        child: Text(
          'ここに${itemName}の詳細情報が表示されます。',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
