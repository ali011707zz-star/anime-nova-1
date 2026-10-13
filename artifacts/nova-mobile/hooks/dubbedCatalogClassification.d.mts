export type DubbedCatalogSection = "animation" | "cartoon";
export type DubbedCatalogClassificationInput = {
  tags?: string[];
  classification?: {
    contentFamilies?: string[];
    localizationLabels?: string[];
    sourceTags?: string[];
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
