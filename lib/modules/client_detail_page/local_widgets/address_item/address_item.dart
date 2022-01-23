import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/models/address/address.dart';
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
  Address address;

  AddressItem({
    this.showButton = true,
    this.horizontalMargin = 8,
    this.leftPadding = 16,
    this.rightPadding = 16,
    this.topPadding= 16,
    this.bottomPadding = 0,
    this.backgroundColor = Colors.white,
    required this.address
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding, top: topPadding, bottom: bottomPadding),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.vertical(top:Radius.circular(16))
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
                      StringUtils.checkNullOrEmpty(address.direccion),
                      //maxLines: 1,
                      //overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      '${StringUtils.checkNullOrEmpty(address.distrito)}, ${StringUtils.checkNullOrEmpty(address.departamento)}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: showButton,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.location_on, color: AppColors.blue,),
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
                label: StringUtils.checkNullOrEmpty(address.tipoprioridad),
              ),
              const SizedBox(width: 8,),
              Tag(
                borderColor: Colors.transparent,
                backgroundColor: AppColors.tagBackground,
                label: StringUtils.checkNullOrEmpty(address.tipoestablecimiento),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
