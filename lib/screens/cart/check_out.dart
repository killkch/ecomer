// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:ecomer/constants.dart';
import 'package:ecomer/provider/cart_provider.dart';
import 'package:flutter/material.dart';

class CheckOutBox extends StatelessWidget {
  const CheckOutBox({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              filled: true,
              fillColor: kContextColor,
              hintText: "Enter Discount Code",
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              suffixIcon: TextButton(
                onPressed: () {},
                child: Text(
                  "Apply",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SubTotal",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                "\$${provider.totalPrice()}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$${provider.totalPrice()}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              minimumSize: Size(double.infinity, 55),
            ),
            child: Text(
              "Check Out",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
