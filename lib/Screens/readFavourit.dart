import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:religious/model/model.dart';
import 'package:religious/provider/provider.dart';

class ReadFavourit extends StatelessWidget {
  const ReadFavourit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   List<Hadith?> provider = Provider.of<Provider1>(context).favourit;
    var model = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: Colors.cyanAccent,
    body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal:14),
            child: Text(

              model.toString(),
              style: TextStyle(fontSize: 23,),
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}
