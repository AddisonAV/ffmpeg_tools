import 'package:flutter/material.dart';
import 'package:desktop_drop/desktop_drop.dart';

class WaitingFile extends StatelessWidget {
  final void Function(dynamic) onFileDropped;
  const WaitingFile({super.key, required this.onFileDropped});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
        child: DropTarget(
          onDragDone: onFileDropped,
          child: const Center(
            child: Text(
              'Drag & drop your files here',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}