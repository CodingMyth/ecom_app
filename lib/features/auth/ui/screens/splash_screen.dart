import 'package:ecom_app/app/app_configs.dart';
import 'package:ecom_app/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name='/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(AssetsPath.logoSvg,width: 120),
              Spacer(),
              CircularProgressIndicator(),
              Text(AppLocalizations.of(context)!.helloWorld),
              Text('Version ${AppConfigs.currentAppVersion}')
            ],
          ),
        ),
      ),
    );
  }
}
