import 'package:flutter/material.dart';
import 'package:frontend/app/app.dart';
import 'package:frontend/counter/counter.dart';
import 'package:frontend/l10n/l10n.dart';
import 'package:frontend/presentation/landing/view/landing_page.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Consts.backgroundColor,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Consts.backgroundColor,
          backgroundColor: Consts.backgroundColor,
        ),
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: GoogleFonts.manrope(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 19,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 20,
            ),
          ),
        ),
        textTheme: GoogleFonts.manropeTextTheme().copyWith(),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}
