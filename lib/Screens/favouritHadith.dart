import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:religious/custom/cnt.dart';
import 'package:religious/model/model.dart';
import 'package:religious/provider/provider.dart';

class FavauritHadith extends StatelessWidget {
  const FavauritHadith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Hadith?> provider = Provider.of<Provider1>(context).favourit;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 126, 173, 175),
        body: Stack(
          children: [
            LayoutBuilder(builder: ((context, constraints) {
              if (provider.isNotEmpty) {
                return GridView.builder(
                    itemCount: provider.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'readFavourit',arguments: provider[index]!.textHadith);
                        },
                        child: Aya(
                            key1: provider[index]!.Key.toString(),
                            name: provider[index]!.nameHadith.toString()),
                      );
                    });
              } else
                return Center(
                  child:Text('لا يوجد لديك اي حديث مفضل',style: TextStyle(fontSize:15 ),) ,
                );
            }))
          ],
        ));
  }
}
