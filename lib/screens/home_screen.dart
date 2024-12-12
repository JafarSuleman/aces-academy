import 'package:flutter/material.dart';
import '../widgets/responsive_wrapper.dart';
import '../widgets/nav_bar.dart';
import '../widgets/hero_section.dart';
import '../widgets/about_section.dart';
import '../widgets/features_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer_section.dart';
import '../widgets/mobile_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MediaQuery.of(context).size.width <= 800 
          ? const MobileDrawer() 
          : null,
      body: const ResponsiveWrapper(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              NavBar(),
              SizedBox(height: 10,),
              HeroSection(),
              AboutSection(),
              FeaturesSection(),
              ContactSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
} 