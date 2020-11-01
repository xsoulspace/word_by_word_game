import 'package:flutter/material.dart';

class CircularSpinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: 1,
      ),
    );
  }
}
