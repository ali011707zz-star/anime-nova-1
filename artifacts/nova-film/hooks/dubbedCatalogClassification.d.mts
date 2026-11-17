export type DubbedCatalogSection = "animation" | "cartoon";
export type DubbedCatalogClassificationInput = {
  tags?: string[];
  classification?: {
    status?: string;
    contentFamilies?: string[];
    familyEvidence?: string;
    localizationLabels?: string[];
    sourceTags?: string[];
    sourceCategories?: string[];
    detailCheckedAt?: string | null;
  } | null;
};
export function normalizedLocalizationLabel(label: string): string | undefined;
export function catalogBadge(
  item: DubbedCatalogClassificationInput,
  section: DubbedCatalogSection,
): string | undefined;
export function belongsInSection(
  item: DubbedCatalogClassificationInput,
  section: DubbedCatalogSection,
): boolean;
export function isLegacyCartoonEntry(item: unknown): boolean;
export function mergeCatalogRows<TLegacy, TCatalog>(
  legacyRows: TLegacy[],
  catalogRows: TCatalog[],
): Array<TLegacy | TCatalog>;
export function mergeDubbedCatalogFeedTitles<T extends {
  id?: string | number;
  provider_title_id?: string;
  poster_url?: string | null;
  backdrop_url?: string | null;
}>(current: T[], incoming: T[]): T[];
export function trustedLegacyBadge(item: unknown, feed: string): string | undefined;
