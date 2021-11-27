import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  String message;
  String actionLabel;
  Function? onClick;


  Message({
    required this.message,
    required this.actionLabel,
    this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 14,
            ),
          ),
          const SizedBox(height: 24,),
          Visibility(
            visible: onClick != null,
            child: ElevatedButton(
              onPressed: () {
                onClick!();
              },
              child: Text(actionLabel),
            ),
          ),
        ],
      ),
    );
  }
}
