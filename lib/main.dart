import 'package:dimexa_vendors/localizations/app_translations_delegate.dart';
import 'package:dimexa_vendors/ui/tab_manager/tab_manager.dart';
import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:dimexa_vendors/utils/custom_material_color/custom_material_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dimexa',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.blue, //For each backgroundColor page
        primarySwatch: customMaterialColor(AppColors.blue), //For appBar
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
              bodyColor: AppColors.gray
          ),
        ),
      ),
      home: TabManager(),
      localizationsDelegates: const [
        //app-specific localization delegate[s] here
        AppTranslationsDelegate(newLocale: Locale("es")),
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'), // English
        Locale('es', 'PE')
      ],
    );
  }
}
