import 'package:flutter/material.dart';

class GeneralInfo extends StatelessWidget {

  String code;
  String stock;


  GeneralInfo({required this.code, required this.stock});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Cod.'),
            SizedBox(width: 8,),
            Text(code)
          ],
        ),
        Row(
          children: [
            Text('Stock'),
            SizedBox(width: 8,),
            Text(stock)
          ],
        )
      ],
    );
  }
}
