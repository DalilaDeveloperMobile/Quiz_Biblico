import 'package:flutter/material.dart';

class QBDialog extends StatelessWidget {
  final Widget content;
  final List<Widget>? actions;

  const QBDialog({super.key, required this.content, this.actions});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      backgroundColor: Colors.amber.shade100,
      contentPadding: const EdgeInsets.all(16),
      actionsPadding: const EdgeInsets.all(16),
      content: content,
      actions: actions,
    );
  }
}
