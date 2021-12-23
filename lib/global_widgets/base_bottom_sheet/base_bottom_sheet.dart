import 'package:flutter/material.dart';

class BaseBottomSheet extends StatelessWidget {
  Widget child;
  double? horizontalMargin;
  double? horizontalPadding;

  BaseBottomSheet({Key? key, required this.child, this.horizontalMargin = 8, this.horizontalPadding = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: horizontalMargin!),
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding!),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top:Radius.circular(16))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 2,),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              child: Container(
                color: Colors.grey,
                width: 80,
                height: 6,
              ),
            ),
            const SizedBox(height: 16,),
            child,
            const SizedBox(height: 16,),
          ],
        )
    );
  }
}
