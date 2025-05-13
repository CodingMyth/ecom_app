import 'package:ecom_app/app/app_colors.dart';
import 'package:ecom_app/core/extensions/localization_extention.dart';
import 'package:ecom_app/features/auth/ui/screens/sing-in_screen.dart';
import 'package:ecom_app/features/auth/ui/screens/verify_otp_screen.dart';
import 'package:ecom_app/features/auth/ui/widgets/app_logo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  static const String name= '/sing-up';

  @override
  State<SingUpScreen> createState() => _SingUpScreen();
}

class _SingUpScreen extends State<SingUpScreen> {

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _deliveryAddressTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildForm(context, textTheme),
        ),
      ),
    );
   }

  Widget _buildForm(BuildContext context, TextTheme textTheme) {
    return Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 32),
              AppLogo(),
              const SizedBox(height: 24),
              Text(context.localization.registerYourAccount,
                  style: textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(context.localization.getStartedWithYourDetails,
                  style: textTheme.titleSmall),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailTEController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: context.localization.email,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _firstNameTEController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: context.localization.firstName,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _lastNameTEController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: context.localization.lastName,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _phoneTEController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: context.localization.phone,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordTEController,
                decoration: InputDecoration(
                  hintText: context.localization.password,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _deliveryAddressTEController,
                textInputAction: TextInputAction.next,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: context.localization.deliveryAddress,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _onTapSingUpButton,
                child: Text(context.localization.singUp),
              ),
              const SizedBox(height: 24),
              RichText(text: TextSpan(
                text: context.localization.alreadyHaveAnAccount,
                children: [
                  TextSpan(
                      text: context.localization.singIn,
                      style: TextStyle(
                        color: AppColors.themeColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = _onTapSingInButton
                  ),
                ],
              ),
              ),
            ],
          ),
        );
  }

  void _onTapSingUpButton(){
    Navigator.pushNamed(context, VerifyOtpScreen.name);
  }


  void _onTapSingInButton(){
    Navigator.pushReplacementNamed(context,SingInScreen.name);
    }

    @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _phoneTEController.dispose();
    _passwordTEController.dispose();
    _deliveryAddressTEController.dispose();
    super.dispose();
   }
  }



