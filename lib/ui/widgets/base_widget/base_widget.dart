import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseWidget<T extends Widget> extends StatelessWidget {

  bool visible;
  late T child;

  BaseWidget({Key? key, this.visible = true, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: visible,
        child: child,
    );
  }
}
