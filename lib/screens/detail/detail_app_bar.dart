// ignore_for_file: prefer_const_constructors

import 'package:ecomer/constants.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kContextColor,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 30,
            icon: Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kContextColor,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {},
            iconSize: 30,
            icon: Icon(Icons.share_outlined),
          ),
          SizedBox(width: 10),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kContextColor,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {},
            iconSize: 30,
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
