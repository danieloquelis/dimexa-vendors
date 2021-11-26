import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PermssionItem extends StatelessWidget {

  AppPermission permission;

  PermssionItem({Key? key,
    required this.permission
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: SvgPicture.asset(
              permission.svgAsset,
              semanticsLabel: 'Location permission',
            ),
          ),
          const SizedBox(height: 32),
          Text(
            permission.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 12,),
          Text(
            permission.description,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
