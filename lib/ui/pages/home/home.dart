import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.basePage,
      appBar: AppBar(
        backgroundColor: AppColors.basePage,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: AppColors.gray,),
        ),
        elevation: 0,
        actions: [
          Switch(
            value: false,
            onChanged: (value){},
            activeColor: AppColors.green,
          )
        ],
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bienvendio Daniel',
                  style: TextStyle(
                      fontSize: 24
                  ),
                ),
                Text('Código de trabajador: FHX123')
              ],
            ),
            CircleAvatar(
              radius: 32,
              backgroundColor: AppColors.blue,
              child: Icon(Icons.person, color: Colors.white, size: 32,),
            )
          ],
        ),
      ),
    );
  }
}
