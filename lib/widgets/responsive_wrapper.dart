import 'package:flutter/material.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget child;
  
  const ResponsiveWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 1200,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: constraints.maxWidth > 1200 ? 0 : 20,
            ),
            child: child,
          ),
        );
      },
    );
  }
} 