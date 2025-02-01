import 'package:flutter/material.dart';

class NameTitle extends StatelessWidget {
  final String name;
  final String companyName;
  static const _titleFontSize = 24.0;
  static const _subtitleFontSize = 18.0;

  const NameTitle({
    super.key,
    required this.name,
    required this.companyName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            name,
            style: const TextStyle(
              fontSize: _titleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            companyName,
            style: const TextStyle(fontSize: _subtitleFontSize),
          ),
        ),
      ],
    );
  }
}
