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
}

export default function SEO({ title, description, image, path, type = "website" }: SEOProps) {
  const fullTitle = title.includes(SITE_NAME) ? title : `${title} | ${SITE_NAME}`;
  const desc = description || "أنمي نوفا — مشاهدة وتحميل الأنمي المترجم والمدبلج مجاناً بجودة عالية.";
  const url = path ? `${SITE_URL}${path}` : SITE_URL;
  const img = image || DEFAULT_IMAGE;

  return (
    <Helmet>
      <title>{fullTitle}</title>
      <meta name="description" content={desc} />
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
