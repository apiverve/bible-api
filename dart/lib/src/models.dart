/// Response models for the Bible API.

/// API Response wrapper.
class BibleResponse {
  final String status;
  final dynamic error;
  final BibleData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BibleResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BibleResponse.fromJson(Map<String, dynamic> json) => BibleResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BibleData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Bible API.

class BibleData {
  String? text;
  String? book;
  String? abbr;
  num? chapter;
  List<num>? verses;
  String? version;
  String? testament;
  num? bookNumber;
  num? totalChapters;
  num? totalVersesInChapter;
  num? wordCount;

  BibleData({
    this.text,
    this.book,
    this.abbr,
    this.chapter,
    this.verses,
    this.version,
    this.testament,
    this.bookNumber,
    this.totalChapters,
    this.totalVersesInChapter,
    this.wordCount,
  });

  factory BibleData.fromJson(Map<String, dynamic> json) => BibleData(
      text: json['text'],
      book: json['book'],
      abbr: json['abbr'],
      chapter: json['chapter'],
      verses: (json['verses'] as List?)?.cast<num>(),
      version: json['version'],
      testament: json['testament'],
      bookNumber: json['bookNumber'],
      totalChapters: json['totalChapters'],
      totalVersesInChapter: json['totalVersesInChapter'],
      wordCount: json['wordCount'],
    );
}

class BibleRequest {
  String book;
  String version;
  int chapter;
  int? verse;

  BibleRequest({
    required this.book,
    required this.version,
    required this.chapter,
    this.verse,
  });

  Map<String, dynamic> toJson() => {
      'book': book,
      'version': version,
      'chapter': chapter,
      if (verse != null) 'verse': verse,
    };
}
