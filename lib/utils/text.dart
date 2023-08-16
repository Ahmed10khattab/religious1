import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:religious/utils/colors.dart';

class TextApp {
  static Text  primary = Text('الاربعون الانووية',style:GoogleFonts.tajawal(fontSize: 36,fontWeight:FontWeight.bold,color: ColorsApp.white ));
  static Text primarySmall = Text('الاربعون الانووية',style:GoogleFonts.tajawal(fontSize: 16,  ));
  static Text  HeaderScreen2  = Text('لحفظ وسماع الاربعون النووية',style:GoogleFonts.tajawal(fontSize: 22,fontWeight:FontWeight.bold,color: ColorsApp.green ));
  static Text  CardOne = Text('الاحاديث الاربعون',style:GoogleFonts.tajawal(fontSize: 22,color: ColorsApp.white ));
  static Text  cardTwo = Text('الاستماع الي الاحاديث',style:GoogleFonts.tajawal(fontSize: 22,color: ColorsApp.white ));
  static Text  cardThree = Text('الاحاديث المحفوظة',style:GoogleFonts.tajawal(fontSize: 22,color: ColorsApp.white ));
}
