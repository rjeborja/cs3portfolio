import 'package:flutter/material.dart';
import 'buttonlist.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;

  const BaseScaffold({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF0F3),
      appBar: AppBar(
        toolbarHeight: 90,
        leadingWidth: 200,
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xFFECF0F3),
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 8, 0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                    'assets/images/pfp.jpg'), // Replace with actual profile picture
              ),
              SizedBox(width: 10),
              Text('INBIO',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        actions: [
          ButtonList(),
          const SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
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
                child: const Padding(
                  padding: EdgeInsets.all(16), // Adjust padding as needed
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: body,
    );
  }
}
