import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:flutter/material.dart';

class QuantityTextField extends StatelessWidget {
  const QuantityTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppTranslations.of(context)!.text("quantity")),
        SizedBox(height: 6,),
        Container(
          width: 64,
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
