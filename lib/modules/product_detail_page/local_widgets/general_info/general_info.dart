import 'package:flutter/material.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Cod.'),
            SizedBox(width: 8,),
            Text('548224')
          ],
        ),
        Row(
          children: [
            Text('Stock'),
            SizedBox(width: 8,),
            Text('527 Unidades')
          ],
        )
      ],
    );
  }
}
