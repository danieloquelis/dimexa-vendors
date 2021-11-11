import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CustomExpandableField extends StatelessWidget {

  String? title;
  Widget? child;

  CustomExpandableField({Key? key,
    this.title = "--",
    @required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: const ExpandableThemeData(
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        tapBodyToExpand: true,
        tapBodyToCollapse: true,
        hasIcon: false,
      ),
      header: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                ExpandableIcon(
                  theme: const ExpandableThemeData(
                    expandIcon: Icons.keyboard_arrow_right,
                    collapseIcon: Icons.keyboard_arrow_down,
                    iconColor: AppColors.gray,
                    iconSize: 28.0,
                    iconRotationAngle: 3.1416 / 2,
                    iconPadding: EdgeInsets.only(right: 5),
                    hasIcon: false,
                  ),
                ),
                Expanded(
                  child: Text(
                    title!,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      collapsed: Container(),
      expanded: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: child != null ? child! : Container(),
      )
    );
  }
}
