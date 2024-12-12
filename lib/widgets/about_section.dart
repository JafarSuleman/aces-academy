import 'package:aces_academy_website/widgets/responsive_wrapper.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        children: [
          const Text(
            'About Us',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // School description
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: const Text(
              'Welcome to our educational institution, where excellence meets innovation. '
              'Founded with a vision to nurture future leaders, our school provides a '
              'comprehensive learning environment that combines traditional values with '
              'modern teaching methodologies. We focus on holistic development, ensuring '
              'that every student receives the attention and guidance they need to excel '
              'in their academic journey.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 40),
            const SizedBox(height: 48),
            const Wrap(
              spacing: 32,
              runSpacing: 32,
              alignment: WrapAlignment.center,
              children: [
                _AboutCard(
                  icon: Icons.school,
                  title: 'Quality Education',
                  description: 'Providing high standard education from prep to class III',
                ),
                _AboutCard(
                  icon: Icons.female,
                  title: 'Female Teachers',
                  description: 'Highly qualified female teachin\nstaff',
                ),
                _AboutCard(
                  icon: Icons.chair,
                  title: 'Modern Facilities',
                  description: 'High standard furniture and facilities for\nkids',
                ),
              ],
            ),
          ],
        ),
    );
  }
}

class _AboutCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _AboutCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 48,
            color: AppColors.primaryBlue,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
        ],
      ),
    ).animate()
      .fadeIn(delay: const Duration(milliseconds: 300))
      .slideY(begin: 0.3);
  }
} 