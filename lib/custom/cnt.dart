import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Aya extends StatefulWidget {
  Aya({Key? key,required this.key1,required this.name}) : super(key: key);
  String key1;
  String name;
  @override
  State<Aya> createState() => _CntState();
}

class _CntState extends State<Aya> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Image(
              image: AssetImage('lib/images/Path 40.png'),
            ),
            SvgPicture.asset('lib/images/Path 4.svg'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(widget.key1,style: GoogleFonts.tajawal(color:Colors.amber[400],)),
            SizedBox(height:5 ,),
            Text(widget.name,style: GoogleFonts.tajawal(
              fontSize: w*.03,
              fontWeight:FontWeight.bold ,color:Colors.amber[400],))
            ],)
          ],
        ),
      ),
      height: h * .1,
      width: w * .2,
     
    );
  }
}
