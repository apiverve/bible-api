# Bible API - PHP Package

Bible retrieves scripture passages and verses across nine public-domain translations, including the modern Berean Standard Bible (BSB), KJV, ASV, YLT and Darby. Look up a book, chapter and verse range or a written reference like Jn 3:16-18, search for words and phrases, get a random verse or the verse of the day, and step to the previous or next passage.

## Installation

Install via Composer:

```bash
composer require apiverve/bible
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Bible\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'book' => 'Genesis',
    'version' => 'KJV',
    'chapter' => 5,
    'verse' => 17,
    'verseEnd' => 18
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Bible\Client;
use APIVerve\Bible\Exceptions\APIException;
use APIVerve\Bible\Exceptions\ValidationException;

try {
    $response = $client->execute(['book' => 'Genesis', 'version' => 'KJV', 'chapter' => 5, 'verse' => 17, 'verseEnd' => 18]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "text": "But with thee will I establish my covenant; and thou shalt come into the ark, thou, and thy sons, and thy wife, and thy sons’ wives with thee. And of every living thing of all flesh, two of every sort shalt thou bring into the ark, to keep them alive with thee; they shall be male and female.",
    "book": "Genesis",
    "abbr": "Ge",
    "chapter": 6,
    "verses": [
      18,
      19
    ],
    "version": "KJV",
    "testament": "Old Testament",
    "bookNumber": 1,
    "totalChapters": 50,
    "totalVersesInChapter": 22,
    "wordCount": 58,
    "reference": "Genesis 6:18-19",
    "passage": [
      {
        "chapter": 6,
        "verse": 18,
        "text": "But with thee will I establish my covenant; and thou shalt come into the ark, thou, and thy sons, and thy wife, and thy sons’ wives with thee."
      },
      {
        "chapter": 6,
        "verse": 19,
        "text": "And of every living thing of all flesh, two of every sort shalt thou bring into the ark, to keep them alive with thee; they shall be male and female."
      }
    ],
    "previous": {
      "reference": "Genesis 6:17",
      "book": "Genesis",
      "chapter": 6,
      "verse": 17
    },
    "next": {
      "reference": "Genesis 6:20",
      "book": "Genesis",
      "chapter": 6,
      "verse": 20
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/bible?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/bible?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/bible?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
