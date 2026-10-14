export type StardimaCatalogTitle = {
  id: string | number;
  provider_title_id: string;
  title: string;
  title_ar?: string | null;
  title_en?: string | null;
  title_native?: string | null;
  synonyms?: string[] | null;
  media_type?: string;
  release_year?: number | null;
  episode_count?: number | null;
  poster_url?: string | null;
  backdrop_url?: string | null;
  tags?: string[];
  classification?: {
    status?: string;
    contentFamilies?: string[];
    localizationLabels?: string[];
    sourceTags?: string[];
    sourceCategories?: string[];
  } | null;
};

export function catalogBadge(item: unknown): string | undefined;
export function isLegacyCartoonEntry(item: unknown): boolean;
export function mergeCatalogRows<TLegacy, TCatalog extends { media_type?: string }>(
  legacyRows: Array<{ kind: string; item: TLegacy }>,
  catalogRows: Array<{ kind: string; item: TCatalog }>,
): Array<{ kind: string; item: TLegacy | TCatalog }>;
