import 'package:flutter/material.dart';

class BlinkingCursorText extends StatefulWidget {
  @override
  _BlinkingCursorTextState createState() => _BlinkingCursorTextState();
}

class _BlinkingCursorTextState extends State<BlinkingCursorText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'a ',
            style: TextStyle(
                color: Colors.pink, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const TextSpan(
            text: 'Dev',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          WidgetSpan(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Opacity(
                  opacity: _controller.value, // Blinking effect
                  child: const Text(
                    '|', // Cursor
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.pink,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
