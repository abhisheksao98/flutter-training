const String dairymodel = 'dairymodel';

class DairyField {
  static const String id = '_id';
  static const String date = 'date';
  static const String Eventtitle = 'Eventtitle';
  static const String description = 'description';

  static final List<String> values = [
    id,
    date,
    Eventtitle,
    description,
  ];
}

class dairy {
  final int? id;
  final int? date;
  final String Eventtitle;
  final String description;

  const dairy(
      {this.id,
      required this.date,
      required this.Eventtitle,
      required this.description});

  dairy copy({
    int? id,
    int? date,
    String? Eventtitle,
    String? description,
  }) =>
      dairy(
        id: id ?? this.id,
        date: date ?? this.date,
        Eventtitle: Eventtitle ?? this.Eventtitle,
        description: description ?? this.description,
      );

  static dairy fromJson(Map<String, Object?> json) => dairy(
        id: json[DairyField.id] as int?,
        date: json[DairyField.date] as int,
        Eventtitle: json[DairyField.Eventtitle] as String,
        description: json[DairyField.description] as String,
      );

  Map<String, Object?> toJson() => {
        DairyField.id: id,
        DairyField.date: date,
        DairyField.Eventtitle: Eventtitle,
        DairyField.description: description,
      };
}
