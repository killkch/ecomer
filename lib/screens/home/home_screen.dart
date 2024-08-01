// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecomer/constants.dart';
import 'package:ecomer/models/product.dart';
import 'package:ecomer/screens/home/widgets/category_widget.dart';
import 'package:ecomer/screens/home/widgets/home_app_bar.dart';
import 'package:ecomer/screens/home/widgets/image_slider.dart';
import 'package:ecomer/screens/home/widgets/product_card.dart';
import 'package:ecomer/screens/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                CustomAppBar(),
                SizedBox(height: 10),
                MySearchBar(),
                SizedBox(height: 20),
                ImageSlider(
                  currentSlide: currentSlider,
                  onChange: (value) {
                    setState(
                      () {
                        currentSlider = value;
                      },
                    );
                  },
                ),
                SizedBox(height: 20),
                CategoryWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special for You",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1,
                      ),
                    ),
                    Text(
                      "모두 보기",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -1,
                        color: Colors.black54,
                      ),
                    ),
                    // SizedBox(width: 10),
                  ],
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.87,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: products[index],
                    );
                  },
                ),
                SizedBox(height: 200),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
