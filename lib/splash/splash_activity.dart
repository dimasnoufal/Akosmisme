import 'dart:async';
import 'package:flutter/material.dart';

import 'package:project_2_akosmisme/home/home_activity.dart';

class SplashActivity extends StatefulWidget {
  const SplashActivity({super.key});

  @override
  State<SplashActivity> createState() => _SplashActivityState();
}

class _SplashActivityState extends State<SplashActivity> {
  void initState() {
    super.initState();
    splashStart();
  }

  Future splashStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeActivity()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/logo_akosmisme.png',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
