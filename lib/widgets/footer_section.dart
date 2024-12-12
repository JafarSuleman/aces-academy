import 'package:aces_academy_website/widgets/responsive_wrapper.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      color: AppColors.primaryBlue,
      child: ResponsiveWrapper(
        child: Column(
          children: [
            Wrap(
              spacing: 60,
              runSpacing: 40,
              alignment: WrapAlignment.center,
              children: [
                _FooterColumn(
                  title: 'About Us',
                  items: [
                    'Our Mission',
                    'Our Vision',
                    'Our Values',
                    'Our Team',
                  ],
                ),
                _FooterColumn(
                  title: 'Academics',
                  items: [
                    'Curriculum',
                    'Class Schedule',
                    'Activities',
                    'Admissions',
                  ],
                ),
                _FooterColumn(
                  title: 'Contact',
                  items: [
                    AppConstants.location,
                    '+92 3159891237\n'
                    '+92 3341353636\n'
                    'acesacdy@gmail.com',
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Divider(color: Colors.white24),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                _FooterLink(title: 'Privacy Policy'),
                _FooterLink(title: 'Terms of Service'),
                _FooterLink(title: 'Cookie Policy'),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              '© ${DateTime.now().year} ${AppConstants.schoolName}. All rights reserved.',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const _FooterColumn({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  item,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String title;

  const _FooterLink({required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 14,
        ),
      ),
    );
  }
} 