import 'package:dimexa_vendors/localizations/app_translations.dart';
import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.of(context)!.text("products")),
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
              Text('Coming soon')
            ],
          ),
        ),
      ),
    );
  }
}
