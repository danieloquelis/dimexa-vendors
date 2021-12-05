import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:flutter/material.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top:Radius.circular(16))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Av. Canta Callao Mz Q lt 22 Urb. Libertad'),
                  SizedBox(height: 4,),
                  Text('Los Olivos - Lima - Lima'),
                ],
              ),
              Flexible(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.location_on, color: AppColors.blue,),
                ),
              )
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
