 
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:religious/utils/colors.dart';

class CNT extends StatelessWidget {
  CNT(
      {Key? key,
      @required this.color1,
      @required this.color2,
      @required this.path,
      @required this.text,
      @required this.path2})
      : super(key: key);
  String? path;
  String? path2;
  Color? color1;
  Color? color2;
  Text ?text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal:20),
      child: Container(
        height: 80,
        
        child: Row(
          children: [Padding(
            padding: const EdgeInsets.only(left:10),
            child: Container(
              height:50,
              child: Image(image:AssetImage(path2!) )),
          ), Padding(
            padding: const EdgeInsets.only(left:16),
            child: text!,
          ), Padding(
            padding: const EdgeInsets.only(left:50),
            child: SvgPicture.asset(path!),
          ), ],
        ),
        decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow:const [ BoxShadow(color: Colors.black,blurRadius: 10),],
              gradient: LinearGradient(colors: [color1!, color2!])),
      ),
    );
  }
}
