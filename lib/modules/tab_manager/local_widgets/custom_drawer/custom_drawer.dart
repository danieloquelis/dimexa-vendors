import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  List<String> drawerOptions = <String>[
    "Services",
    "Devices",
    "Statistics",
    "Permissions",
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          drawerItem(
            label: 'Cerra sesión',
            icon: Icons.logout
          )
        ],
      ),
    );
  }

  Widget drawerItem({required String label, required IconData icon, bool selected = false, Function? onPressed}) {
    return InkWell(
      onTap: () {},
      child: Container(
        //margin: EdgeInsets.all(8),
        padding: EdgeInsets.only(left: 16),
        height: 50,
        // decoration: BoxDecoration(
        //     color: selected ? AppColors.lightBrown: Colors.white,
        //     borderRadius: BorderRadius.all(Radius.circular(8))
        // ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.blue,),
            SizedBox(width: 16,),
            Text(label)
          ],
        ),
      ),
    );
  }
}
