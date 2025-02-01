import 'package:flutter/material.dart';

class ContactIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const ContactIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
