// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:portfolio_web/widgets/body.dart';
import 'package:portfolio_web/widgets/button_row.dart';
import 'package:portfolio_web/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 9.0, bottom: 9.0, right: 9.0),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/headshot.png')),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Julian',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic)),
            )
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'Contact Me',
            icon: Icon(Icons.send_sharp),
            onPressed: () {
              print('Contact Me Clicked!');
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Body(
            
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: SizedBox(
                height: 59,
                child: ButtonRow()
              ),
            ) // Social Media Icons
          ) 
        ],
      ),
    );
  }
}


