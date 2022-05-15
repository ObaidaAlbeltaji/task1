import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/Modules/CenterScreen/center_1.dart';
import 'package:task1/Modules/DetailsScreen/details.dart';
import 'package:task1/Modules/ServiceScreen/services_tap_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (child) {
        return MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en', ''), // English, no country code
            Locale('ar', ''), // Spanish, no country code
          ],
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'AvenirArabic',
          ),
          initialRoute: '/',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            '/': (context) => const ServiceTapController(),
            // When navigating to the "/second" route, build the SecondScreen widget.
            '/center1': (context) => Center1(),
            '/center2': (context) => Details(),
          },
          debugShowCheckedModeBanner: false,
        );
      },
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}
