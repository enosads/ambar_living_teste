import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  Widget child;
  Color borderColor;

  AppCard({this.child, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 2,

      child: child,
    );
  }
}
