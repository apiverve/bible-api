declare module '@apiverve/bible' {
  export interface bibleOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface bibleResponse {
    status: string;
    error: string | null;
    data: BibleData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BibleData {
      text:                 null | string;
      book:                 null | string;
      abbr:                 null | string;
      chapter:              number | null;
      verses:               (number | null)[];
      version:              null | string;
      testament:            null | string;
      bookNumber:           number | null;
      totalChapters:        number | null;
      totalVersesInChapter: number | null;
      wordCount:            number | null;
  }

  export default class bibleWrapper {
    constructor(options: bibleOptions);

    execute(callback: (error: any, data: bibleResponse | null) => void): Promise<bibleResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: bibleResponse | null) => void): Promise<bibleResponse>;
    execute(query?: Record<string, any>): Promise<bibleResponse>;
  }
}
