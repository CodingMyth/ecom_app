import 'package:ecom_app/core/extensions/localization_extention.dart';
import 'package:ecom_app/features/auth/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';


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
              Text(context.localization.enteryouremailandpassword,style:textTheme.titleSmall),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: context.localization.email,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: context.localization.password,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: (){},
                child: Text(context.localization.singin),
              )
            ],
          ),
        ),
      ),
    );
  }
}
