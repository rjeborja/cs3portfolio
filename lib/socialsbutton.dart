import 'package:flutter/material.dart';
import 'dart:html' as html;

class SocialsButton extends StatelessWidget {
  final String url;
  final IconData icon;

  const SocialsButton({
    Key? key,
    required this.url,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        html.window.open(url, '_blank');
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE2E7ED),
              Color(0xFFEFF2F5),
            ],
          ),
          borderRadius: BorderRadius.circular(8), // Rounded edges
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(10, 0),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16), // Adjust padding as needed
          child: Icon(icon),
        ),
      ),
    );
  }
}