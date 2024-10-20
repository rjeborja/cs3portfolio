import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final bool isClicked;
  final VoidCallback onButtonClick;

  const Button({
    required this.text,
    required this.isClicked,
    required this.onButtonClick,
    super.key,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: TextButton(
        onPressed: widget.onButtonClick,
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.isClicked || _isHovering ? Colors.pink : Colors.black,
          ),
        ),
      ),
    );
  }

  void _onHover(bool hovering) {
    setState(() {
      _isHovering = hovering;
    });
  }
}
