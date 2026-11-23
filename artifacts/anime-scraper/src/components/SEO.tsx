import { Helmet } from "react-helmet-async";

const SITE_URL = "https://animenovaa.duckdns.org";
const SITE_NAME = "Anime NOVA";
const DEFAULT_IMAGE = `${SITE_URL}/opengraph.jpg`;

interface SEOProps {
  title: string;
  description?: string;
  image?: string;
  path?: string;
  type?: "website" | "video.other" | "video.episode";
  noIndex?: boolean;
}

export default function SEO({
  title,
  description,
  image,
  path,
  type = "website",
  noIndex = false,
}: SEOProps) {
  const fullTitle =
    title.includes("نوفا") || title.includes(SITE_NAME)
      ? title
      : `${title} | أنمي نوفا - ${SITE_NAME}`;
  const desc =
    description ||
    "موقع وتطبيق أنمي نوفا (Anime NOVA) لمشاهدة وتحميل الأنمي المترجم والمدبلج وقراءة المانجا ومسلسلات سبيستون مجاناً بجودة FHD بدون إعلانات.";
  const cleanPath = !path || path === "/" ? "/" : path.replace(/\/+$/, "");
  const url = cleanPath === "/" ? `${SITE_URL}/` : `${SITE_URL}${cleanPath}`;
  const img = image || DEFAULT_IMAGE;
  const robots = noIndex
    ? "noindex, follow"
    : "index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1";

  return (
    <Helmet>
      <title>{fullTitle}</title>
      <meta name="description" content={desc} />
      <meta name="robots" content={robots} />
      <link rel="canonical" href={url} />
      <meta property="og:title" content={fullTitle} />
      <meta property="og:description" content={desc} />
      <meta property="og:url" content={url} />
      <meta property="og:image" content={img} />
      <meta property="og:type" content={type} />
      <meta name="twitter:title" content={fullTitle} />
      <meta name="twitter:description" content={desc} />
      <meta name="twitter:image" content={img} />
    </Helmet>
  );
}
