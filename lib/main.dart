import 'package:dimexa_vendors/core/utils/dependency_injection/dependency_injection.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations_delegate.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/modules/tab_manager/tab_manager.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/custom_material_color/custom_material_color.dart';
import 'package:dimexa_vendors/routes/app_pages/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

late ObjectBox objectbox;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  objectbox = await ObjectBox.create();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      getPages: AppPages.pages,
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
