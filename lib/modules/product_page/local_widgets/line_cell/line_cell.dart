import 'package:flutter/material.dart';

class LineCell extends StatelessWidget {
  const LineCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Bayer Bayer', overflow: TextOverflow.ellipsis, maxLines: 2,),
      width: 42,
    );
  }
}
