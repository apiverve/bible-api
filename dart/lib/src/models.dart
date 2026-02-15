/// Response models for the Bible API.

/// API Response wrapper.
class BibleResponse {
  final String status;
  final dynamic error;
  final BibleData? data;

  BibleResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BibleResponse.fromJson(Map<String, dynamic> json) => BibleResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BibleData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Bible API.

class BibleData {
  String? text;
  String? book;
  String? abbr;
  int? chapter;
  List<int>? verses;
  String? version;

  BibleData({
    this.text,
    this.book,
    this.abbr,
    this.chapter,
    this.verses,
    this.version,
  });

  factory BibleData.fromJson(Map<String, dynamic> json) => BibleData(
      text: json['text'],
      book: json['book'],
      abbr: json['abbr'],
      chapter: json['chapter'],
      verses: (json['verses'] as List?)?.cast<int>(),
      version: json['version'],
    );
}

class BibleRequest {
  String book;
  int chapter;
  int? verse;

  BibleRequest({
    required this.book,
    required this.chapter,
    this.verse,
  });

  Map<String, dynamic> toJson() => {
      'book': book,
      'chapter': chapter,
      if (verse != null) 'verse': verse,
    };
}
