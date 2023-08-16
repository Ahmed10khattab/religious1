import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:religious/model/model.dart';
import 'package:religious/provider/provider.dart';
import 'package:religious/service/servec2.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:share_plus/share_plus.dart';

class HomeHadith extends StatefulWidget {
  HomeHadith({Key? key, required this.hadith}) : super(key: key);
  Hadith hadith;
  @override
  State<HomeHadith> createState() => _HomeHadithState();
}

class _HomeHadithState extends State<HomeHadith> {
  bool bol = true;
  bool clicked = false;
  int selectedIndex = 0;
  String text = '';
  @override
  void initState() {
    text = widget.hadith.textHadith!;
    super.initState();
  }

  update(int index, String? bottonTex) {
    setState(() {
      selectedIndex = index;
    });

    text = bottonTex! + "\n";
  }

  getWiget(bool bol) {
    if (bol) {
      return NetworPage(data: text, hadith: widget.hadith);
    }
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Provider1>(context);

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(255, 134, 124, 85),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            color: const Color.fromARGB(255, 134, 124, 85),
            height: 60,
            child: Stack(
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      bol = true;
                      update(0, widget.hadith.textHadith);
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    icon: Icon(
                      Icons.chrome_reader_mode_outlined,
                      size: 30,
                      color: selectedIndex == 0 ? Colors.amber : null,
                    )),
                const Positioned(
                    top: 40,
                    left: 7,
                    child: Text('الحديث',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Positioned(
                  left: 115,
                  child: IconButton(
                      onPressed: () {
                        bol = true;
                        update(0, widget.hadith.exHadith);
                        selectedIndex = 1;
                      },
                      icon: Icon(
                        Icons.chrome_reader_mode,
                        size: 30,
                        color: selectedIndex == 1 ? Colors.amber : null,
                      )),
                ),
                const Positioned(
                    left: 115,
                    top: 40,
                    child: Text('التفسير',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Positioned(
                  right: 10,
                  child: IconButton(
                      onPressed: () {

         

                        bol = true;
                        update(0, widget.hadith.nHadith);
                        selectedIndex = 3;
                      },
                      icon: Icon(
                        Icons.person,
                        size: 30,
                        color: selectedIndex == 3 ? Colors.amber : null,
                      )),
                ),
                Positioned(
                  right: 90,
                  child: Builder(
                    builder: (context) {
                      return IconButton(
                          onPressed: () {

              provider.AddToFav(widget.hadith);
 
 Scaffold.of(context).showSnackBar(
                              const SnackBar(content: Text("added to favourit")));
                           selectedIndex = 2;
                          },
                          icon: Icon(
                            Icons.favorite,
                            size: 30,
                            color: selectedIndex == 2? Colors.amber : null,


                          ));
                    }
                  ),
                ),
              const   Positioned(
                  right: 95,
                  top: 40,
                  child:  Text('المفضلة')
                ),
                const Positioned(
                    top: 40,
                    right: 20,
                    child: Text(
                      'الراوي',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clicked = !clicked;
          });
          Share.share(text, subject: widget.hadith.textHadith);
          //  Share.share(text, subject: widget.hadith.textHadith);
        },
        child: const Icon(
          Icons.share,
        ),
      ),
      body: Stack(
        children: [getWiget(bol)],
      ),
    );
  }
}
