import 'package:ecom_app/app/app_colors.dart';
import 'package:ecom_app/app/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CraftyBay extends StatefulWidget {
  const CraftyBay({super.key});

  @override
  State<CraftyBay> createState() => _CraftyBayState();
}

class _CraftyBayState extends State<CraftyBay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
            titleLarge: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),
            titleSmall: TextStyle(fontSize: 16,fontWeight: FontWeight.w100,color: Colors.grey),
        ),
        inputDecorationTheme:  InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
      border: OutlineInputBorder(
          borderSide: BorderSide(color:AppColors.themeColor)
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:AppColors.themeColor)
      ),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Colors.red)
      ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:AppColors.themeColor),
          ),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.grey
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
              fixedSize: Size.fromWidth(double.maxFinite),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              foregroundColor: Colors.white,
              backgroundColor: AppColors.themeColor
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        )
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('bn'),
      //todo implement GetX switcher
      supportedLocales: [
        Locale('en'), // English
        Locale('bn'), // Spanish
      ],
    );
  }
}
