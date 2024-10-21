import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'buttons.dart';
import 'buttonstate.dart';


class ButtonList extends StatelessWidget {
  void _onButtonClick(BuildContext context, int index) {
    // Update the clicked button index in the ButtonState
    Provider.of<ButtonState>(context, listen: false)
        .setClickedButtonIndex(index);

    // Define the routes based on the index
    String route;
    switch (index) {
      case 0:
        route = '/home';
        break;
      case 1:
        route = '/features';
        break;
      case 2:
        route = '/portfolio';
        break;
      case 3:
        route = '/resume';
        break;
      case 4:
        route = '/clients';
        break;
      case 5:
        route = '/blog';
        break;
      case 6:
        route = '/contact';
        break;
      default:
        route = '/';
    }

    // Navigate to the respective route
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> buttons = [
      'HOME',
      'FEATURES',
      'PORTFOLIO',
      'RESUME',
      'CLIENTS',
      'BLOG',
      'CONTACT'
    ];

    // Get the clicked button index from the ButtonState
    final clickedButtonIndex =
        Provider.of<ButtonState>(context).clickedButtonIndex;

    return Row(
      children: List.generate(buttons.length, (index) {
        return Button(
          text: buttons[index],
          isClicked: clickedButtonIndex == index,
          onButtonClick: () => _onButtonClick(context, index),
        );
      }),
    );
  }
}
