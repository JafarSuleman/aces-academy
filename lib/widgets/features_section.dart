import 'package:aces_academy_website/widgets/responsive_wrapper.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80),
      color: Colors.white,
      child: ResponsiveWrapper(
        child: Column(
          children: [
            Text(
              'Our Features',
              style: TextStyle(
                color: AppColors.primaryBlue,
                fontSize: isDesktop ? 36 : 28,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(),
            const SizedBox(height: 48),
            Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                _FeatureItem(
                  icon: Icons.child_care,
                  title: 'Early Education',
                  description: 'Classes from Prep to Grade 3',
                ),
                _FeatureItem(
                  icon: Icons.people,
                  title: 'Small Class Size',
                  description: 'Individual attention for each student',
                ),
                _FeatureItem(
                  icon: Icons.security,
                  title: 'Safe Environment',
                  description: 'Professional and secure atmosphere',
                ),
                _FeatureItem(
                  icon: Icons.menu_book,
                  title: 'Modern Curriculum',
                  description: 'Up-to-date educational content',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primaryBlue.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 32,
              color: AppColors.primaryBlue,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ],
      ),
    ).animate()
      .fadeIn(delay: const Duration(milliseconds: 200))
      .scale(begin: const Offset(0.8, 0.8));
  }
} 