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
        /// The name of the book in the bible (e.g., Genesis)
        /// </summary>
        [JsonProperty("book")]
        public string Book { get; set; }

        /// <summary>
        /// The chapter number in the book
        /// </summary>
        [JsonProperty("chapter")]
        public string Chapter { get; set; }

        /// <summary>
        /// The verse number in the chapter
        /// </summary>
        [JsonProperty("verse")]
        public string Verse { get; set; }
    }
}
