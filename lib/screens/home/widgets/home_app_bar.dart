// ignore_for_file: prefer_const_constructors

import 'package:ecomer/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kContextColor,
            padding: EdgeInsets.all(20.0),
          ),
          onPressed: () {},
          icon: Image.asset(
            'assets/icon.png',
            height: 20,
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kContextColor,
            padding: EdgeInsets.all(20.0),
          ),
          onPressed: () {},
          iconSize: 30,
          icon: Icon(Icons.notifications_outlined),
        )
      ],
    );
  }
}
