import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';
import 'screens/home_screen.dart';
import 'utils/constants.dart';

void main() {
  // Set base URL for GitHub Pages
  setBaseUrl();
  runApp(const AcesAcademyApp());
}

void setBaseUrl() {
  // Only modify URL in production
  const hostname = String.fromEnvironment('HOSTNAME', defaultValue: '');
  if (hostname.isNotEmpty) {
    setPathUrlStrategy();
  }
}

class AcesAcademyApp extends StatelessWidget {
  const AcesAcademyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ACES Academy',
      theme: ThemeData(
        primaryColor: AppColors.primaryBlue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryBlue,
          background: Colors.white,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
