import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  static const _borderRadius = 16.0;

  final Widget child;

  const CardContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 400, maxWidth: 800),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_borderRadius),
            ),
            elevation: 8.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(_borderRadius),
              child: AspectRatio(
                aspectRatio: 1.8,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
