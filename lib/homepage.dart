import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'buttons.dart';
import 'buttonlist.dart';
import 'blinkingcursortext.dart';
import 'socialsbutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xFFECF0F3),
      child: Center(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenSize.width * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WELCOME TO MY WORLD',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Hi, I\'m ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text: 'Ralph Borja\n',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'HorizonType',
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: BlinkingCursorText(),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "I use animation as a third dimension by which to simplify experiences and guide through each and every interaction. I'm not adding motion just to spruce things up, but doing it in ways that make sense.",
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 100),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Align children to start (left)
                          children: [
                            Container(
                              alignment: Alignment
                                  .centerLeft, // Ensure text aligns to the left
                              child: Text(
                                'FIND WITH ME',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Wrap(
                              spacing: 12.0,
                              children: [
                                SocialsButton(
                                  url: 'https://x.com/home',
                                  icon: FontAwesomeIcons.facebookF,
                                ),
                                SocialsButton(
                                  url: 'https://x.com/home',
                                  icon: FontAwesomeIcons.instagram,
                                ),
                                SocialsButton(
                                  url: 'https://x.com/home',
                                  icon: FontAwesomeIcons.linkedinIn,
                                ),
                              ],
                            )
                          ],
                        ),
                        Expanded(child: Container()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'BEST SKILL ON',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Wrap(
                              spacing: 12.0,
                              children: [
                                SocialsButton(
                                  url: 'https://x.com/home',
                                  icon: FontAwesomeIcons.linkedinIn,
                                ),
                                SocialsButton(
                                  url: 'https://x.com/home',
                                  icon: FontAwesomeIcons.sketch,
                                ),
                                SocialsButton(
                                  url: 'https://x.com/home',
                                  icon: FontAwesomeIcons.figma,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 100),
              Column(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 600,
                          height: 800,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 4.0,
                            ),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFE2E7ED),
                                Color(0xFFEFF2F5),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                offset: const Offset(10, 0),
                                blurRadius: 10,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 600,
                        height: 1000,
                        child: Image.asset(
                          'assets/images/portrait.png',
                          width: screenSize.width,
                          height: screenSize.height,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
