// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_web/widgets/contact_button.dart';

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'FranchiseKu',
      'subtitle': 'Franchise aggregator website.',
      'github_link': 'https://github.com/Taikez/Franchiseku',
      'image': Image.asset('assets/images/projects/franchiseku.png'),
    },

    {
      'title': 'Juice Cashier Application',
      'subtitle': 'Cashier Application for a juice tenant.',
      'github_link': 'https://github.com/Taikez/Java--Toko-Jus-Buah',
      'image': Image.asset('assets/images/projects/juice_cashier.png'),
    },

    {
      'title': 'Mebtoon',
      'subtitle': 'Add, rate and read comics on a website.',
      'github_link': 'https://github.com/Taikez/FrontEnd--Mebtoon',
      'image': Image.asset('assets/images/projects/mebtoon.png'),
    },

    {
      'title': 'Ping Pong',
      'subtitle': 'Singleplayer ping pong game using Java.',
      'github_link': 'https://github.com/Taikez/Java--PingPong',
      'image': Image.asset('assets/images/projects/ping_pong.png'),
    },

    {
      'title': 'Snake',
      'subtitle': 'Singleplayer snake game using Java.',
      'github_link': 'https://github.com/Taikez/Java--Snake',
      'image': Image.asset('assets/images/projects/snake.png'),
    },

    {
      'title': 'Brick Breaker',
      'subtitle': 'Singleplayer brick breaker game using Jav.',
      'github_link': 'https://github.com/Taikez/Java--BrickBreaker',
      'image': Image.asset('assets/images/projects/brick_breaker.png'),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: Column(children: [
              Expanded(
                child: Stack(alignment: Alignment.center, children: [
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset('assets/images/headshot.png')
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'I\'m Julian. \nA fresh graduate. \nDaring to learn something new everyday.',
                          style: TextStyle(
                            fontSize: 44.5,
                            color: Colors.blueGrey,
                          )
                        ),
                
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 75, vertical: 60),
                            child: ContactButton(
                              buttonText: 'Drop me a line', 
                              icon: Icon(Icons.mail_outline), 
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              )
            ]))),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 140,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('My Projects', style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 23
                )),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: projectsList.length,
                  itemBuilder: (context, index) {
                    return Container( 
                      child: Column( 
                        children: [ 
                          Card( 
                            elevation: 3,
                            child: Column( 
                              children: [ 
                                ListTile( 
                                  leading: Icon(Icons.work),
                                  title: Text(projectsList[index]['title'] as String),
                                  subtitle: Text(projectsList[index]['subtitle'] as String),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    );
                  },
                ),
              )
            ],
          )
        )
      ],
    );
  }
}
