import 'package:flutter/material.dart';

class LineCell extends StatelessWidget {
  String line;


  LineCell({required this.line});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(line, overflow: TextOverflow.ellipsis, maxLines: 2,),
      width: 42,
    );
  }
}
