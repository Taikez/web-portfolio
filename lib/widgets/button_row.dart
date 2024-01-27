import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: const Color(0xfffbefd9),
          child: Row ( 
            children: [ 
              TextButton.icon(
                onPressed: () {}, 
                icon: Image.asset('assets/images/social/facebook.png', width: 15, height: 15,), 
                label: const Text('')
              ),
              TextButton.icon(
                onPressed: () {}, 
                icon: Image.asset('assets/images/social/instagram.png', width: 15, height: 15,), 
                label: const Text('')
              ),
              TextButton.icon(
                onPressed: () {}, 
                icon: Image.asset('assets/images/social/twitter.png', width: 15, height: 15,), 
                label: const Text('')
              )
            ]
          )
        )
      ],
    );
  }
}
