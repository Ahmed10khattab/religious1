 
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:religious/Screens/home.dart';
import 'package:religious/utils/colors.dart';
import 'package:religious/utils/text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 3000), () {

      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Home() ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.green,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'lib/images/k.svg',
            fit: BoxFit.cover,
          ),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'lib/images/islamic.svg',
              ),
              TextApp.primary
            ],
          ))
        ],
      ),
    );
  }
}
