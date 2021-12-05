import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class MapTextField extends StatelessWidget {
  TextEditingController textController;
  Function onChanged;
  IconData prefixIcon;
  String hintText;
  Function? onFocusChanged;

  MapTextField({
    required this.textController,
    required this.onChanged,
    required this.prefixIcon,
    required this.hintText,
    this.onFocusChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        if (onFocusChanged != null) {
          onFocusChanged!(hasFocus);
        }
      },
      child: TextField(
        maxLines: 1,
        enabled: true,
        controller: textController,
        onChanged: (text) {
          onChanged(text);
        },
        style: const TextStyle(
            fontSize: 14
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 14,
          ),
          border: InputBorder.none,
          fillColor: Colors.transparent,
          filled: true,
          contentPadding: const EdgeInsets.only(top: 6, bottom: 6, right: 24),
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.green,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
