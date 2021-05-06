import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.indigoAccent,
        ),
        child: Text(
          'Copyright@2021,All Right Reserved',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ));
  }
}
