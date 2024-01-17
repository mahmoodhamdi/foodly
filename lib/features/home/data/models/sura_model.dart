class SuraModel {
  final int id;
  final String revelationPlace;
  final int revelationOrder;
  final bool bismillahPre;
  final String nameSimple;
  final String nameComplex;
  final String nameArabic;
  final int versesCount;
  final List<int> pages;
  final TranslatedNameModel translatedName;

  SuraModel({
    required this.id,
    required this.revelationPlace,
    required this.revelationOrder,
    required this.bismillahPre,
    required this.nameSimple,
    required this.nameComplex,
    required this.nameArabic,
    required this.versesCount,
    required this.pages,
    required this.translatedName,
  });

  factory SuraModel.fromJson(Map<String, dynamic> json) {
    return SuraModel(
      id: json['id'],
      revelationPlace: json['revelation_place'],
      revelationOrder: json['revelation_order'],
      bismillahPre: json['bismillah_pre'],
      nameSimple: json['name_simple'],
      nameComplex: json['name_complex'],
      nameArabic: json['name_arabic'],
      versesCount: json['verses_count'],
      pages: List<int>.from(json['pages']),
      translatedName: TranslatedNameModel.fromJson(json['translated_name']),
    );
  }
}

class TranslatedNameModel {
  final String languageName;
  final String name;

  TranslatedNameModel({
    required this.languageName,
    required this.name,
  });

  factory TranslatedNameModel.fromJson(Map<String, dynamic> json) {
    return TranslatedNameModel(
      languageName: json['language_name'],
      name: json['name'],
    );
  }
}
