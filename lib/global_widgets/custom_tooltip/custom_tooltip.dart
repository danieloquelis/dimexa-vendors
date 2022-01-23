import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:flutter/material.dart';

class CustomTooltip extends StatelessWidget {
  Widget? child;
  String? message;

  CustomTooltip({
    required this.child,
    this.message
  });

  @override
  Widget build(BuildContext context) {
    return StringUtils.isNotNullNorEmpty(message) ? Tooltip(
      child: child!,
      message: message!,
      height: 56,
      verticalOffset: 6,
      margin: EdgeInsets.symmetric(horizontal: 16),
      showDuration: Duration(seconds: 2),
    ): child!;
  }
}
