# Bible API - Ruby Gem

Bible retrieves scripture passages and verses across nine public-domain translations, including the modern Berean Standard Bible (BSB), KJV, ASV, YLT and Darby. Supply a book, chapter, and optional verse number to get the text with testament classification, word count, and chapter totals.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_bible'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_bible
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_bible'

# Initialize the client
client = APIVerve::Bible::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  book: "Genesis",
  version: "KJV",
  chapter: 5,
  verse: 17
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ book: "Genesis", version: "KJV", chapter: 5, verse: 17 })
  puts response["data"]
rescue APIVerve::Bible::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Bible::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Bible::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/bible?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/bible?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/bible?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
