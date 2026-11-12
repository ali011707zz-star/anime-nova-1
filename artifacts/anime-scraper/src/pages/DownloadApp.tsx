import React, { useState } from "react";
import {
  Download,
  Tv,
  Smartphone,
  BookOpen,
  Play,
  Copy,
  Check,
  Sparkles,
  QrCode,
  Bell,
  WifiOff,
  Film,
  ExternalLink,
  Sun,
  Moon,
  FastForward,
  CheckCircle2,
  Compass,
  Layers,
  ShieldCheck,
  X,
  ZoomIn,
  Globe,
} from "lucide-react";

const APP_VERSION = "1.0.6";
const MOBILE_APK_URL = `/Anime-Nova.apk?v=${APP_VERSION}`;
const TV_APK_URL = `/nova.apk?v=${APP_VERSION}`;
const DOWNLOADER_CODE = "2576388";
const DOWNLOADER_URL = "https://aftv.news/2576388";

type ScreenCategory = "all" | "anime" | "manga" | "dubbed";

interface AppScreenItem {
  id: string;
  title: string;
  subtitle: string;
  category: ScreenCategory;
  tag: string;
  tagColor: string;
  image: string;
}

const REAL_SCREENSHOTS: AppScreenItem[] = [
  {
    id: "home",
    title: "الصفحة الرئيسية الذكية",
    subtitle: "بانر مختارات الموسم، قسم متابعة المشاهدة مع نسبة التقدم، وأحدث الحلقات المضافة فور صدورها",
    category: "anime",
    tag: "واجهة الأنمي",
    tagColor: "#06b6d4",
    image: "/app-screens/screen-home.png",
  },
  {
    id: "detail",
    title: "صفحة تفاصيل الأنمي الشاملة",
    subtitle: "القصة مترجمة بالعربية، التقييم والترتيب العالمي (MAL)، الحلقات، التعليقات، وقسم الشخصيات",
    category: "anime",
    tag: "تفاصيل العمل",
    tagColor: "#0284c7",
    image: "/app-screens/screen-detail.png",
  },
  {
    id: "browse",
    title: "المكتبة والتصفح والفلترة",
    subtitle: "تصفح حسب التصنيفات المصورة (مغامرة، أكشن، كوميديا، فانتازيا) والفلترة حسب السنة والشعبية",
    category: "anime",
    tag: "تصفح متقدم",
    tagColor: "#7c3aed",
    image: "/app-screens/screen-browse.png",
  },
  {
    id: "manga",
    title: "مكتبة المانجا المترجمة",
    subtitle: "أشهر أعمال المانجا اليابانية (ون بيس، هنتر إكس هنتر، بيرسيرك، البرسيم الأسود) بفصول كاملة",
    category: "manga",
    tag: "المانجا اليابانية",
    tagColor: "#10b981",
    image: "/app-screens/screen-manga.png",
  },
  {
    id: "manhwa",
    title: "المانهوا الكورية الملونة",
    subtitle: "مكتبة ضخمة من المانهوا الملونة المستمرة والمكتملة مع قارئ عمودي سريع الاستجابة وبدون إعلانات",
    category: "manga",
    tag: "مانهوا ملونة",
    tagColor: "#059669",
    image: "/app-screens/screen-manhwa.png",
  },
  {
    id: "spacetoon",
    title: "مسلسلات وأفلام سبيستون",
    subtitle: "جميع أفلام المحقق كونان المدبلجة وروائع سبيستون الكلاسيكية والحديثة حصرياً داخل التطبيق",
    category: "dubbed",
    tag: "سبيستون حصرياً",
    tagColor: "#0891b2",
    image: "/app-screens/screen-spacetoon.png",
  },
  {
    id: "cartoon",
    title: "كرتون مدبلج ومترجم للعربية",
    subtitle: "مكتبة متكاملة تضم سبونج بوب، نبيل التنس، سكوبي دو، سبايدرمان، وباور رينجرز بجودة عالية",
    category: "dubbed",
    tag: "كرتون عربي",
    tagColor: "#8b5cf6",
    image: "/app-screens/screen-cartoon.png",
  },
  {
    id: "animation",
    title: "أفلام ومسلسلات الأنيميشن",
    subtitle: "أحدث إنتاجات الأنيميشن العالمية المدبلجة والمترجمة للعربية بمواسمها الكاملة",
    category: "dubbed",
    tag: "أنيميشن عالمي",
    tagColor: "#ec4899",
    image: "/app-screens/screen-animation.png",
  },
];

const ALL_FEATURES = [
  {
    number: "01",
    icon: BookOpen,
    title: "مكتبة المانجا والمانهوا الحصرية",
    description:
      "قسم متكامل وحصري للتطبيق يضم آلاف الفصول من المانجا اليابانية والمانهوا الكورية الملونة (المستمرة والمكتملة) مع قارئ مدمج فائق السرعة وبحث فوري.",
    highlights: [
      "قارئ عمودي سلس (Webtoon) وتقليب صفحات",
      "مانهوا ملونة ومانجا مترجمة بدقة عالية",
      "تصفح حسب المستمرة والمكتملة وبدون إعلانات",
    ],
    accent: "#10b981",
  },
  {
    number: "02",
    icon: Tv,
    title: "نسخة تلفاز أندرويد (Android TV) احترافية",
    description:
      "نسخة مصممة خصيصاً للشاشات الذكية وأجهزة TV Box، تدعم التنقل السلس بالريموت (D-Pad) في جميع القوائم والفلاتر والشخصيات، مع تسجيل دخول فوري عبر رمز QR.",
    highlights: [
      `تحميل فوري عبر Downloader بالكود: ${DOWNLOADER_CODE}`,
      "مؤشر تركيز واضح في التصفح والفلتر والشخصيات",
      "تسجيل دخول بحساب Google عبر مسح QR بالهاتف",
    ],
    accent: "#06b6d4",
  },
  {
    number: "03",
    icon: FastForward,
    title: "مشغل ذكي + تخطي المقدمة والنهاية",
    description:
      "مشغل فيديو مدمج يدعم أكثر من 10 سيرفرات بث سريعة بجودات حتى 1080p، مع أزرار تخطي المقدمة (Skip Intro) وتخطي النهاية أعلى شريط التقدم مباشرة.",
    highlights: [
      "تخطي المقدمة والنهاية بضغطة زر واحدة",
      "استئناف المشاهدة من نفس الثانية التي توقفت عندها",
      "تبديل سلس بين السيرفرات والجودات",
    ],
    accent: "#0284c7",
  },
  {
    number: "04",
    icon: Film,
    title: "سبيستون، كرتون مدبلج، وأنيميشن عالمي",
    description:
      "ثلاثة أقسام ضخمة وحصرية في التطبيق تجمع لك مسلسلات وأفلام سبيستون، الكرتون العربي المدبلج والمترجم، وأفلام الأنيميشن العالمية في مكان واحد.",
    highlights: [
      "سلسلة أفلام المحقق كونان ومسلسلات سبيستون",
      "كرتون عربي وعالمي بمواسم كاملة",
      "أفلام ومسلسلات أنيميشن مدبلجة ومترجمة",
    ],
    accent: "#8b5cf6",
  },
  {
    number: "05",
    icon: WifiOff,
    title: "قسم تنزيلاتي للمشاهدة بدون إنترنت",
    description:
      "حمّل الحلقات المفضلة على جهازك بجودات متعددة وتابع مشاهدتها في أي وقت ومن أي مكان عبر قسم «تنزيلاتي» المزود بمدير ملفات منظم وسريع.",
    highlights: [
      "تنزيل مباشر للحلقات داخل التطبيق",
      "حفظ وتنظيم الحلقات المحمّلة",
      "مشاهدة أوفلاين كاملة بدون استهلاك بيانات",
    ],
    accent: "#ec4899",
  },
  {
    number: "06",
    icon: Bell,
    title: "تعليقات، تقييمات، وإشعارات فورية",
    description:
      "تفاعل مع مجتمع محبي الأنمي، أضف تقييمك وتعليقك على الحلقات، واستقبل إشعارات فورية على هاتفك عند الرد على تعليقك أو نزول حلقة جديدة.",
    highlights: [
      "إشعارات فورية على الهاتف عند الرد على تعليقك",
      "مزامنة قائمتي وسجل المشاهدة عبر حساب Google",
      "تعدد المظاهر (الوضع الفاتح، الداكن، AMOLED)",
    ],
    accent: "#f59e0b",
  },
];

export default function DownloadApp({ onBack }: { onBack?: () => void }) {
  const [lightMode, setLightMode] = useState(true);
  const [copiedCode, setCopiedCode] = useState(false);
  const [heroPreviewIndex, setHeroPreviewIndex] = useState(0);
  const [screenFilter, setScreenFilter] = useState<ScreenCategory>("all");
  const [lightboxShot, setLightboxShot] = useState<AppScreenItem | null>(null);

  const heroScreens = [
    REAL_SCREENSHOTS[0], // Home
    REAL_SCREENSHOTS[3], // Manga
    REAL_SCREENSHOTS[4], // Manhwa
    REAL_SCREENSHOTS[5], // Spacetoon
    REAL_SCREENSHOTS[1], // Detail
  ];

  const activeHeroShot = heroScreens[heroPreviewIndex] || REAL_SCREENSHOTS[0];

  const filteredScreenshots =
    screenFilter === "all"
      ? REAL_SCREENSHOTS
      : REAL_SCREENSHOTS.filter((s) => s.category === screenFilter);

  const copyDownloaderCode = () => {
    try {
      navigator.clipboard.writeText(DOWNLOADER_CODE);
      setCopiedCode(true);
      setTimeout(() => setCopiedCode(false), 2500);
    } catch {
      setCopiedCode(true);
      setTimeout(() => setCopiedCode(false), 2500);
    }
  };

  const goToWebApp = () => {
    if (onBack) {
      onBack();
    } else {
      window.location.href = "/";
    }
  };

  return (
    <div
      dir="rtl"
      className={`min-h-screen font-['Cairo'] transition-colors duration-300 ${
        lightMode ? "bg-[#F4F6FA] text-[#0F172A]" : "bg-[#07090E] text-[#F1F5F9]"
      }`}
    >
      {/* ── Standalone Top Bar (Independent from Web App) ── */}
      <header
        className={`sticky top-0 z-40 backdrop-blur-xl border-b transition-colors ${
          lightMode
            ? "bg-white/90 border-slate-200/80"
            : "bg-[#0B0F17]/90 border-white/[0.08]"
        }`}
      >
        <div className="max-w-7xl mx-auto px-4 sm:px-6 h-16 flex items-center justify-between gap-4">
          {/* Zone 1: Brand Wordmark matching the real app header */}
          <button
            type="button"
            onClick={goToWebApp}
            className="flex items-center gap-2 shrink-0 select-none"
            dir="ltr"
          >
            <span className="w-1 h-6 rounded-full bg-[#06b6d4]" />
            <span className="text-lg sm:text-xl font-black tracking-wide">
              ANIME <span className="text-[#06b6d4]">NOVA</span>
            </span>
          </button>

          {/* Zone 2: Clean Single-Line Anchor Links */}
          <nav className="hidden md:flex items-center gap-7 text-xs sm:text-sm font-bold">
            <a
              href="#screens"
              className={`transition-colors whitespace-nowrap shrink-0 ${
                lightMode ? "text-slate-600 hover:text-slate-950" : "text-slate-300 hover:text-white"
              }`}
            >
              شاشات التطبيق
            </a>
            <a
              href="#features"
              className={`transition-colors whitespace-nowrap shrink-0 ${
                lightMode ? "text-slate-600 hover:text-slate-950" : "text-slate-300 hover:text-white"
              }`}
            >
              جميع المميزات
            </a>
            <a
              href="#manga-section"
              className={`transition-colors whitespace-nowrap shrink-0 ${
                lightMode ? "text-slate-600 hover:text-slate-950" : "text-slate-300 hover:text-white"
              }`}
            >
              المانجا والمانهوا
            </a>
            <a
              href="#tv-guide"
              className={`transition-colors whitespace-nowrap shrink-0 ${
                lightMode ? "text-slate-600 hover:text-slate-950" : "text-slate-300 hover:text-white"
              }`}
            >
              نسخة التلفاز (Downloader)
            </a>
          </nav>

          {/* Zone 3: Theme Switcher & Web Platform Link */}
          <div className="flex items-center gap-2 shrink-0">
            <button
              type="button"
              onClick={() => setLightMode((v) => !v)}
              aria-label="تبديل المظهر"
              className={`h-10 px-3 rounded-xl border flex items-center gap-1.5 text-xs font-bold transition-all active:scale-95 whitespace-nowrap shrink-0 ${
                lightMode
                  ? "bg-slate-100 border-slate-200 text-slate-700 hover:bg-slate-200/70"
                  : "bg-white/5 border-white/10 text-slate-200 hover:bg-white/10"
              }`}
            >
              {lightMode ? (
                <>
                  <Moon className="w-4 h-4 text-indigo-600" />
                  <span className="hidden sm:inline">الوضع الداكن</span>
                </>
              ) : (
                <>
                  <Sun className="w-4 h-4 text-amber-400" />
                  <span className="hidden sm:inline">الوضع الفاتح</span>
                </>
              )}
            </button>

            <button
              type="button"
              onClick={goToWebApp}
              className={`h-10 px-3.5 rounded-xl border text-xs font-extrabold flex items-center gap-1.5 transition-all active:scale-95 whitespace-nowrap shrink-0 ${
                lightMode
                  ? "bg-slate-900 text-white border-slate-900 hover:bg-slate-800"
                  : "bg-cyan-500 text-slate-950 border-cyan-400 hover:bg-cyan-400"
              }`}
            >
              <Globe className="w-3.5 h-3.5" />
              <span>تصفح الموقع</span>
            </button>
          </div>
        </div>
      </header>

      {/* ── HERO SECTION (Split 2-Column on Desktop, Stacked on Mobile) ── */}
      <section className="relative overflow-hidden pt-8 pb-16 px-4 sm:px-6">
        {/* Ambient Mesh Glow */}
        <div
          className="pointer-events-none absolute -top-24 right-1/4 w-[550px] h-[550px] rounded-full blur-3xl opacity-25"
          style={{
            background:
              "radial-gradient(circle, rgba(6,182,212,0.45) 0%, rgba(124,58,237,0.25) 55%, transparent 100%)",
          }}
        />

        <div className="max-w-7xl mx-auto grid grid-cols-1 lg:grid-cols-12 gap-10 lg:gap-8 items-center relative z-10">
          {/* Right Column: Value Proposition & Download Actions */}
          <div className="lg:col-span-7 text-center lg:text-right space-y-5">
            <div className="inline-flex items-center gap-2 text-xs sm:text-sm font-extrabold text-[#0284c7] dark:text-cyan-400">
              <span>الإصدار الرسمي v{APP_VERSION}</span>
              <span aria-hidden="true">·</span>
              <span>للأندرويد وشاشات التلفاز الذكية Android TV</span>
              <span aria-hidden="true">·</span>
              <span>مجاني بالكامل</span>
            </div>

            <h1 className="text-[34px] sm:text-[50px] lg:text-[54px] font-black leading-[1.18] tracking-tight">
              كل الأنمي والمانجا وسبيستون في{" "}
              <span className="text-transparent bg-clip-text bg-gradient-to-l from-[#06b6d4] via-[#0284c7] to-[#7c3aed]">
                أنمي نوفا
              </span>
            </h1>

            <p
              className={`text-[15px] sm:text-[17px] leading-[1.85] max-w-2xl mx-auto lg:mx-0 font-semibold ${
                lightMode ? "text-slate-600" : "text-slate-300"
              }`}
            >
              تطبيقك العربي الشامل لمشاهدة وتحميل الأنمي المترجم والمدبلج، وقراءة آلاف فصول{" "}
              <strong className={lightMode ? "text-slate-900" : "text-white"}>
                المانجا اليابانية والمانهوا الملونة
              </strong>
              ، مع مكتبة ضخمة لمسلسلات وأفلام{" "}
              <strong className={lightMode ? "text-slate-900" : "text-white"}>
                سبيستون والكرتون والأنيميشن
              </strong>{" "}
              بجودة فائقة وبدون إعلانات مزعجة — يعمل بكفاءة على الهواتف وشاشات التلفاز الذكية.
            </p>

            {/* Primary Download Buttons */}
            <div className="pt-2 flex flex-col sm:flex-row items-center justify-center lg:justify-start gap-3.5">
              <a
                href={MOBILE_APK_URL}
                download={`Anime-Nova-v${APP_VERSION}.apk`}
                className="w-full sm:w-auto px-7 h-14 rounded-2xl bg-gradient-to-l from-[#0284c7] to-[#06b6d4] hover:brightness-105 text-white font-black text-[15px] flex items-center justify-center gap-3 shadow-[0_12px_30px_rgba(6,182,212,0.32)] transition-transform active:scale-[0.98] whitespace-nowrap"
              >
                <Smartphone className="w-5 h-5 shrink-0" />
                <span>تحميل للأندرويد (نسخة الهاتف)</span>
              </a>

              <a
                href={TV_APK_URL}
                download={`Anime-Nova-TV-v${APP_VERSION}.apk`}
                className={`w-full sm:w-auto px-7 h-14 rounded-2xl font-black text-[15px] flex items-center justify-center gap-3 border transition-transform active:scale-[0.98] whitespace-nowrap ${
                  lightMode
                    ? "bg-[#0F172A] hover:bg-slate-800 text-white border-slate-900 shadow-lg shadow-slate-900/15"
                    : "bg-white/10 hover:bg-white/15 text-white border-white/15 shadow-lg"
                }`}
              >
                <Tv className="w-5 h-5 text-cyan-400 shrink-0" />
                <span>تحميل لشاشات التلفاز (Android TV)</span>
              </a>
            </div>

            {/* Android TV Downloader Code Card */}
            <div
              className={`mt-4 max-w-xl mx-auto lg:mx-0 rounded-2xl p-4 border text-right transition-colors ${
                lightMode
                  ? "bg-white border-slate-200/90 shadow-sm"
                  : "bg-[#111622] border-white/10 shadow-xl"
              }`}
            >
              <div className="flex items-center justify-between gap-3 flex-wrap sm:flex-nowrap">
                <div className="flex items-center gap-3 min-w-0">
                  <div className="w-11 h-11 rounded-xl bg-cyan-500/12 border border-cyan-500/25 flex items-center justify-center shrink-0 text-[#0284c7] dark:text-cyan-400">
                    <Tv className="w-5 h-5" />
                  </div>
                  <div className="min-w-0">
                    <p className="text-xs font-black text-[#0284c7] dark:text-cyan-400">
                      كود تطبيق Downloader لشاشات التلفاز و TV Box
                    </p>
                    <p
                      className={`text-xs font-bold mt-0.5 ${
                        lightMode ? "text-slate-600" : "text-slate-400"
                      }`}
                    >
                      أدخل الرمز في تطبيق Downloader لتحميل نسخة التلفاز مباشرة
                    </p>
                  </div>
                </div>

                <button
                  type="button"
                  onClick={copyDownloaderCode}
                  className="shrink-0 px-4 py-2.5 rounded-xl bg-[#0F172A] text-white font-mono text-base font-black tracking-widest flex items-center gap-2 hover:bg-slate-800 active:scale-95 transition-all border border-white/10"
                >
                  <span>{DOWNLOADER_CODE}</span>
                  {copiedCode ? (
                    <Check className="w-4 h-4 text-emerald-400" />
                  ) : (
                    <Copy className="w-4 h-4 text-cyan-400" />
                  )}
                </button>
              </div>

              <div
                className={`mt-3 pt-2.5 border-t flex items-center justify-between text-[11px] font-bold ${
                  lightMode ? "border-slate-100 text-slate-500" : "border-white/5 text-slate-400"
                }`}
              >
                <span>أو عبر الرابط المختصر في المتصفح أو Downloader:</span>
                <a
                  href={DOWNLOADER_URL}
                  target="_blank"
                  rel="noreferrer"
                  className="font-mono text-[#0284c7] dark:text-cyan-400 hover:underline flex items-center gap-1"
                  dir="ltr"
                >
                  <span>aftv.news/2576388</span>
                  <ExternalLink className="w-3 h-3" />
                </a>
              </div>
            </div>
          </div>

          {/* Left Column: Interactive Real App Phone Frame Showcase */}
          <div className="lg:col-span-5 flex flex-col items-center">
            <div className="relative flex items-center justify-center">
              {/* Decorative Glow Behind Phone */}
              <div className="absolute -inset-4 rounded-[48px] bg-gradient-to-tr from-[#06b6d4]/25 via-[#7c3aed]/20 to-transparent blur-2xl pointer-events-none" />

              {/* Realistic Smartphone Frame holding ACTUAL user screenshot */}
              <div className="relative w-[275px] sm:w-[300px] rounded-[42px] p-2.5 bg-[#161922] border-[4px] border-[#2D3343] shadow-[0_30px_70px_rgba(0,0,0,0.38)]">
                {/* Speaker / Camera Notch */}
                <div className="w-16 h-1.5 rounded-full bg-white/10 mx-auto mb-2" />

                <div
                  onClick={() => setLightboxShot(activeHeroShot)}
                  className="relative rounded-[32px] overflow-hidden bg-[#090A0C] aspect-[9/19.2] cursor-pointer group border border-white/10"
                >
                  <img
                    src={activeHeroShot.image}
                    alt={activeHeroShot.title}
                    className="w-full h-full object-cover object-top transition-transform duration-300 group-hover:scale-[1.02]"
                  />
                  <div className="absolute inset-x-0 bottom-0 p-3 bg-gradient-to-t from-black/85 via-black/40 to-transparent opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-between text-white text-xs font-bold">
                    <span>{activeHeroShot.title}</span>
                    <ZoomIn className="w-4 h-4 text-cyan-400" />
                  </div>
                </div>
              </div>
            </div>

            {/* Quick Screen Switcher Pills under the Hero Phone */}
            <div className="mt-5 flex flex-wrap items-center justify-center gap-1.5">
              {heroScreens.map((scr, idx) => (
                <button
                  key={scr.id}
                  type="button"
                  onClick={() => setHeroPreviewIndex(idx)}
                  className={`px-3 py-1.5 rounded-xl text-[11px] font-extrabold transition-all whitespace-nowrap ${
                    heroPreviewIndex === idx
                      ? "bg-[#0284c7] text-white shadow-sm"
                      : lightMode
                        ? "bg-white text-slate-600 border border-slate-200 hover:bg-slate-100"
                        : "bg-white/5 text-slate-300 border border-white/10 hover:bg-white/10"
                  }`}
                >
                  {scr.tag}
                </button>
              ))}
            </div>
          </div>
        </div>
      </section>

      {/* ── QUANTITATIVE STATS STRIP ── */}
      <section
        className={`py-9 border-y transition-colors ${
          lightMode ? "bg-white border-slate-200/80" : "bg-[#0C1018] border-white/[0.07]"
        }`}
      >
        <div className="max-w-6xl mx-auto px-4">
          <div className="grid grid-cols-2 sm:grid-cols-4 gap-6 text-center">
            <div>
              <p className="text-2xl sm:text-3xl font-black tabular-nums text-[#0284c7] dark:text-cyan-400">
                +6,500
              </p>
              <p className={`text-xs sm:text-sm font-bold mt-1 ${lightMode ? "text-slate-600" : "text-slate-400"}`}>
                أنمي، سبيستون، وكرتون مدبلج
              </p>
            </div>
            <div>
              <p className="text-2xl sm:text-3xl font-black tabular-nums text-emerald-600 dark:text-emerald-400">
                +3,800
              </p>
              <p className={`text-xs sm:text-sm font-bold mt-1 ${lightMode ? "text-slate-600" : "text-slate-400"}`}>
                مانجا ومانهوا ملونة مترجمة
              </p>
            </div>
            <div>
              <p className="text-2xl sm:text-3xl font-black tabular-nums">1080p FHD</p>
              <p className={`text-xs sm:text-sm font-bold mt-1 ${lightMode ? "text-slate-600" : "text-slate-400"}`}>
                جودة فائقة + تخطي المقدمة والنهاية
              </p>
            </div>
            <div>
              <p className="text-2xl sm:text-3xl font-black tabular-nums text-violet-600 dark:text-violet-400">
                {DOWNLOADER_CODE}
              </p>
              <p className={`text-xs sm:text-sm font-bold mt-1 ${lightMode ? "text-slate-600" : "text-slate-400"}`}>
                كود Downloader الرسمي للتلفاز
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* ── ORIGINAL APP SCREENSHOTS GALLERY ("صور التطبيق الأصلية") ── */}
      <section id="screens" className="py-16 px-4 sm:px-6 max-w-7xl mx-auto">
        <div className="flex flex-col md:flex-row md:items-end justify-between gap-4 mb-10">
          <div>
            <p className="text-xs font-extrabold text-[#0284c7] dark:text-cyan-400 mb-1.5">
              واجهة عربية عصرية · استجابة فورية · بدون إعلانات
            </p>
            <h2 className="text-2xl sm:text-4xl font-black">
              لقطات حقيقية من داخل تطبيق <span className="text-[#0284c7] dark:text-cyan-400">Anime NOVA</span>
            </h2>
          </div>

          {/* Interactive Category Filter Buttons */}
          <div
            className={`flex items-center gap-1.5 p-1.5 rounded-2xl border self-start md:self-auto overflow-x-auto max-w-full ${
              lightMode ? "bg-white border-slate-200" : "bg-[#111622] border-white/10"
            }`}
          >
            {[
              { id: "all", label: "الكل (8 شاشات)" },
              { id: "anime", label: "الأنمي والتصفح" },
              { id: "manga", label: "المانجا والمانهوا" },
              { id: "dubbed", label: "سبيستون والمدبلج" },
            ].map((tab) => (
              <button
                key={tab.id}
                type="button"
                onClick={() => setScreenFilter(tab.id as ScreenCategory)}
                className={`px-3.5 py-2 rounded-xl text-xs font-extrabold transition-all whitespace-nowrap shrink-0 ${
                  screenFilter === tab.id
                    ? "bg-[#0284c7] text-white shadow-sm"
                    : lightMode
                      ? "text-slate-600 hover:text-slate-950"
                      : "text-slate-300 hover:text-white"
                }`}
              >
                {tab.label}
              </button>
            ))}
          </div>
        </div>

        {/* Grid of Real Original Screenshots inside Sleek Phone Mockups */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {filteredScreenshots.map((shot) => (
            <div
              key={shot.id}
              onClick={() => setLightboxShot(shot)}
              className={`group cursor-pointer rounded-3xl p-4 border flex flex-col items-center text-center transition-all hover:-translate-y-1 ${
                lightMode
                  ? "bg-white border-slate-200/90 shadow-sm hover:shadow-xl"
                  : "bg-[#111622] border-white/[0.08] hover:border-cyan-500/40 shadow-xl"
              }`}
            >
              {/* Phone Bezel */}
              <div className="w-full max-w-[230px] rounded-[30px] p-2 bg-[#161922] border-[3px] border-[#2D3343] shadow-lg">
                <div className="w-10 h-1 rounded-full bg-white/15 mx-auto mb-1.5" />
                <div className="relative rounded-[22px] overflow-hidden aspect-[9/19.2] bg-[#090A0C]">
                  <img
                    src={shot.image}
                    alt={shot.title}
                    loading="lazy"
                    className="w-full h-full object-cover object-top transition-transform duration-300 group-hover:scale-[1.03]"
                  />
                  <div className="absolute inset-0 bg-black/0 group-hover:bg-black/20 transition-colors flex items-center justify-center">
                    <span className="opacity-0 group-hover:opacity-100 transition-opacity px-3 py-1.5 rounded-xl bg-black/80 text-white text-[11px] font-bold flex items-center gap-1.5 shadow-lg">
                      <ZoomIn className="w-3.5 h-3.5 text-cyan-400" />
                      <span>تكبير الصورة</span>
                    </span>
                  </div>
                </div>
              </div>

              {/* Caption */}
              <div className="mt-4 space-y-1 px-1">
                <span
                  className="text-[11px] font-extrabold"
                  style={{ color: shot.tagColor }}
                >
                  {shot.tag}
                </span>
                <h3 className="text-base font-black">{shot.title}</h3>
                <p
                  className={`text-xs font-semibold leading-relaxed ${
                    lightMode ? "text-slate-600" : "text-slate-400"
                  }`}
                >
                  {shot.subtitle}
                </p>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* ── MANGA & MANHWA SPOTLIGHT SECTION ── */}
      <section
        id="manga-section"
        className={`py-16 px-4 sm:px-6 border-t transition-colors ${
          lightMode ? "bg-white border-slate-200/80" : "bg-[#0C1018] border-white/[0.07]"
        }`}
      >
        <div className="max-w-7xl mx-auto grid grid-cols-1 lg:grid-cols-12 gap-10 items-center">
          <div className="lg:col-span-6 space-y-5 text-right">
            <p className="text-xs font-extrabold text-emerald-600 dark:text-emerald-400">
              حصرياً داخل تطبيق Anime NOVA · بدون أي إعلانات
            </p>
            <h2 className="text-2xl sm:text-4xl font-black leading-tight">
              أضخم مكتبة للمانجا اليابانية والمانهوا الكورية الملونة
            </h2>
            <p
              className={`text-sm sm:text-base leading-relaxed font-semibold ${
                lightMode ? "text-slate-600" : "text-slate-300"
              }`}
            >
              لا حاجة لتصفح مواقع مليئة بالإعلانات المنبثقة بعد اليوم. يوفر لك تطبيق{" "}
              <strong>Anime NOVA</strong> قسماً متكاملاً يجمع أشهر أعمال المانجا (مثل{" "}
              <strong>ون بيس، هنتر إكس هنتر، بيرسيرك، الارتقاء المنفرد، البرسيم الأسود</strong>) ومئات أعمال المانهوا الملونة المستمرة والمكتملة.
            </p>

            <div className="grid grid-cols-1 sm:grid-cols-2 gap-3.5 pt-2">
              {[
                {
                  title: "قارئ عمودي (Webtoon) فائق السرعة",
                  desc: "تمرير عمودي ناعم ومريح للعين لقراءة فصول المانهوا الملونة والمانجا بدقة كاملة.",
                },
                {
                  title: "تقسيم ذكي وتصفية فورية",
                  desc: "تنقل بلمسة واحدة بين المانجا، المانهوا الملونة، الأعمال المستمرة، والمكتملة.",
                },
                {
                  title: "تحديث يومي للفصول الجديدة",
                  desc: "تُضاف أحدث الفصول المترجمة للعربية تلقائياً مع حفظ تقدم القراءة.",
                },
                {
                  title: "تجربة نظيفة 100% بلا إعلانات",
                  desc: "استمتع بالقراءة المتواصلة بدون أي نوافذ إعلانية تعيق القراءة.",
                },
              ].map((item, i) => (
                <div
                  key={i}
                  className={`p-4 rounded-2xl border ${
                    lightMode
                      ? "bg-[#F4F6FA] border-slate-200/80"
                      : "bg-[#131926] border-white/[0.08]"
                  }`}
                >
                  <div className="flex items-center gap-2 font-black text-sm mb-1">
                    <CheckCircle2 className="w-4 h-4 text-emerald-500 shrink-0" />
                    <span>{item.title}</span>
                  </div>
                  <p className={`text-xs font-semibold leading-relaxed ${lightMode ? "text-slate-600" : "text-slate-400"}`}>
                    {item.desc}
                  </p>
                </div>
              ))}
            </div>
          </div>

          {/* Dual Phone Preview: Manga + Manhwa Original Screenshots */}
          <div className="lg:col-span-6 flex items-center justify-center gap-4 sm:gap-6">
            <div
              onClick={() => setLightboxShot(REAL_SCREENSHOTS[3])}
              className="w-[165px] sm:w-[220px] rounded-[32px] p-2 bg-[#161922] border-[3px] border-[#2D3343] shadow-2xl cursor-pointer transition-transform hover:-translate-y-1.5"
            >
              <div className="rounded-[24px] overflow-hidden aspect-[9/19.2]">
                <img
                  src="/app-screens/screen-manga.png"
                  alt="المانجا المترجمة"
                  className="w-full h-full object-cover object-top"
                />
              </div>
            </div>

            <div
              onClick={() => setLightboxShot(REAL_SCREENSHOTS[4])}
              className="w-[165px] sm:w-[220px] rounded-[32px] p-2 bg-[#161922] border-[3px] border-[#2D3343] shadow-2xl cursor-pointer transition-transform hover:-translate-y-1.5 mt-8"
            >
              <div className="rounded-[24px] overflow-hidden aspect-[9/19.2]">
                <img
                  src="/app-screens/screen-manhwa.png"
                  alt="المانهوا الملونة"
                  className="w-full h-full object-cover object-top"
                />
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ── ALL 6 CORE FEATURES GRID ── */}
      <section id="features" className="py-16 px-4 sm:px-6 max-w-7xl mx-auto">
        <div className="text-center max-w-2xl mx-auto mb-12">
          <p className="text-xs font-extrabold text-[#0284c7] dark:text-cyan-400 mb-2">
            كل ما يحتاجه متابع الأنمي والمانجا في مكان واحد
          </p>
          <h2 className="text-2xl sm:text-4xl font-black">
            مميزات تطبيق Anime NOVA للهاتف والتلفاز
          </h2>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {ALL_FEATURES.map((feat) => {
            const Icon = feat.icon;
            return (
              <div
                key={feat.number}
                className={`rounded-3xl p-6 border flex flex-col justify-between transition-all ${
                  lightMode
                    ? "bg-white border-slate-200/90 shadow-sm hover:border-slate-300"
                    : "bg-[#111622] border-white/[0.08] hover:border-white/20"
                }`}
              >
                <div>
                  <div className="flex items-center justify-between mb-4">
                    <div
                      className="w-12 h-12 rounded-2xl flex items-center justify-center"
                      style={{
                        backgroundColor: `${feat.accent}18`,
                        color: feat.accent,
                      }}
                    >
                      <Icon className="w-6 h-6" />
                    </div>
                    <span
                      className={`text-sm font-mono font-black ${
                        lightMode ? "text-slate-400" : "text-slate-500"
                      }`}
                    >
                      {feat.number}.
                    </span>
                  </div>

                  <h3 className="text-lg font-black mb-2">{feat.title}</h3>
                  <p
                    className={`text-xs sm:text-[13px] leading-relaxed font-semibold ${
                      lightMode ? "text-slate-600" : "text-slate-300"
                    }`}
                  >
                    {feat.description}
                  </p>
                </div>

                <div
                  className={`mt-5 pt-4 border-t space-y-2 ${
                    lightMode ? "border-slate-100" : "border-white/[0.06]"
                  }`}
                >
                  {feat.highlights.map((h, i) => (
                    <div key={i} className="flex items-center gap-2 text-xs font-bold">
                      <CheckCircle2 className="w-4 h-4 shrink-0" style={{ color: feat.accent }} />
                      <span>{h}</span>
                    </div>
                  ))}
                </div>
              </div>
            );
          })}
        </div>
      </section>

      {/* ── ANDROID TV & DOWNLOADER DEDICATED SECTION ── */}
      <section id="tv-guide" className="py-12 px-4 sm:px-6 max-w-6xl mx-auto">
        <div className="rounded-[32px] p-6 sm:p-10 bg-gradient-to-br from-[#0F172A] via-[#111827] to-[#1E1B4B] text-white border border-cyan-500/30 shadow-2xl">
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 items-center">
            <div className="lg:col-span-7 space-y-4 text-right">
              <div className="inline-flex items-center gap-2 text-xs font-extrabold text-cyan-300">
                <Tv className="w-4 h-4" />
                <span>نسخة شاشات التلفاز الذكية · Android TV & Google TV & Fire Stick</span>
              </div>

              <h2 className="text-2xl sm:text-3xl font-black leading-snug">
                ثبّت تطبيق التلفاز في ثوانٍ عبر كود Downloader
              </h2>

              <p className="text-xs sm:text-sm text-slate-300 leading-relaxed font-semibold">
                تم تحديث نسخة التلفاز بالكامل لتوفير تحكم سلس ومرئي بالريموت (D-Pad) في جميع الأقسام والفلاتر وصفحة الشخصيات، مع زر تخطي المقدمة والنهاية أعلى شريط التقدم وتسجيل الدخول السريع عبر رمز QR.
              </p>

              <div className="space-y-3 pt-2">
                <div className="flex items-start gap-3">
                  <span className="w-7 h-7 rounded-lg bg-cyan-500 text-slate-950 font-black text-xs flex items-center justify-center shrink-0 mt-0.5">
                    1
                  </span>
                  <p className="text-xs sm:text-sm font-bold text-white/90">
                    افتح تطبيق <strong className="text-cyan-300">Downloader</strong> على شاشة التلفاز من متجر Google Play.
                  </p>
                </div>
                <div className="flex items-start gap-3">
                  <span className="w-7 h-7 rounded-lg bg-cyan-500 text-slate-950 font-black text-xs flex items-center justify-center shrink-0 mt-0.5">
                    2
                  </span>
                  <p className="text-xs sm:text-sm font-bold text-white/90">
                    أدخل الكود الرقمي <strong className="font-mono text-amber-300 text-base">{DOWNLOADER_CODE}</strong> واضغط على <strong className="text-cyan-300">Go</strong>.
                  </p>
                </div>
                <div className="flex items-start gap-3">
                  <span className="w-7 h-7 rounded-lg bg-cyan-500 text-slate-950 font-black text-xs flex items-center justify-center shrink-0 mt-0.5">
                    3
                  </span>
                  <p className="text-xs sm:text-sm font-bold text-white/90">
                    سيتم تنزيل أحدث نسخة (<strong className="font-mono text-emerald-300">nova.apk</strong>) وتثبيتها مباشرة على تلفازك.
                  </p>
                </div>
              </div>
            </div>

            <div className="lg:col-span-5 bg-white/[0.06] border border-white/15 rounded-3xl p-6 text-center space-y-4 backdrop-blur-md">
              <Tv className="w-12 h-12 text-cyan-400 mx-auto" />
              <div>
                <p className="text-xs font-bold text-slate-300">كود تطبيق Downloader للتلفاز</p>
                <p className="text-4xl font-mono font-black text-amber-300 tracking-widest mt-1 tabular-nums">
                  {DOWNLOADER_CODE}
                </p>
              </div>
              <div className="flex flex-col gap-2.5 pt-2">
                <button
                  type="button"
                  onClick={copyDownloaderCode}
                  className="h-12 rounded-2xl bg-cyan-400 hover:bg-cyan-300 text-slate-950 font-black text-xs sm:text-sm flex items-center justify-center gap-2 transition-transform active:scale-95"
                >
                  {copiedCode ? <Check className="w-4 h-4" /> : <Copy className="w-4 h-4" />}
                  <span>{copiedCode ? "تم نسخ الكود بنجاح!" : "نسخ كود Downloader (2576388)"}</span>
                </button>
                <a
                  href={TV_APK_URL}
                  download={`Anime-Nova-TV-v${APP_VERSION}.apk`}
                  className="h-12 rounded-2xl bg-white/10 hover:bg-white/15 border border-white/15 text-white font-black text-xs sm:text-sm flex items-center justify-center gap-2 transition-transform active:scale-95"
                >
                  <Download className="w-4 h-4 text-cyan-300" />
                  <span>تحميل ملف التلفاز مباشرة (nova.apk)</span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ── QUIET STANDALONE FOOTER ── */}
      <footer
        className={`mt-10 py-10 px-4 border-t text-center text-xs font-bold ${
          lightMode
            ? "bg-white border-slate-200/80 text-slate-500"
            : "bg-[#090C12] border-white/[0.07] text-slate-400"
        }`}
      >
        <div className="max-w-5xl mx-auto flex flex-col sm:flex-row items-center justify-between gap-4">
          <div className="flex items-center gap-2" dir="ltr">
            <span className="w-1 h-5 rounded-full bg-[#06b6d4]" />
            <span className="text-base font-black text-slate-900 dark:text-white">
              ANIME <span className="text-[#06b6d4]">NOVA</span>
            </span>
            <span className="text-xs opacity-75">v{APP_VERSION}</span>
          </div>

          <div className="flex items-center gap-5 flex-wrap justify-center">
            <a href={MOBILE_APK_URL} download className="hover:text-[#06b6d4] transition-colors">
              تطبيق الهاتف (APK)
            </a>
            <a href={TV_APK_URL} download className="hover:text-[#06b6d4] transition-colors">
              تطبيق التلفاز (TV APK)
            </a>
            <a
              href="https://t.me/Anime_NOVA_0"
              target="_blank"
              rel="noreferrer"
              className="hover:text-[#06b6d4] transition-colors"
            >
              قناة تيليجرام الرسمية
            </a>
            <button type="button" onClick={goToWebApp} className="hover:text-[#06b6d4] transition-colors">
              الدخول لموقع الويب
            </button>
          </div>
        </div>
      </footer>

      {/* ── LIGHTBOX MODAL FOR FULL-SIZE SCREENSHOT INSPECTION ── */}
      {lightboxShot && (
        <div
          className="fixed inset-0 z-50 bg-black/85 backdrop-blur-md p-4 flex items-center justify-center"
          onClick={() => setLightboxShot(null)}
        >
          <div
            className="relative max-w-sm w-full flex flex-col items-center"
            onClick={(e) => e.stopPropagation()}
          >
            <button
              type="button"
              onClick={() => setLightboxShot(null)}
              aria-label="إغلاق المعاينة"
              className="mb-3 self-start w-10 h-10 rounded-full bg-white/10 hover:bg-white/20 text-white flex items-center justify-center"
            >
              <X className="w-5 h-5" />
            </button>
            <div className="w-full max-w-[310px] rounded-[34px] p-2 bg-[#161922] border-2 border-white/20 shadow-2xl overflow-hidden">
              <img
                src={lightboxShot.image}
                alt={lightboxShot.title}
                className="w-full h-auto rounded-[26px] block"
              />
            </div>
            <h4 className="mt-3 text-base font-black text-white">{lightboxShot.title}</h4>
            <p className="text-xs text-white/70 text-center mt-1">{lightboxShot.subtitle}</p>
          </div>
        </div>
      )}
    </div>
  );
}
