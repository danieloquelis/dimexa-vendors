import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:flutter/material.dart';

class AddressItem extends StatelessWidget {
  bool showButton;
  double horizontalMargin;
  double leftPadding;
  double rightPadding;
  double topPadding;
  double bottomPadding;
  Color backgroundColor;


  AddressItem({
    this.showButton = true,
    this.horizontalMargin = 8,
    this.leftPadding = 16,
    this.rightPadding = 16,
    this.topPadding= 16,
    this.bottomPadding = 0,
    this.backgroundColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding, top: topPadding, bottom: bottomPadding),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.vertical(top:Radius.circular(16))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Av. Canta Callao Mz Q lt 22 Urb. Libertad largo largo',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'Los Olivos - Lima - Lima',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: showButton,
                child: Flexible(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.location_on, color: AppColors.blue,),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8,),
          Row(
            children: [
              Tag(
                borderColor: Colors.transparent,
                backgroundColor: AppColors.tagBackground,
                label: 'Principal',
              ),
              SizedBox(width: 8,),
              Tag(
                borderColor: Colors.transparent,
                backgroundColor: AppColors.tagBackground,
                label: 'Oficina',
              ),
            ],
          ),

        ],
      ),
    );
  }
}
