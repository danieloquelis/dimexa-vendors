import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:flutter/material.dart';

class CollectsPage extends StatefulWidget {
  @override
  _CollectsPageState createState() => _CollectsPageState();
}

class _CollectsPageState extends State<CollectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: AppTranslations.of(context)!.text('collect'),
      ).widget(),
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

