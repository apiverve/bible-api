# Bible API - Dart/Flutter Client

Bible retrieves scripture passages and verses across nine public-domain translations, including the modern Berean Standard Bible (BSB), KJV, ASV, YLT and Darby. Supply a book, chapter, and optional verse number to get the text with testament classification, word count, and chapter totals.

[![pub package](https://img.shields.io/pub/v/apiverve_bible.svg)](https://pub.dev/packages/apiverve_bible)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Bible API](https://apiverve.com/marketplace/bible?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_bible: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_bible/apiverve_bible.dart';

void main() async {
  final client = BibleClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'book': 'Genesis',
      'version': 'KJV',
      'chapter': 5,
      'verse': 17
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "text": "But with thee will I establish my covenant; and thou shalt come into the ark, thou, and thy sons, and thy wife, and thy sons' wives with thee.",
    "book": "Genesis",
    "abbr": "gn",
    "chapter": 6,
    "verses": [
      18
    ],
    "version": "KJV",
    "testament": "Old Testament",
    "bookNumber": 1,
    "totalChapters": 50,
    "totalVersesInChapter": 22,
    "wordCount": 29
  }
}
```

## API Reference

- **API Home:** [Bible API](https://apiverve.com/marketplace/bible?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/bible](https://docs.apiverve.com/ref/bible?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
