# Bible API - PHP Package

Bible is a simple tool for getting bible verses. Simply provide the book, chapter, and verse, and the API will return the verse.

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
    'verse' => 17
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
    $response = $client->execute(['book' => 'Genesis', 'version' => 'KJV', 'chapter' => 5, 'verse' => 17]);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/bible?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://bible.apiverve.com?utm_source=php&utm_medium=readme](https://bible.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
