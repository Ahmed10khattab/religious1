 
class Hadith {
  String? Key;
  String ?nameHadith;
  String ?textHadith;
  String? nHadith;
  String ?exHadith;
  String? audio;
  Hadith(
      { this.Key,
        this.audio,
      this.exHadith,
        this.nHadith,
        this.nameHadith,
       this.textHadith});

  Map<String, dynamic> toMap() {
    return {
      "key": Key,
      "nameHadith": nameHadith,
      "textHadith": textHadith,
      "nHadith": nHadith,
      "exHadith": exHadith,
      'audio': audio,
    };
  }

  factory Hadith.fromMap(Map<String, dynamic> model) {
    return Hadith(
      nameHadith: model['nameHadith'],
      Key: model['key'],
      exHadith: model[' exHadith'],
      textHadith: model['textHadith'],
      nHadith: model['nHadith'],
      audio: model['audio'],
    );
  }
}
