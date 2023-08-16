import 'package:flutter/material.dart';
import 'package:religious/model/model.dart';
import 'package:religious/service/servecs.dart';

class NetworPage extends StatelessWidget {
   NetworPage({Key? key,required this.data,required this.hadith}) : super(key: key);
  String data;
  Hadith hadith;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 116, 116),
      body: CustomScrollView(
        slivers: <Widget>[NetworkingPageContent(data: data,)],
      ),
    );
  }
}
