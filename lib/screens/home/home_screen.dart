// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecomer/constants.dart';
import 'package:ecomer/screens/home/widgets/home_app_bar.dart';
import 'package:ecomer/screens/home/widgets/image_slider.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35),
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
              
            ],
          ),
        ),
      ),
    );
  }
}
