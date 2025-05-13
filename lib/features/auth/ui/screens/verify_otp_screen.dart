import 'package:ecom_app/core/extensions/localization_extention.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../widgets/app_logo.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  static const String name = '/verify-otp-screen';

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {

  final TextEditingController _otpTEController = TextEditingController();

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
              Text(context.localization.enterYourOtpCode, style: textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(context.localization.a4DigitOtpCodeHasBeenSent,style:textTheme.titleSmall),
              const SizedBox(height: 16),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  fieldOuterPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  fieldWidth: 80,
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                controller: _otpTEController,
                appContext: context,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: (){

                },
                child: Text(context.localization.verify),
              ),
              const SizedBox(height: 24),

            ],
          ),
        ),
      ),
    );
  }

}
