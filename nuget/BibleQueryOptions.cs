using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.Bible
{
    /// <summary>
    /// Query options for the Bible API
    /// </summary>
    public class BibleQueryOptions
    {
        /// <summary>
        /// The name of the book in the bible (e.g., Genesis). Abbreviations such as Gen, Ps, 1 Cor or Jn are accepted
        /// </summary>
        [JsonProperty("book")]
        public string Book { get; set; }

        /// <summary>
        /// The Bible translation version
        /// </summary>
        [JsonProperty("version")]
        public string Version { get; set; }

        /// <summary>
        /// The chapter number in the book
        /// </summary>
        [JsonProperty("chapter")]
        public int Chapter { get; set; }

        /// <summary>
        /// The verse number in the chapter
        /// </summary>
        [JsonProperty("verse")]
        public int? Verse { get; set; }

        /// <summary>
        /// Last verse of a range starting at verse (e.g., verse=16&verseEnd=18). A value past the end of the chapter returns the rest of it
        /// </summary>
        [JsonProperty("verseEnd")]
        public int? VerseEnd { get; set; }
    }
}
