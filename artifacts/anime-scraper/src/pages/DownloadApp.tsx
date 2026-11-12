import { useState } from "react";
import { useLocation } from "wouter";
import { motion, AnimatePresence } from "framer-motion";
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
  Compass,
  Film,
  ChevronRight,
  ExternalLink,
  Sun,
  Moon,
  Star,
  FastForward,
  CheckCircle2,
  Layers,
} from "lucide-react";

const APP_VERSION = "1.0.6";
const MOBILE_APK_URL = `/Anime-Nova.apk?v=${APP_VERSION}`;
const TV_APK_URL = `/nova.apk?v=${APP_VERSION}`;
const DOWNLOADER_CODE = "2576388";
const DOWNLOADER_URL = "https://aftv.news/2576388";

interface ScreenPreview {
  id: string;
  title: string;
  subtitle: string;
  badge: string;
  accent: string;
  type: "home" | "detail" | "player" | "manga" | "dubbed" | "tv";
}

const SCREENSHOTS: ScreenPreview[] = [
  {
    id: "home",
    title: "الصفحة الرئيسية",
    subtitle: "متابعة المشاهدة وأحدث الحلقات المضافة يومياً",
    badge: "واجهة عصرية",
    accent: "#06b6d4",
    type: "home",
  },
  {
    id: "detail",
    title: "صفحة الأنمي والشخصيات",
    subtitle: "القصة بالعربية، التقييم العالمي، الاستوديو، والشخصيات",
    badge: "تفاصيل شاملة",
    accent: "#8B5CF6",
    type: "detail",
  },
  {
    id: "player",
    title: "صفحة المشاهدة الذكية",
    subtitle: "تخطي المقدمة والنهاية تلقائياً وتعدد الجودات والسيرفرات",
    badge: "مشغل احترافي",
    accent: "#f97316",
    type: "player",
  },
  {
    id: "manga",
    title: "قسم المانجا والمانهوا",
    subtitle: "آلاف الفصول المترجمة مع قارئ عمودي سريع وبدون إعلانات",
    badge: "حصري للتطبيق",
    accent: "#10b981",
    type: "manga",
  },
  {
    id: "dubbed",
    title: "سبيستون وكرتون مدبلج",
    subtitle: "مكتبة أعمال الطفولة وسبيستون والأنيميشن العالمي",
    badge: "مدبلج ومترجم",
    accent: "#ec4899",
    type: "dubbed",
  },
  {
    id: "tv",
    title: "نسخة التلفاز (Android TV)",
    subtitle: "تحكم كامل بالريموت ومؤشر ذكي ودخول سريع عبر رمز QR",
    badge: "شاشات التلفاز",
    accent: "#eab308",
    type: "tv",
  },
];

const FEATURES = [
  {
    number: "01",
    icon: BookOpen,
    title: "مكتبة المانجا والمانهوا الحصرية",
    description:
      "قارئ مانجا ومانهوا مدمج فائق السرعة يدعم القراءة العمودية السلسة (Webtoon) والتقليب، مع آلاف الفصول المترجمة بالعربية وحفظ تلقائي لآخر فصل قرأته.",
    highlights: ["مانجا يابانية ومانهوا كورية", "قارئ عمودي سريع الاستجابة", "تحديث يومي للفصول الجديدة"],
    accent: "#10b981",
  },
  {
    number: "02",
    icon: Tv,
    title: "نسخة خاصة لشاشات التلفاز (Android TV)",
    description:
      "واجهة مصممة خصيصاً للشاشات الكبيرة وأجهزة TV Box مع استجابة فورية لأزرار الريموت (D-Pad)، مؤشر تركيز مرئي واضح في كل الأقسام والفلاتر، ودعم تطبيق Downloader.",
    highlights: [`كود Downloader: ${DOWNLOADER_CODE}`, "تسجيل دخول فوري عبر رمز QR بالهاتف", "تنقل سلس بالريموت بدون تجميد"],
    accent: "#06b6d4",
  },
  {
    number: "03",
    icon: FastForward,
    title: "مشغل فيديو احترافي + تخطي المقدمة والنهاية",
    description:
      "أكثر من 10 سيرفرات بث سريعة بجودات تصل إلى 1080p، مع أزرار تخطي المقدمة (Skip Intro) وتخطي النهاية (Skip Outro) في موضعها المثالي أعلى شريط التقدم.",
    highlights: ["تخطي المقدمة والنهاية بضغطة زر", "حفظ دقيق لثانية التوقف", "دعم جميع الجودات 1080p / 720p / 480p"],
    accent: "#f97316",
  },
  {
    number: "04",
    icon: Film,
    title: "سبيستون، كرتون مدبلج، وأنيميشن عالمي",
    description:
      "مكتبة ضخمة وحصرية داخل التطبيق تضم مسلسلات وأفلام سبيستون الكلاسيكية والحديثة، الكرتون العربي المدبلج، وأفلام الأنيميشن العالمية.",
    highlights: ["مسلسلات وأفلام سبيستون كاملة", "كرتون عربي مدبلج ومترجم", "أنيميشن عالمي بجودة عالية"],
    accent: "#8B5CF6",
  },
  {
    number: "05",
    icon: WifiOff,
    title: "تنزيل الحلقات للمشاهدة بدون إنترنت",
    description:
      "حمّل حلقاتك المفضلة مباشرة داخل التطبيق بمدير تنزيلات متطور يدعم الاستكمال التلقائي وتنظيم الحلقات المحملة لمشاهدتها في أي مكان.",
    highlights: ["مدير تنزيلات سريع ومستقر", "اختيار الجودة قبل التحميل", "مشاهدة أوفلاين بدون إنترنت"],
    accent: "#ec4899",
  },
  {
    number: "06",
    icon: Bell,
    title: "تعليقات تفاعلية وإشعارات فورية",
    description:
      "شارك رأيك وتقييمك لكل أنمي وحلقة، تفاعل مع مجتمع المتابعين، واستلم إشعارات فورية على هاتفك فور صدور حلقات جديدة أو عند الرد على تعليقاتك.",
    highlights: ["إشعارات فورية عند الرد على تعليقك", "مزامنة السجل والمفضلة عبر Google", "بدون أي إعلانات منبثقة مزعجة"],
    accent: "#eab308",
  },
];

export default function DownloadApp() {
  const [, navigate] = useLocation();
  const [lightMode, setLightMode] = useState(true);
  const [copiedCode, setCopiedCode] = useState(false);
  const [activeDeviceTab, setActiveDeviceTab] = useState<"mobile" | "tv">("mobile");

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

  return (
    <div
      dir="rtl"
      className={`min-h-screen pb-28 font-['Cairo'] transition-colors duration-300 ${
        lightMode ? "bg-[#FAF7F2] text-[#141519]" : "bg-[#090A0C] text-[#F3F4F6]"
      }`}
    >
      {/* ── Sticky Navigation Header ── */}
      <header
        className={`sticky top-0 z-40 backdrop-blur-xl border-b transition-colors ${
          lightMode
            ? "bg-[#FAF7F2]/90 border-black/[0.07]"
            : "bg-[#090A0C]/90 border-white/[0.08]"
        }`}
      >
        <div className="max-w-6xl mx-auto px-4 h-16 flex items-center justify-between gap-4">
          {/* Right: Back to Home button */}
          <div className="flex items-center gap-2.5">
            <button
              onClick={() => navigate("/")}
              aria-label="العودة للرئيسية"
              className={`w-10 h-10 rounded-xl border flex items-center justify-center transition-transform active:scale-95 ${
                lightMode
                  ? "bg-white border-black/10 text-[#141519] shadow-sm hover:bg-neutral-50"
                  : "bg-[#14171C] border-white/10 text-white hover:bg-white/10"
              }`}
            >
              <ChevronRight className="w-5 h-5" />
            </button>
            <button
              onClick={() => setLightMode((v) => !v)}
              aria-label="تبديل المظهر"
              className={`px-3 h-10 rounded-xl border flex items-center gap-1.5 text-xs font-bold transition-transform active:scale-95 ${
                lightMode
                  ? "bg-white border-black/10 text-neutral-700 shadow-sm"
                  : "bg-[#14171C] border-white/10 text-neutral-300"
              }`}
            >
              {lightMode ? <Moon className="w-4 h-4 text-violet-600" /> : <Sun className="w-4 h-4 text-amber-400" />}
              <span>{lightMode ? "الوضع الداكن" : "الوضع الفاتح"}</span>
            </button>
          </div>

          {/* Left: Stylized Brand Wordmark matching reference */}
          <button
            onClick={() => navigate("/")}
            className="flex items-center gap-1.5 select-none"
            dir="ltr"
          >
            <div className="px-3 py-1 rounded-xl border-2 border-[#141519] bg-white text-[#141519] shadow-[2px_2px_0px_#f97316] flex items-center gap-1">
              <span className="text-base sm:text-lg font-black tracking-wider">ANIME</span>
              <span className="text-base sm:text-lg font-black tracking-wider text-[#f97316]">NOVA</span>
            </div>
          </button>
        </div>
      </header>

      {/* ── HERO SECTION (Matches Reference Layout + TV Edition) ── */}
      <section className="relative overflow-hidden pt-10 pb-14 px-4">
        {/* Subtle decorative background radial */}
        <div
          className="pointer-events-none absolute top-0 left-1/2 -translate-x-1/2 w-[650px] h-[420px] rounded-full blur-3xl opacity-25"
          style={{
            background: lightMode
              ? "radial-gradient(circle, rgba(249,115,22,0.35) 0%, rgba(139,92,246,0.15) 60%, transparent 100%)"
              : "radial-gradient(circle, rgba(249,115,22,0.22) 0%, rgba(6,182,212,0.15) 60%, transparent 100%)",
          }}
        />

        <div className="max-w-3xl mx-auto text-center relative z-10">
          {/* Version & Platform Unboxed Kicker */}
          <p
            className={`text-xs sm:text-sm font-extrabold mb-3 ${
              lightMode ? "text-neutral-600" : "text-neutral-400"
            }`}
          >
            الإصدار الرسمي v{APP_VERSION} · أندرويد للهاتف · شاشات التلفاز الذكية Android TV
          </p>

          {/* Main Hero Headline */}
          <h1
            className="text-[38px] sm:text-[56px] font-black leading-[1.15] tracking-tight"
            style={{ textWrap: "balance" } as any}
          >
            كل الأنمي والمانجا{" "}
            <span className="block mt-1">
              في <span className="text-[#f97316] italic">أنمي نوفا</span>
            </span>
          </h1>

          {/* Value Proposition Paragraph */}
          <p
            className={`mt-5 text-[15px] sm:text-[18px] leading-[1.8] max-w-2xl mx-auto font-semibold ${
              lightMode ? "text-[#525662]" : "text-neutral-300"
            }`}
          >
            أفضل تطبيق عربي لمشاهدة وتحميل الأنمي المترجم والمدبلج، وقراءة المانجا والمانهوا، ومسلسلات سبيستون والكرتون مجاناً. تطبيق{" "}
            <strong className={lightMode ? "text-[#141519]" : "text-white"}>Anime NOVA</strong> ينشر حلقات وفصولاً جديدة كل يوم بجودة فائقة وبدون إعلانات مزعجة على هاتفك وتلفازك الذكي.
          </p>

          {/* Primary Download Buttons Stack (Matches Reference Orange + Dark Stack) */}
          <div className="mt-8 max-w-xs sm:max-w-sm mx-auto flex flex-col gap-3.5">
            {/* Button 1: Android Phone APK */}
            <a
              href={MOBILE_APK_URL}
              download={`Anime-Nova-v${APP_VERSION}.apk`}
              className="h-14 rounded-2xl bg-[#FF6B00] hover:bg-[#e66000] text-white font-black text-[16px] flex items-center justify-center gap-3 shadow-[0_10px_25px_rgba(255,107,0,0.35)] ring-4 ring-[#FF6B00]/15 transition-all active:scale-[0.98]"
            >
              <Smartphone className="w-5 h-5 shrink-0" />
              <span>تحميل للأندرويد (نسخة الهاتف)</span>
            </a>

            {/* Button 2: Android TV APK */}
            <a
              href={TV_APK_URL}
              download={`Anime-Nova-TV-v${APP_VERSION}.apk`}
              className={`h-14 rounded-2xl font-black text-[16px] flex items-center justify-center gap-3 transition-all active:scale-[0.98] shadow-lg ${
                lightMode
                  ? "bg-[#181B20] hover:bg-[#23272F] text-white shadow-black/15"
                  : "bg-white hover:bg-neutral-100 text-[#141519] shadow-black/40"
              }`}
            >
              <Tv className="w-5 h-5 text-[#06b6d4] shrink-0" />
              <span>تحميل لشاشات التلفاز (Android TV)</span>
            </a>
          </div>

          {/* Downloader TV Code Card */}
          <div
            className={`mt-5 max-w-md mx-auto rounded-2xl p-4 border text-right transition-colors ${
              lightMode
                ? "bg-white border-black/10 shadow-md shadow-black/[0.04]"
                : "bg-[#12151B] border-white/10 shadow-xl"
            }`}
          >
            <div className="flex items-center justify-between gap-3">
              <div className="flex items-center gap-3 min-w-0">
                <div className="w-11 h-11 rounded-xl bg-[#FF6B00]/12 border border-[#FF6B00]/25 flex items-center justify-center shrink-0 text-[#FF6B00]">
                  <Tv className="w-5 h-5" />
                </div>
                <div className="min-w-0">
                  <p className="text-xs font-extrabold text-[#FF6B00]">
                    كود تطبيق Downloader للتلفاز الذكي
                  </p>
                  <p
                    className={`text-[12px] font-bold mt-0.5 ${
                      lightMode ? "text-neutral-600" : "text-neutral-400"
                    }`}
                  >
                    أدخل الكود في تطبيق Downloader لتحميل نسخة التلفاز فوراً
                  </p>
                </div>
              </div>

              <button
                type="button"
                onClick={copyDownloaderCode}
                className="shrink-0 px-3.5 py-2 rounded-xl bg-[#181B20] text-white font-mono text-base font-black tracking-widest flex items-center gap-2 hover:bg-black active:scale-95 transition-all"
                title="نسخ كود Downloader"
              >
                <span>{DOWNLOADER_CODE}</span>
                {copiedCode ? (
                  <Check className="w-4 h-4 text-emerald-400" />
                ) : (
                  <Copy className="w-4 h-4 text-white/60" />
                )}
              </button>
            </div>

            <div
              className={`mt-3 pt-2.5 border-t flex items-center justify-between text-[11px] font-bold ${
                lightMode ? "border-black/5 text-neutral-500" : "border-white/5 text-neutral-400"
              }`}
            >
              <span>الرابط المختصر المباشر للتلفاز:</span>
              <a
                href={DOWNLOADER_URL}
                target="_blank"
                rel="noreferrer"
                className="font-mono text-[#06b6d4] hover:underline flex items-center gap-1"
              >
                <span>aftv.news/2576388</span>
                <ExternalLink className="w-3 h-3" />
              </a>
            </div>
          </div>
        </div>

        {/* ── 3D Tilted Device Showcase (Phone + TV Switcher) ── */}
        <div className="mt-10 max-w-4xl mx-auto">
          <div className="flex items-center justify-center gap-2 mb-6">
            <button
              type="button"
              onClick={() => setActiveDeviceTab("mobile")}
              className={`px-4 py-2 rounded-xl text-xs font-black flex items-center gap-2 transition-all ${
                activeDeviceTab === "mobile"
                  ? "bg-[#FF6B00] text-white shadow-md shadow-[#FF6B00]/25"
                  : lightMode
                    ? "bg-black/5 text-neutral-700 hover:bg-black/10"
                    : "bg-white/5 text-neutral-300 hover:bg-white/10"
              }`}
            >
              <Smartphone className="w-4 h-4" />
              معاينة تطبيق الهاتف
            </button>
            <button
              type="button"
              onClick={() => setActiveDeviceTab("tv")}
              className={`px-4 py-2 rounded-xl text-xs font-black flex items-center gap-2 transition-all ${
                activeDeviceTab === "tv"
                  ? "bg-[#06b6d4] text-white shadow-md shadow-[#06b6d4]/25"
                  : lightMode
                    ? "bg-black/5 text-neutral-700 hover:bg-black/10"
                    : "bg-white/5 text-neutral-300 hover:bg-white/10"
              }`}
            >
              <Tv className="w-4 h-4" />
              معاينة نسخة التلفاز (Android TV)
            </button>
          </div>

          <AnimatePresence mode="wait">
            {activeDeviceTab === "mobile" ? (
              <motion.div
                key="mobile-hero-mockup"
                initial={{ opacity: 0, y: 16 }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0, y: -12 }}
                transition={{ duration: 0.25 }}
                className="flex justify-center"
              >
                {/* Tilted Smartphone Bezel matching the reference image */}
                <div
                  className="relative w-[290px] sm:w-[320px] rounded-[42px] p-3 bg-[#1C1E24] border-[4px] border-[#323640] shadow-[0_35px_80px_rgba(0,0,0,0.45)]"
                  style={{ transform: "rotate(-2.5deg)" }}
                >
                  {/* Camera Punch Hole */}
                  <div className="w-3 h-3 rounded-full bg-black mx-auto mb-1.5 border border-white/10" />

                  {/* Phone Screen Content */}
                  <div className="rounded-[32px] overflow-hidden bg-[#090A0C] text-white border border-white/10">
                    {/* Top Status & App Bar */}
                    <div className="px-3.5 pt-2.5 pb-2 flex items-center justify-between border-b border-white/5">
                      <span className="text-[10px] font-black text-[#06b6d4]" dir="ltr">
                        ANIME NOVA
                      </span>
                      <div className="flex items-center gap-1.5 text-[9px] text-white/60">
                        <span>1080p</span>
                        <span>·</span>
                        <span>بدون إعلانات</span>
                      </div>
                    </div>

                    {/* Featured Anime Banner inside Phone */}
                    <div className="relative h-56 bg-gradient-to-b from-[#1e1b4b] via-[#0f172a] to-[#090A0C] p-4 flex flex-col justify-end text-right">
                      <div
                        className="absolute inset-0 opacity-45"
                        style={{
                          backgroundImage:
                            "radial-gradient(circle at 70% 25%, #f97316 0%, #7c3aed 45%, #090A0C 90%)",
                        }}
                      />
                      <div className="relative z-10 space-y-1.5">
                        <div className="flex items-center justify-between">
                          <span className="px-2 py-0.5 rounded-md bg-amber-500/20 text-amber-300 text-[9px] font-black">
                            ★ 9.2
                          </span>
                          <span className="px-2 py-0.5 rounded-md bg-cyan-500/20 text-cyan-300 text-[9px] font-black">
                            مختارات الموسم #1
                          </span>
                        </div>
                        <h3 className="text-base font-black text-white leading-tight" dir="ltr">
                          Solo Leveling: Arise
                        </h3>
                        <p className="text-[10px] text-white/70 line-clamp-2">
                          أكشن · فانتازيا · مغامرة · مترجم ومدبلج + المانجا والمانهوا كاملة
                        </p>
                        <div className="pt-1.5 flex items-center gap-2">
                          <div className="flex-1 h-8 rounded-xl bg-[#06b6d4] text-white text-[11px] font-black flex items-center justify-center gap-1 shadow-md">
                            <Play className="w-3 h-3 fill-white" />
                            <span>بدء المشاهدة</span>
                          </div>
                          <div className="px-2.5 h-8 rounded-xl bg-white/10 text-white text-[10px] font-bold flex items-center justify-center">
                            تفاصيل
                          </div>
                        </div>
                      </div>
                    </div>

                    {/* Mini Cards Grid inside Phone */}
                    <div className="p-3 space-y-2">
                      <div className="flex items-center justify-between text-[10px] font-black">
                        <span className="text-white">أحدث الحلقات والمانجا</span>
                        <span className="text-[#06b6d4]">عرض الكل</span>
                      </div>
                      <div className="grid grid-cols-3 gap-2">
                        {[
                          { name: "One Piece", tag: "حلقة 1122", color: "from-rose-600 to-orange-500" },
                          { name: "Hunter x Hunter", tag: "مانجا كاملة", color: "from-emerald-600 to-teal-500" },
                          { name: "المحقق كونان", tag: "سبيستون", color: "from-violet-600 to-indigo-500" },
                        ].map((item, i) => (
                          <div
                            key={i}
                            className={`aspect-[2/3] rounded-xl bg-gradient-to-br ${item.color} p-2 flex flex-col justify-between text-right relative overflow-hidden`}
                          >
                            <span className="self-start px-1.5 py-0.5 rounded bg-black/60 text-[8px] font-bold text-white">
                              {item.tag}
                            </span>
                            <p className="text-[9px] font-black text-white leading-tight drop-shadow">
                              {item.name}
                            </p>
                          </div>
                        ))}
                      </div>
                    </div>

                    {/* Phone Bottom Nav */}
                    <div className="px-3 py-2 bg-[#111317] border-t border-white/10 flex items-center justify-around text-[8px] font-bold text-white/60">
                      <span className="text-[#06b6d4] font-black">الرئيسية</span>
                      <span>تصفح</span>
                      <span>مدبلج</span>
                      <span>المانجا</span>
                      <span>قائمتي</span>
                    </div>
                  </div>
                </div>
              </motion.div>
            ) : (
              <motion.div
                key="tv-hero-mockup"
                initial={{ opacity: 0, y: 16 }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0, y: -12 }}
                transition={{ duration: 0.25 }}
                className="flex justify-center"
              >
                {/* Sleek Android TV Widescreen Frame */}
                <div className="relative w-full max-w-2xl rounded-[28px] p-3 bg-[#181B20] border-[4px] border-[#2E333D] shadow-[0_35px_80px_rgba(0,0,0,0.5)]">
                  <div className="rounded-[20px] overflow-hidden bg-[#090A0C] text-white border border-white/10">
                    {/* TV Top Bar */}
                    <div className="px-5 py-3 bg-[#111317] border-b border-white/10 flex items-center justify-between">
                      <div className="flex items-center gap-3">
                        <span className="px-2.5 py-1 rounded-lg bg-[#06b6d4] text-black text-[10px] font-black">
                          TV MODE
                        </span>
                        <span className="text-xs font-black text-white">
                          واجهة تلفاز أندرويد · تحكم كامل بالريموت (D-Pad)
                        </span>
                      </div>
                      <span className="text-xs font-mono font-black text-amber-400">
                        Downloader: 2576388
                      </span>
                    </div>

                    {/* TV Content Area */}
                    <div className="p-5 grid grid-cols-1 sm:grid-cols-12 gap-4 items-center">
                      <div className="sm:col-span-7 text-right space-y-2.5">
                        <span className="inline-block px-2.5 py-0.5 rounded-md bg-cyan-500/20 text-cyan-300 text-[10px] font-bold">
                          مؤشر تركيز ذكي واضح · دخول سريع بمسح QR
                        </span>
                        <h3 className="text-xl font-black text-white">
                          تجربة سينمائية على شاشة التلفاز
                        </h3>
                        <p className="text-xs text-white/70 leading-relaxed">
                          تصفح الأنمي، الكرتون المدبلج، ومسلسلات سبيستون بالريموت بسهولة تامة، مع زر تخطي المقدمة والنهاية أعلى شريط التقدم ومزامنة حسابك عبر الهاتف.
                        </p>
                        <div className="pt-2 flex flex-wrap gap-2">
                          <div className="px-3.5 py-2 rounded-xl bg-[#06b6d4] text-black text-xs font-black ring-2 ring-white shadow-lg">
                            ▶ مشاهدة الحلقة 1 (محدد بالريموت)
                          </div>
                          <div className="px-3.5 py-2 rounded-xl bg-white/10 text-white text-xs font-bold border border-white/15">
                            تخطي المقدمة ⏭
                          </div>
                        </div>
                      </div>

                      <div className="sm:col-span-5 bg-[#14171C] rounded-2xl p-3.5 border border-cyan-400/30 text-center space-y-2">
                        <QrCode className="w-10 h-10 text-cyan-400 mx-auto" />
                        <p className="text-xs font-black text-white">تسجيل الدخول عبر QR</p>
                        <p className="text-[10px] text-white/60 leading-normal">
                          امسح الرمز بهاتفك لتسجيل الدخول بحساب Google على التلفاز تلقائياً في ثوانٍ
                        </p>
                      </div>
                    </div>
                  </div>
                  {/* TV Stand */}
                  <div className="w-32 h-2 bg-[#2E333D] mx-auto mt-2 rounded-full" />
                </div>
              </motion.div>
            )}
          </AnimatePresence>
        </div>
      </section>

      {/* ── STATS STRIP (Matches Reference 6200+ | 1080p | 180k) ── */}
      <section
        className={`py-10 border-y transition-colors ${
          lightMode ? "bg-white border-black/[0.06]" : "bg-[#111317] border-white/[0.06]"
        }`}
      >
        <div className="max-w-4xl mx-auto px-4">
          <div className="grid grid-cols-2 sm:grid-cols-4 gap-6 text-center">
            <div>
              <p className="text-2xl sm:text-3xl font-black tabular-nums">+6,500</p>
              <p className={`text-xs sm:text-sm font-bold mt-1 ${lightMode ? "text-neutral-500" : "text-neutral-400"}`}>
                أنمي وكرتون وسبيستون
              </p>
            </div>
            <div>
              <p className="text-2xl sm:text-3xl font-black tabular-nums text-[#FF6B00]">+3,800</p>
              <p className={`text-xs sm:text-sm font-bold mt-1 ${lightMode ? "text-neutral-500" : "text-neutral-400"}`}>
                مانجا ومانهوا مترجمة
              </p>
            </div>
            <div>
              <p className="text-2xl sm:text-3xl font-black tabular-nums">1080p</p>
              <p className={`text-xs sm:text-sm font-bold mt-1 ${lightMode ? "text-neutral-500" : "text-neutral-400"}`}>
                جودة فائقة وسيرفرات سريعة
              </p>
            </div>
            <div>
              <p className="text-2xl sm:text-3xl font-black tabular-nums text-[#06b6d4]">+250K</p>
              <p className={`text-xs sm:text-sm font-bold mt-1 ${lightMode ? "text-neutral-500" : "text-neutral-400"}`}>
                تحميل على الهاتف والتلفاز
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* ── SCREENSHOTS SHOWCASE ("لقطات من التطبيق") ── */}
      <section className="py-16 px-4 max-w-6xl mx-auto">
        <div className="text-center mb-10">
          <div className="flex items-center justify-center gap-2 text-[#FF6B00] mb-2">
            <Sparkles className="w-5 h-5" />
          </div>
          <h2 className="text-2xl sm:text-4xl font-black">
            لقطات من <span className="text-[#FF6B00]">التطبيق</span>
          </h2>
          <p
            className={`mt-2 text-xs sm:text-sm font-semibold max-w-xl mx-auto ${
              lightMode ? "text-neutral-600" : "text-neutral-400"
            }`}
          >
            استعرض شاشات تطبيق Anime NOVA للهاتف وشاشات التلفاز الذكية بتصميم عربي أنيق وسريع
          </p>
        </div>

        {/* Horizontal Scrollable Phone & TV Frames matching Screenshot 1 */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {SCREENSHOTS.map((shot) => (
            <div
              key={shot.id}
              className={`rounded-[32px] p-5 border flex flex-col items-center text-center transition-transform hover:-translate-y-1 ${
                lightMode
                  ? "bg-white border-black/[0.07] shadow-lg shadow-black/[0.03]"
                  : "bg-[#12151B] border-white/[0.08] shadow-xl"
              }`}
            >
              {/* Realistic Phone Screen Mockup */}
              <div className="w-full max-w-[235px] aspect-[9/17] rounded-[30px] p-2.5 bg-[#181B20] border-[3px] border-[#2E333D] shadow-xl flex flex-col">
                <div className="w-2.5 h-2.5 rounded-full bg-black mx-auto mb-1.5" />
                <div className="flex-1 rounded-[22px] bg-[#090A0C] text-white p-3 flex flex-col justify-between overflow-hidden relative text-right border border-white/10">
                  {/* Top Badge inside screen */}
                  <div className="flex items-center justify-between z-10">
                    <span
                      className="px-2 py-0.5 rounded-md text-[9px] font-black text-white"
                      style={{ backgroundColor: shot.accent }}
                    >
                      {shot.badge}
                    </span>
                    <span className="text-[9px] font-black text-white/50" dir="ltr">
                      NOVA
                    </span>
                  </div>

                  {/* Screen-specific Visual Content */}
                  {shot.type === "home" && (
                    <div className="my-auto space-y-2.5 z-10">
                      <div className="p-3 rounded-2xl bg-gradient-to-br from-cyan-500/25 to-blue-600/15 border border-cyan-400/30">
                        <p className="text-[9px] text-cyan-300 font-bold">مختارات الموسم</p>
                        <p className="text-xs font-black mt-0.5">Demon Slayer: Kimetsu</p>
                        <div className="mt-2 h-6 rounded-lg bg-[#06b6d4] text-black text-[9px] font-black flex items-center justify-center">
                          ▶ مشاهدة الآن
                        </div>
                      </div>
                      <div className="space-y-1.5">
                        <p className="text-[9px] font-bold text-white/70">متابعة المشاهدة</p>
                        <div className="grid grid-cols-2 gap-1.5">
                          <div className="p-2 rounded-xl bg-white/5 border border-white/10">
                            <p className="text-[8px] font-bold">One Piece</p>
                            <p className="text-[7px] text-cyan-400">الحلقة 1122</p>
                          </div>
                          <div className="p-2 rounded-xl bg-white/5 border border-white/10">
                            <p className="text-[8px] font-bold">Jujutsu Kaisen</p>
                            <p className="text-[7px] text-cyan-400">الحلقة 24</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  )}

                  {shot.type === "detail" && (
                    <div className="my-auto space-y-2.5 z-10">
                      <div className="p-2.5 rounded-2xl bg-violet-500/15 border border-violet-400/30">
                        <div className="flex items-center justify-between text-[9px] font-black text-amber-300">
                          <span>★ 9.1 التقييم العالمي</span>
                          <span>مكتمل</span>
                        </div>
                        <p className="text-xs font-black mt-1">قصة الأنمي ومعلومات الإنتاج</p>
                        <p className="text-[8px] text-white/65 mt-1 leading-relaxed">
                          ترجمة عربية كاملة للقصة، الاستوديو المنتج، والعرض الدعائي...
                        </p>
                      </div>
                      <div>
                        <p className="text-[9px] font-bold text-violet-300 mb-1">الشخصيات الرئيسية والمساعدة</p>
                        <div className="grid grid-cols-3 gap-1.5">
                          {["Killua", "Gon", "Kurapika"].map((ch) => (
                            <div key={ch} className="p-1.5 rounded-lg bg-white/5 border border-white/10 text-center">
                              <div className="w-6 h-6 rounded-full bg-violet-500/30 mx-auto mb-1" />
                              <p className="text-[7px] font-bold">{ch}</p>
                            </div>
                          ))}
                        </div>
                      </div>
                    </div>
                  )}

                  {shot.type === "player" && (
                    <div className="my-auto space-y-2.5 z-10">
                      <div className="aspect-video rounded-xl bg-gradient-to-tr from-orange-500/30 to-rose-500/20 border border-orange-400/40 p-2.5 flex flex-col justify-between">
                        <div className="flex justify-between text-[8px] font-bold">
                          <span className="px-1.5 py-0.5 rounded bg-black/60">FHD 1080p</span>
                          <span className="px-1.5 py-0.5 rounded bg-black/60">سيرفر 1</span>
                        </div>
                        <div className="space-y-1.5">
                          {/* Skip Intro right above progress bar */}
                          <div className="inline-block px-2 py-0.5 rounded-md bg-[#f97316] text-white text-[8px] font-black shadow">
                            تخطي المقدمة ⏭
                          </div>
                          <div className="h-1.5 rounded-full bg-white/20 overflow-hidden">
                            <div className="w-2/3 h-full bg-[#f97316]" />
                          </div>
                        </div>
                      </div>
                      <div className="p-2 rounded-xl bg-white/5 border border-white/10 text-[8px] space-y-1">
                        <p className="font-black text-white">التعليقات والتقييمات الحية</p>
                        <p className="text-white/60">إشعارات فورية على الهاتف عند الرد على تعليقك</p>
                      </div>
                    </div>
                  )}

                  {shot.type === "manga" && (
                    <div className="my-auto space-y-2 z-10">
                      <div className="p-2.5 rounded-2xl bg-emerald-500/15 border border-emerald-400/30">
                        <p className="text-[9px] text-emerald-300 font-black">قارئ المانجا والمانهوا السريع</p>
                        <p className="text-xs font-black mt-0.5">Solo Leveling & One Piece</p>
                        <p className="text-[8px] text-white/70 mt-1">
                          فصول مترجمة بالعربية عالية الدقة مع تمرير عمودي سلس
                        </p>
                      </div>
                      <div className="space-y-1">
                        {["الفصل 200 - النهاية الكبرى", "الفصل 199 - المعركة الأخيرة", "الفصل 198 - الصحوة"].map(
                          (ch, idx) => (
                            <div
                              key={idx}
                              className="px-2.5 py-1.5 rounded-lg bg-white/5 border border-white/10 flex items-center justify-between text-[8px] font-bold"
                            >
                              <span>{ch}</span>
                              <span className="text-emerald-400">قراءة</span>
                            </div>
                          )
                        )}
                      </div>
                    </div>
                  )}

                  {shot.type === "dubbed" && (
                    <div className="my-auto space-y-2 z-10">
                      <div className="p-2.5 rounded-2xl bg-pink-500/15 border border-pink-400/30">
                        <p className="text-[9px] text-pink-300 font-black">سبيستون · كرتون · أنيميشن</p>
                        <p className="text-xs font-black mt-0.5">أعمال الطفولة المدبلجة</p>
                      </div>
                      <div className="grid grid-cols-2 gap-1.5 text-[8px] font-bold">
                        <div className="p-2 rounded-xl bg-white/5 border border-white/10">
                          <p className="text-cyan-300">سبيستون</p>
                          <p className="mt-0.5 font-black">المحقق كونان</p>
                        </div>
                        <div className="p-2 rounded-xl bg-white/5 border border-white/10">
                          <p className="text-pink-300">كرتون عربي</p>
                          <p className="mt-0.5 font-black">عهد الأصدقاء</p>
                        </div>
                        <div className="p-2 rounded-xl bg-white/5 border border-white/10">
                          <p className="text-emerald-300">أنيميشن</p>
                          <p className="mt-0.5 font-black">الأسد الملك</p>
                        </div>
                        <div className="p-2 rounded-xl bg-white/5 border border-white/10">
                          <p className="text-amber-300">أفلام مدبلجة</p>
                          <p className="mt-0.5 font-black">سندريلا</p>
                        </div>
                      </div>
                    </div>
                  )}

                  {shot.type === "tv" && (
                    <div className="my-auto space-y-2.5 z-10">
                      <div className="p-2.5 rounded-2xl bg-amber-500/15 border border-amber-400/40">
                        <p className="text-[9px] text-amber-300 font-black">Android TV & Smart TV</p>
                        <p className="text-xs font-black mt-0.5">تحكم كامل بالريموت</p>
                        <p className="text-[8px] text-white/75 mt-1">
                          مؤشر واضح في جميع الصفحات والفلاتر، وتنقل سلس بين الشخصيات والحلقات.
                        </p>
                      </div>
                      <div className="p-2.5 rounded-xl bg-white/5 border border-white/10 text-center">
                        <p className="text-[8px] text-white/60">كود تطبيق Downloader</p>
                        <p className="text-sm font-mono font-black text-amber-400 tracking-widest mt-0.5">
                          {DOWNLOADER_CODE}
                        </p>
                      </div>
                    </div>
                  )}

                  {/* Bottom Mock Bar */}
                  <div className="pt-2 border-t border-white/10 flex items-center justify-between text-[8px] text-white/50 z-10">
                    <span>Anime NOVA v{APP_VERSION}</span>
                    <span>مجاني 100%</span>
                  </div>
                </div>
              </div>

              {/* Caption below phone frame (Matches Screenshot 1) */}
              <h3 className="mt-4 text-lg font-black">{shot.title}</h3>
              <p
                className={`mt-1 text-xs font-semibold leading-relaxed ${
                  lightMode ? "text-neutral-600" : "text-neutral-400"
                }`}
              >
                {shot.subtitle}
              </p>
            </div>
          ))}
        </div>
      </section>

      {/* ── ALL FEATURES BENTO GRID ("كل مميزات التطبيق والمانجا والمانهوا والتلفاز") ── */}
      <section
        className={`py-16 px-4 border-t transition-colors ${
          lightMode ? "bg-white border-black/[0.06]" : "bg-[#0E1015] border-white/[0.06]"
        }`}
      >
        <div className="max-w-6xl mx-auto">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <p className="text-xs font-black text-[#FF6B00] mb-2">لماذا تختار تطبيق أنمي نوفا؟</p>
            <h2 className="text-2xl sm:text-4xl font-black">
              جميع مميزات الأنمي والمانجا والتلفاز في تطبيق واحد
            </h2>
            <p
              className={`mt-3 text-xs sm:text-sm font-semibold leading-relaxed ${
                lightMode ? "text-neutral-600" : "text-neutral-400"
              }`}
            >
              صممنا تطبيق Anime NOVA ليجمع لك المشاهدة والقراءة والتحميل بأعلى جودة ممكنة على الهاتف وشاشات التلفاز الذكية
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-5">
            {FEATURES.map((feat) => {
              const Icon = feat.icon;
              return (
                <div
                  key={feat.number}
                  className={`rounded-3xl p-6 border flex flex-col justify-between transition-all ${
                    lightMode
                      ? "bg-[#FAF7F2] border-black/[0.08] hover:border-black/20"
                      : "bg-[#14171E] border-white/[0.08] hover:border-white/20"
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
                          lightMode ? "text-neutral-400" : "text-neutral-500"
                        }`}
                      >
                        {feat.number}.
                      </span>
                    </div>

                    <h3 className="text-lg font-black mb-2">{feat.title}</h3>
                    <p
                      className={`text-xs sm:text-[13px] leading-relaxed font-semibold ${
                        lightMode ? "text-neutral-600" : "text-neutral-300"
                      }`}
                    >
                      {feat.description}
                    </p>
                  </div>

                  <div
                    className={`mt-5 pt-4 border-t space-y-2 ${
                      lightMode ? "border-black/[0.06]" : "border-white/[0.06]"
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
        </div>
      </section>

      {/* ── ANDROID TV & DOWNLOADER STEP-BY-STEP GUIDE ── */}
      <section className="py-16 px-4 max-w-5xl mx-auto">
        <div
          className={`rounded-[32px] p-6 sm:p-10 border relative overflow-hidden ${
            lightMode
              ? "bg-[#141519] text-white border-black"
              : "bg-gradient-to-br from-[#141822] to-[#0D1017] text-white border-cyan-500/25"
          }`}
        >
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 items-center">
            <div className="lg:col-span-7 space-y-4 text-right">
              <span className="inline-block px-3 py-1 rounded-full bg-cyan-500/20 text-cyan-300 text-xs font-black">
                دليل التثبيت السريع على التلفاز
              </span>
              <h2 className="text-2xl sm:text-3xl font-black leading-snug">
                كيف تثبّت تطبيق Anime NOVA على شاشة التلفاز أو TV Box؟
              </h2>
              <p className="text-xs sm:text-sm text-white/75 leading-relaxed font-semibold">
                يدعم التطبيق جميع شاشات Android TV و Google TV وأجهزة Fire TV Stick و Xiaomi Mi Box مع تحكم كامل بالريموت:
              </p>

              <div className="space-y-3 pt-2">
                <div className="flex items-start gap-3">
                  <span className="w-7 h-7 rounded-lg bg-[#FF6B00] text-white font-black text-xs flex items-center justify-center shrink-0 mt-0.5">
                    1
                  </span>
                  <p className="text-xs sm:text-sm font-bold text-white/90">
                    افتح تطبيق <strong className="text-amber-300">Downloader</strong> على شاشة التلفاز من متجر Google Play.
                  </p>
                </div>
                <div className="flex items-start gap-3">
                  <span className="w-7 h-7 rounded-lg bg-[#FF6B00] text-white font-black text-xs flex items-center justify-center shrink-0 mt-0.5">
                    2
                  </span>
                  <p className="text-xs sm:text-sm font-bold text-white/90">
                    اكتب الكود الرقمي <strong className="font-mono text-cyan-300 text-base">{DOWNLOADER_CODE}</strong> في خانة البحث واضغط على <strong className="text-amber-300">Go</strong>.
                  </p>
                </div>
                <div className="flex items-start gap-3">
                  <span className="w-7 h-7 rounded-lg bg-[#FF6B00] text-white font-black text-xs flex items-center justify-center shrink-0 mt-0.5">
                    3
                  </span>
                  <p className="text-xs sm:text-sm font-bold text-white/90">
                    سيبدأ تحميل ملف <strong className="font-mono text-emerald-300">nova.apk</strong> تلقائياً، اضغط تثبيت واستمتع بالمشاهدة!
                  </p>
                </div>
              </div>
            </div>

            <div className="lg:col-span-5 bg-white/5 border border-white/10 rounded-3xl p-6 text-center space-y-4">
              <Tv className="w-12 h-12 text-cyan-400 mx-auto" />
              <div>
                <p className="text-xs font-bold text-white/60">كود تطبيق Downloader الرسمي</p>
                <p className="text-4xl font-mono font-black text-amber-300 tracking-widest mt-1">
                  {DOWNLOADER_CODE}
                </p>
              </div>
              <div className="flex flex-col gap-2.5 pt-2">
                <button
                  type="button"
                  onClick={copyDownloaderCode}
                  className="h-12 rounded-2xl bg-cyan-500 hover:bg-cyan-400 text-black font-black text-xs sm:text-sm flex items-center justify-center gap-2 transition-transform active:scale-95"
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

      {/* ── BOTTOM CALL TO ACTION ── */}
      <section className="py-10 px-4 text-center max-w-xl mx-auto">
        <h3 className="text-xl sm:text-2xl font-black">جاهز لتجربة مشاهدة وقراءة استثنائية؟</h3>
        <p
          className={`mt-2 text-xs sm:text-sm font-semibold ${
            lightMode ? "text-neutral-600" : "text-neutral-400"
          }`}
        >
          حمّل تطبيق Anime NOVA الآن مجاناً على هاتفك أو تلفازك الذكي
        </p>
        <div className="mt-6 flex flex-col sm:flex-row items-center justify-center gap-3">
          <a
            href={MOBILE_APK_URL}
            download={`Anime-Nova-v${APP_VERSION}.apk`}
            className="w-full sm:w-auto px-7 h-13 rounded-2xl bg-[#FF6B00] hover:bg-[#e66000] text-white font-black text-sm flex items-center justify-center gap-2 shadow-lg shadow-[#FF6B00]/25"
          >
            <Download className="w-4 h-4" />
            <span>تحميل للأندرويد (الهاتف)</span>
          </a>
          <a
            href={TV_APK_URL}
            download={`Anime-Nova-TV-v${APP_VERSION}.apk`}
            className={`w-full sm:w-auto px-7 h-13 rounded-2xl font-black text-sm flex items-center justify-center gap-2 border ${
              lightMode
                ? "bg-[#181B20] text-white border-black"
                : "bg-white/10 text-white border-white/15"
            }`}
          >
            <Tv className="w-4 h-4 text-cyan-400" />
            <span>تحميل للتلفاز (TV APK)</span>
          </a>
        </div>
      </section>
    </div>
  );
}
