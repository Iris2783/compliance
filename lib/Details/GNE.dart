// ignore_for_file: file_names, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class GNE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            '受贈簿・社外交流簿',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromRGBO(133, 174, 77, 1),
      ),
    );
  }
}
