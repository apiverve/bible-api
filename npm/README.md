# Bible API

Bible retrieves scripture passages and verses across nine public-domain translations, including the modern Berean Standard Bible (BSB), KJV, ASV, YLT and Darby. Look up a book, chapter and verse range or a written reference like Jn 3:16-18, search for words and phrases, get a random verse or the verse of the day, and step to the previous or next passage.

[![npm version](https://img.shields.io/npm/v/@apiverve/bible.svg)](https://www.npmjs.com/package/@apiverve/bible)

This is a JavaScript wrapper for the [Bible API](https://apiverve.com/marketplace/bible?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/bible
```

Using yarn:
```shell
yarn add @apiverve/bible
```

---

## Configuration

Before using the Bible API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Bible API documentation is found here: [https://docs.apiverve.com/ref/bible](https://docs.apiverve.com/ref/bible?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const bibleAPI = require('@apiverve/bible');
const api = new bibleAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  book: "Genesis",
  version: "KJV",
  chapter: 5,
  verse: 17,
  verseEnd: 18
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  book: "Genesis",
  version: "KJV",
  chapter: 5,
  verse: 17,
  verseEnd: 18
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  book: "Genesis",
  version: "KJV",
  chapter: 5,
  verse: 17,
  verseEnd: 18
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
