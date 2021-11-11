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
      appBar: AppBar(
        title: Column(
          children: [
            Text('Bienvenido Daniel'),
            Text('Código de usuario: 200159', style: TextStyle(fontSize: 13),)
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: AppColors.basePage,
            borderRadius: BorderRadius.vertical(top: Radius.circular(18))
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Comming soon')
            ],
          ),
        ),
      ),
    );
  }
}
