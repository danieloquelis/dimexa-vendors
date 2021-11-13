
import 'package:dimexa_vendors/core/theme/dimexa_icons/dimexa_icons.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/modules/cient_page/clients_page.dart';
import 'package:dimexa_vendors/modules/collects_page/collects_page.dart';
import 'package:dimexa_vendors/modules/home_page/home_page.dart';
import 'package:dimexa_vendors/modules/products_page/products_page.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class TabManager extends StatefulWidget {
  @override
  _TabManagerState createState() => _TabManagerState();
}

class _TabManagerState extends State<TabManager> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ClientsPage(),
    ProductsPage(),
    CollectsPage(),
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
      body: _widgetOptions.elementAt(_selectedIndex),

      //drawer: CustomDrawer(),

      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined, size: 26),
            label: AppTranslations.of(context)!.text("home"),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline, size: 26),
            label: AppTranslations.of(context)!.text("clients"),
          ),
          BottomNavigationBarItem(
            icon: const Icon(DimexaIcons.products, size: 24),
            label: AppTranslations.of(context)!.text("products"),
          ),
          BottomNavigationBarItem(
            icon: const Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(DimexaIcons.collect, size: 20),
            ),
            label: AppTranslations.of(context)!.text("collect"),
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