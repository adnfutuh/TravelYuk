import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travelyuk_app/ui/pages/get_started_page.dart';
import '../../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/getStarted');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_logo.png'))),
            ),
            Text(
              'Travel Yuk',
              style: whiteTextStyle.copyWith(
                  fontSize: 20, fontWeight: bold, letterSpacing: 5),
            ),
          ],
        ),
      ),
    );
  }
}
