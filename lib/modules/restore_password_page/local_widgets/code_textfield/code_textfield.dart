import 'package:flutter/material.dart';

class CodeTextField extends StatelessWidget {
  Function? onChanged;
  String? hint;

  CodeTextField({
    this.onChanged,
    this.hint = ""
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: TextField(
          onChanged: (text) {
            if (onChanged != null) {
              onChanged!(text);
            }
          },
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15
          ),
          maxLines: 1,
          maxLength: 6,
          keyboardType: TextInputType.number,
          enableSuggestions: false,
          decoration: InputDecoration(
            counter: const Offstage(),
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade500
            )
          ),
        ),
      ),
    );
  }
}
