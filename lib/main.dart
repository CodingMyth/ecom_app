import 'dart:ui';
import 'package:ecom_app/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'firebase_options.dart';

void main(){

    void main() async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
        );

        //framework error
        FlutterError.onError = (errorDetails){
            FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
        };

        //all error
        PlatformDispatcher.instance.onError = (error , stack){
            FirebaseCrashlytics.instance.recordError(error,stack,fatal:true);
            return true;
        };

        runApp(CraftyBay());
    }


    runApp(CraftyBay());

}