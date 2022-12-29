import 'dart:async';

import 'package:cartlist/FUNCTIONS/internetConnection.dart';
import 'package:cartlist/RESOURCE/assetFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashTimer();
  }

  void splashTimer() async {
    if (await checkinternet()) {
      Timer(const Duration(seconds: 5), () async {
        setVisitingFlag();

        if (await getVsitingFlag() == true) {
          Navigator.pushNamed(context, '/homeNavigation');
        } else {
          await Navigator.pushNamed(context, '/homeNavigation');
        }
      });
    } else {
      Navigator.pushNamed(context, '/homeNavigation');
    }
  }

  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: widgetSize.width / 2,
          child: Image.asset(
            appLogo,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

setVisitingFlag() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("alreadyVisited", true);
}

getVsitingFlag() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool alreadyVisited = preferences.getBool("alreadyVisited") ?? false;
  return alreadyVisited;
}
