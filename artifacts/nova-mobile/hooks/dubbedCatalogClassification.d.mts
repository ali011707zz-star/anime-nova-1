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
