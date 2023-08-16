import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:religious/Screens/audioScreen.dart';
import 'package:religious/Screens/favouritHadith.dart';
import 'package:religious/Screens/readHadith.dart';
import 'package:religious/custom/container.dart';
import 'package:religious/utils/colors.dart';
import 'package:religious/utils/text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
     double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: ColorsApp.offwhite,
        body: Stack(
          children: [
            SvgPicture.asset(
              'lib/images/k.svg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  SvgPicture.asset('lib/images/islamic.svg'),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextApp.primarySmall,
                      SizedBox(
                        height: 10,
                      ),
                      TextApp.HeaderScreen2,
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Read()));
                    },
                    child: CNT(
                        color1: ColorsApp.green,
                        color2: ColorsApp.offgreen,
                        path: 'lib/images/Group3.svg',
                        text: TextApp.CardOne,
                        path2: 'lib/images/q.png'),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Audio()));
                    },
                    child: CNT(
                        color1: ColorsApp.blue,
                        color2: ColorsApp.red,
                        path: 'lib/images/Group2.svg',
                        text: TextApp.cardTwo,
                        path2: 'lib/images/play.png'),
                  ),
                  GestureDetector( onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>FavauritHadith()));
                    },
                    child: CNT(
                        color1: Colors.grey,
                        color2: ColorsApp.yellow,
                        path: 'lib/images/Group4.svg',
                        text: TextApp.cardThree,
                        path2: 'lib/images/save.png'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
