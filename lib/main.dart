import 'package:flutter/material.dart';
import 'package:sistem_akademik/main_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates : [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('id'),
      ],
      locale: const Locale('id'),
      theme: ThemeData(
        fontFamily: 'IBMPlexSanss',
      ),
      home: MainScreen(),
    );
  }
}


