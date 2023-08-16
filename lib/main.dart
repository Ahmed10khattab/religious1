import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:religious/Screens/SplashScreen.dart';
import 'package:religious/Screens/readFavourit.dart';
import 'package:religious/provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => Provider1() ,
      child:  MaterialApp(
        
    home:SplashScreen(),  
    routes: {
      'readFavourit':(context)=>ReadFavourit()
    },   
      ),
    );
  }
}