import 'package:flutter/material.dart';
import 'package:gully_network_task/util/style.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Profile Screen',
            style: textStyleBack14,
          ),
        ),
        body: Center(
          child: Text('Profile Screen'),
        ),
      ),
    );
  }
}
