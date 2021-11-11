import 'package:dimexa_vendors/localizations/app_translations.dart';
import 'package:dimexa_vendors/ui/pages/clients/clients.dart';
import 'package:dimexa_vendors/ui/pages/home/home.dart';
import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:dimexa_vendors/utils/dimexa_icons/dimexa_icons.dart';
import 'package:flutter/material.dart';

class TabManager extends StatefulWidget {
  @override
  _TabManagerState createState() => _TabManagerState();
}

class _TabManagerState extends State<TabManager> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Clients(),
    Clients(),
    Clients(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      //backgroundColor: AppColors.base_page,
      body: _widgetOptions.elementAt(_selectedIndex),

      //drawer: CustomDrawer(),

      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 26),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 26),
            label: 'Clientes',
          ),
          BottomNavigationBarItem(
            icon: Icon(DimexaIcons.products, size: 24),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(DimexaIcons.collect, size: 20),
            ),
            label: 'Cobranza',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.gray,
        onTap: _onItemTapped,
      ),
    );
  }
}
