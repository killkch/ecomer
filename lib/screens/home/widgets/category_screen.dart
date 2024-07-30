// ignore_for_file: prefer_const_constructors

import 'package:ecomer/models/category.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return null;
        },
        separatorBuilder: (context, index) => SizedBox(width: 20),
      ),
    );
  }
}
