import 'package:aces_academy_website/widgets/responsive_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../utils/constants.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Container(
      height: isDesktop ? 600 : 500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primaryBlue,
            AppColors.secondaryBlue.withOpacity(0.9),
          ],
        ),
      ),
      child: Stack(
        children: [
          // Background pattern
          Positioned.fill(
            child: CustomPaint(
              painter: GridPainter(),
            ),
          ),
          // Main content
          ResponsiveWrapper(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'Welcome to Excellence',
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: isDesktop ? 16 : 14,
                                  ),
                                  speed: const Duration(milliseconds: 100),
                                ),
                              ],
                              isRepeatingAnimation: false,
                            ),
                          ],
                        ),
                      ).animate().fadeIn().slideX(begin: -0.3),
                      const SizedBox(height: 24),
                      Text(
                        AppConstants.schoolName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isDesktop ? 56 : 40,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ).animate()
                        .fadeIn(delay: const Duration(milliseconds: 200))
                        .slideX(begin: -0.3),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.accentOrange.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          AppConstants.schoolSubtitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isDesktop ? 24 : 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ).animate()
                        .fadeIn(delay: const Duration(milliseconds: 400))
                        .slideX(begin: -0.3),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: AppColors.primaryBlue,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ).animate()
                            .fadeIn(delay: const Duration(milliseconds: 600))
                            .slideX(begin: -0.3),
                          const SizedBox(width: 16),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 32,
                            ),
                            label: const Text(
                              'Watch Video',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ).animate()
                            .fadeIn(delay: const Duration(milliseconds: 800))
                            .slideX(begin: -0.3),
                        ],
                      ),
                    ],
                  ),
                ),
                if (isDesktop)
                  Expanded(
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          AppConstants.logoPath,
                          height: 300,
                        ),
                      ),
                    ).animate()
                      .fadeIn(delay: const Duration(milliseconds: 500))
                      .scale(begin: const Offset(0.8, 0.8)),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.05)
      ..strokeWidth = 1;

    const spacing = 30;
    
    for (var i = 0; i < size.width; i += spacing) {
      canvas.drawLine(
        Offset(i.toDouble(), 0),
        Offset(i.toDouble(), size.height),
        paint,
      );
    }

    for (var i = 0; i < size.height; i += spacing) {
      canvas.drawLine(
        Offset(0, i.toDouble()),
        Offset(size.width, i.toDouble()),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
} 