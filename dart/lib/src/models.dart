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
  String? reference;
  List<BibleDataPassageItem>? passage;
  BibleDataPrevious? previous;
  BibleDataNext? next;

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
    this.reference,
    this.passage,
    this.previous,
    this.next,
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
      reference: json['reference'],
      passage: (json['passage'] as List?)?.map((e) => BibleDataPassageItem.fromJson(e)).toList(),
      previous: json['previous'] != null ? BibleDataPrevious.fromJson(json['previous']) : null,
      next: json['next'] != null ? BibleDataNext.fromJson(json['next']) : null,
    );
}

class BibleDataPassageItem {
  num? chapter;
  num? verse;
  String? text;

  BibleDataPassageItem({
    this.chapter,
    this.verse,
    this.text,
  });

  factory BibleDataPassageItem.fromJson(Map<String, dynamic> json) => BibleDataPassageItem(
      chapter: json['chapter'],
      verse: json['verse'],
      text: json['text'],
    );
}

class BibleDataPrevious {
  String? reference;
  String? book;
  num? chapter;
  num? verse;

  BibleDataPrevious({
    this.reference,
    this.book,
    this.chapter,
    this.verse,
  });

  factory BibleDataPrevious.fromJson(Map<String, dynamic> json) => BibleDataPrevious(
      reference: json['reference'],
      book: json['book'],
      chapter: json['chapter'],
      verse: json['verse'],
    );
}

class BibleDataNext {
  String? reference;
  String? book;
  num? chapter;
  num? verse;

  BibleDataNext({
    this.reference,
    this.book,
    this.chapter,
    this.verse,
  });

  factory BibleDataNext.fromJson(Map<String, dynamic> json) => BibleDataNext(
      reference: json['reference'],
      book: json['book'],
      chapter: json['chapter'],
      verse: json['verse'],
    );
}

class BibleRequest {
  String book;
  String version;
  int chapter;
  int? verse;
  int? verseEnd;

  BibleRequest({
    required this.book,
    required this.version,
    required this.chapter,
    this.verse,
    this.verseEnd,
  });

  Map<String, dynamic> toJson() => {
      'book': book,
      'version': version,
      'chapter': chapter,
      if (verse != null) 'verse': verse,
      if (verseEnd != null) 'verseEnd': verseEnd,
    };
}
