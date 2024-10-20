import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialsButton extends StatelessWidget {
  final String url;
  final IconData icon;

  const SocialsButton({
    Key? key,
    required this.url,
    required this.icon,
  }) : super(key: key);

  Future<void> _launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
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
