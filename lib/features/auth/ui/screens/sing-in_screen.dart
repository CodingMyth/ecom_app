import 'package:ecom_app/core/extensions/localization_extention.dart';
import 'package:ecom_app/features/auth/ui/screens/sing_up_screen.dart';
import 'package:ecom_app/features/auth/ui/widgets/app_logo.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';


class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  static const String name= '/sing-in';

  @override
  State<SingInScreen> createState() => _SingInScreen();
}

class _SingInScreen extends State<SingInScreen> {
  @override
  Widget build(BuildContext context) {

    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              AppLogo(),
              const SizedBox(height: 24),
              Text(context.localization.welcomeBack,style: textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(context.localization.enterYourEmailAndPassword,style:textTheme.titleSmall),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: context.localization.email,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: context.localization.password,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: (){
                  FirebaseCrashlytics.instance.log('Enter SingIn button');
                  throw Exception('My custom error');
                },
                child: Text(context.localization.singIn),
              ),
              const SizedBox(height: 16),
              RichText(text: TextSpan(
                text: context.localization.dontHaveAnAccount,
                children: [
                  TextSpan(
                      text: context.localization.singUp,
                      style: TextStyle(
                        color: AppColors.themeColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = _onTapSingUpButton
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _onTapSingUpButton(){
    Navigator.popAndPushNamed(context, SingUpScreen.name);
  }
}
