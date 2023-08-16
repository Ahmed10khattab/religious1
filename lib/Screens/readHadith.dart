import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:religious/DB/myDB.dart';
import 'package:religious/Screens/bottomBar.dart';
import 'package:religious/custom/cnt.dart';
import 'package:religious/main.dart';
import 'package:religious/model/model.dart';
import 'package:religious/utils/colors.dart';
import 'package:religious/utils/text.dart';

class Read extends StatefulWidget {
  const Read({Key? key}) : super(key: key);

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 255, 221), 
      body: Column(
        children: [
          Container(
            color: ColorsApp.offwhite,
            height: h * .3,
            child: Stack(children: [
              Positioned(
                  top: h * .06,
                  right: w * .3,
                  child: Container(
                      height: h * .13,
                      child: SvgPicture.asset('lib/images/islamic.svg'))),
              Positioned(
                  top: h * .2,
                  right: w * .08,
                  child: Text(
                    'الاربعون النووية',
                    style: GoogleFonts.tajawal(
                        fontSize: w * .05, color: Colors.black),
                  )),
              Positioned(
                  top: h * .24,
                  right: w * .05,
                  child: Text(
                    'لحفظ وسماع الاربعون النووية',
                    style: GoogleFonts.tajawal(
                        fontSize: w * .05,
                        color: Color.fromARGB(255, 30, 119, 27)),
                  )),
            ]),
          ),
          Container(
            color: Color.fromARGB(255, 142, 226, 177),
            height: h * .7,
            child: Stack(
              children: [
                FutureBuilder(
                    future: Mydata.getAlldata(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return GridView.builder(
                            itemCount: snapshot.data.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemBuilder: (context, i) {
                              Hadith item = snapshot.data[i];
                              return GestureDetector
                              
                              (
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>HomeHadith(hadith:item )));
                                },
                                child: Aya(key1:item.Key! , name:item.nameHadith!));
                            });
                      } else
                        return  Center(
                            child: CircularProgressIndicator(
                          color: Colors.blueGrey,
                        ));
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
