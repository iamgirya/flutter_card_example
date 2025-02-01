import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  final String assetsPath;
  const Photo({
    super.key,
    required this.assetsPath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetsPath,
      fit: BoxFit.fitHeight,
      frameBuilder: (_, child, frame, ___) => AnimatedOpacity(
        duration: const Duration(milliseconds: 1500),
        opacity: frame != null ? 1.0 : 0,
        child: frame != null ? child : Container(),
      ),
    );
  }
}
