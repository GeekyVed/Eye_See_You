import 'package:flutter/material.dart';

class DisplayImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Image'),
      ),
      body: Center(
        child: Image.asset('assets/your_image.jpg'), // Replace with the actual image path
      ),
    );
  }
}
