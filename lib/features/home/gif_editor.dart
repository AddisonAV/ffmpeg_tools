import 'package:flutter/material.dart';

class GitEditor extends StatelessWidget {
  final dynamic file;
  const GitEditor({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Editing file: ${file.name}'),
    );
  }
}