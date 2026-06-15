import { motion } from "framer-motion";

/**
 * AnimeMascot — Sukuna chibi دقيق (Jujutsu Kaisen)
 * بشرة شاحبة، شعر رمادي/أبيض، ماسة على الجبهة، وشوم تحت العينين
 * حركة: خطوتان يمين ثم رجوع — تكرار مستمر
 */
export function AnimeMascot({ className }: { className?: string }) {
  const DUR = 2.8;
  const TIMES: number[] = [0, 0.24, 0.5, 0.76, 1];

  const baseT = {
    duration: DUR,
    repeat: Infinity,
    ease: "easeInOut" as const,
    times: TIMES,
  };

  return (
    <motion.div
      className={className}
      style={{ overflow: "visible", display: "flex", justifyContent: "center" }}
      initial={{ opacity: 0, y: 12, scale: 0.88 }}
      animate={{ opacity: 1, y: 0, scale: 1 }}
      transition={{ duration: 0.4, delay: 0.1, ease: [0.22, 1, 0.36, 1] }}
    >
      <svg
        viewBox="0 0 100 128"
        width="96"
        height="123"
        overflow="visible"
        aria-hidden="true"
      >
        <defs>
          {/* بشرة شاحبة — رمادية بيضاء مثل سوكونا */}
          <radialGradient id="sk" cx="42%" cy="36%" r="68%">
            <stop offset="0%" stopColor="#EAE6E0" />
            <stop offset="60%" stopColor="#D8D2C8" />
            <stop offset="100%" stopColor="#C4BEB4" />
          </radialGradient>
          {/* شعر رمادي أبيض */}
          <radialGradient id="hr" cx="45%" cy="30%" r="65%">
            <stop offset="0%" stopColor="#D8D4CC" />
            <stop offset="50%" stopColor="#B8B2A8" />
            <stop offset="100%" stopColor="#8C887E" />
          </radialGradient>
          {/* ملابس حمراء */}
          <linearGradient id="rd" x1="0" y1="0" x2="0" y2="1">
            <stop offset="0%" stopColor="#CC2020" />
            <stop offset="100%" stopColor="#9A1010" />
          </linearGradient>
          {/* داخل الملابس */}
          <linearGradient id="col" x1="0" y1="0" x2="0" y2="1">
            <stop offset="0%" stopColor="#2a2520" />
            <stop offset="100%" stopColor="#1a1510" />
          </linearGradient>
        </defs>

        {/* ── ظل أرضي ── */}
        <motion.ellipse
          cx={50} cy={124} rx={20} ry={3.5}
          fill="rgba(0,0,0,0.28)"
          animate={{ x: [0, 22, 44, 22, 0], scaleX: [1, 0.88, 0.76, 0.88, 1] }}
          transition={baseT}
          style={{ transformOrigin: "50px 124px" }}
        />

        {/* ══════════════ الشخصية — تمشي يميناً ويساراً ══════════════ */}
        <motion.g
          animate={{ x: [0, 22, 44, 22, 0], y: [0, -2, 0, -2, 0] }}
          transition={baseT}
        >

          {/* ── الأرجل ── */}
          <motion.g
            style={{ transformOrigin: "37px 90px" }}
            animate={{ rotate: [4, -24, 26, -24, 4] }}
            transition={baseT}
          >
            <rect x={32} y={90} width={11} height={28} rx={5.5} fill="url(#rd)" />
            <rect x={30} y={113} width={16} height={6} rx={3} fill="#1a1510" />
            <rect x={31} y={112} width={13} height={2.5} rx={1.2} fill="#8B1010" />
          </motion.g>

          <motion.g
            style={{ transformOrigin: "61px 90px" }}
            animate={{ rotate: [-4, 26, -24, 26, -4] }}
            transition={baseT}
          >
            <rect x={56} y={90} width={11} height={28} rx={5.5} fill="url(#rd)" />
            <rect x={54} y={113} width={16} height={6} rx={3} fill="#1a1510" />
            <rect x={55} y={112} width={13} height={2.5} rx={1.2} fill="#8B1010" />
          </motion.g>

          {/* ── الجسم — كيمونو أحمر ── */}
          <rect x={24} y={55} width={52} height={38} rx={11} fill="url(#rd)" />
          {/* حزام / أوبي */}
          <rect x={24} y={85} width={52} height={6} rx={3} fill="#7A0C0C" />
          {/* فتحة الياقة */}
          <path d="M50,55 L41,70 L50,77 L59,70 Z" fill="url(#col)" />
          {/* بطانة داخلية */}
          <path d="M50,55 L44,67 L50,72 L56,67 Z" fill="#CC2020" opacity={0.45} />
          {/* أزرار الكيمونو — دوائر زيتونية مثل الصورة */}
          <circle cx={44} cy={80} r={2.5} fill="#6B6030" />
          <circle cx={56} cy={80} r={2.5} fill="#6B6030" />
          <circle cx={50} cy={76} r={2.5} fill="#6B6030" />
          {/* وشم الصدر */}
          <path d="M36,63 L33,74" stroke="#7A0000" strokeWidth={1.5} strokeLinecap="round" opacity={0.6} />
          <path d="M64,63 L67,74" stroke="#7A0000" strokeWidth={1.5} strokeLinecap="round" opacity={0.6} />

          {/* ── الذراع اليسرى ── */}
          <motion.g
            style={{ transformOrigin: "24px 62px" }}
            animate={{ rotate: [6, -18, 20, -18, 6] }}
            transition={baseT}
          >
            <rect x={9} y={62} width={15} height={24} rx={7.5} fill="url(#rd)" />
            <rect x={9} y={79} width={15} height={4} rx={2} fill="#7A0C0C" />
            <rect x={10} y={83} width={13} height={10} rx={5.5} fill="url(#sk)" />
            <line x1={12} y1={88} x2={21} y2={88} stroke="#B0AA9C" strokeWidth={0.7} opacity={0.4} />
          </motion.g>

          {/* ── الذراع اليمنى ── */}
          <motion.g
            style={{ transformOrigin: "76px 62px" }}
            animate={{ rotate: [-6, 20, -18, 20, -6] }}
            transition={baseT}
          >
            <rect x={76} y={62} width={15} height={24} rx={7.5} fill="url(#rd)" />
            <rect x={76} y={79} width={15} height={4} rx={2} fill="#7A0C0C" />
            <rect x={77} y={83} width={13} height={10} rx={5.5} fill="url(#sk)" />
            <line x1={79} y1={88} x2={88} y2={88} stroke="#B0AA9C" strokeWidth={0.7} opacity={0.4} />
          </motion.g>

          {/* ── الرقبة ── */}
          <rect x={43.5} y={49} width={13} height={10} rx={6.5} fill="url(#sk)" />
          {/* وشم الرقبة — خطوط رأسية مثل الصورة */}
          <line x1={47} y1={51} x2={47} y2={58} stroke="#5a5550" strokeWidth={1} strokeLinecap="round" opacity={0.55} />
          <line x1={50} y1={50} x2={50} y2={58} stroke="#5a5550" strokeWidth={1.1} strokeLinecap="round" opacity={0.65} />
          <line x1={53} y1={51} x2={53} y2={58} stroke="#5a5550" strokeWidth={1} strokeLinecap="round" opacity={0.55} />

          {/* ══ الشعر — الطبقة الخلفية ══ */}
          <circle cx={50} cy={27} r={27} fill="url(#hr)" />
          {/* جانبا الشعر */}
          <ellipse cx={25} cy={46} rx={7} ry={16} fill="#8C887E" transform="rotate(-12,25,46)" />
          <ellipse cx={75} cy={46} rx={7} ry={16} fill="#8C887E" transform="rotate(12,75,46)" />

          {/* ── أشواك الشعر — رمادية قصيرة مبعثرة (مثل سوكونا) ── */}
          <polygon points="24,22 15,6 31,19" fill="#C4C0B6" />
          <polygon points="33,15 29,-1 42,12" fill="#D0CCC2" />
          <polygon points="43,10 49,-6 55,10" fill="#D8D4CC" />
          <polygon points="57,15 71,-1 67,12" fill="#D0CCC2" />
          <polygon points="68,22 85,6 69,19" fill="#C4C0B6" />
          {/* ظل على الأشواك */}
          <polygon points="43,10 49,-6 49,10" fill="rgba(255,255,255,0.22)" />

          {/* ── الرأس ── */}
          <circle cx={50} cy={29} r={22} fill="url(#sk)" />

          {/* ── فرقعة الشعر الأمامية — خصلات رمادية ── */}
          <path d="M34,19 Q29,11 31,5 Q36,10 37,17 Z" fill="#B8B4A8" />
          <path d="M40,13 Q38,4 43,2 Q46,8 44,15 Z" fill="#C4C0B6" />
          <path d="M47,11 Q46,2 50,1 Q54,7 52,13 Z" fill="#D0CCC2" />
          <path d="M54,12 Q57,3 62,4 Q61,10 58,15 Z" fill="#C4C0B6" />
          <path d="M62,19 Q69,11 69,5 Q64,10 63,17 Z" fill="#B8B4A8" />
          {/* بريق على الشعر */}
          <path d="M47,11 Q50,4 53,11 Q51,8 50,8 Q49,8 47,11 Z" fill="rgba(255,255,255,0.30)" />

          {/* ════ الوجه ════ */}

          {/* ── وشم الجبهة — ماسة / معيّن ← أبرز علامات سوكونا ── */}
          <path
            d="M50,13 L53.5,17 L50,21 L46.5,17 Z"
            fill="#2a2520"
            opacity={0.85}
          />

          {/* ── وشوم تحت العينين — خطوط مائلة للأسفل ── */}
          {/* يسار */}
          <line x1={31} y1={37} x2={28} y2={43} stroke="#2a2520" strokeWidth={2} strokeLinecap="round" />
          <line x1={34} y1={37} x2={31} y2={44} stroke="#2a2520" strokeWidth={1.5} strokeLinecap="round" opacity={0.75} />
          {/* يمين */}
          <line x1={69} y1={37} x2={72} y2={43} stroke="#2a2520" strokeWidth={2} strokeLinecap="round" />
          <line x1={66} y1={37} x2={69} y2={44} stroke="#2a2520" strokeWidth={1.5} strokeLinecap="round" opacity={0.75} />

          {/* ── علامات جانبية على الخد — مثل الصورة ── */}
          <line x1={27} y1={33} x2={23} y2={31} stroke="#2a2520" strokeWidth={1.4} strokeLinecap="round" opacity={0.6} />
          <line x1={73} y1={33} x2={77} y2={31} stroke="#2a2520" strokeWidth={1.4} strokeLinecap="round" opacity={0.6} />

          {/* ── وشم الذقن ── */}
          <path d="M48,48 Q50,51 52,48" stroke="#2a2520" strokeWidth={1.3} fill="none" strokeLinecap="round" opacity={0.55} />

          {/* ── العيون ── */}
          {/* بياض العين الأيسر — مائل قليلاً للأسفل (نظرة متعجرفة) */}
          <ellipse cx={36} cy={30} rx={8} ry={6.5} fill="#E8E8F0" />
          {/* جفن علوي — ثقيل متجهم */}
          <path d="M28,27 Q36,22 44,27 L44,29 Q36,25 28,29 Z" fill="#2a2520" opacity={0.22} />
          {/* قزحية — بنية حمراء صغيرة */}
          <ellipse cx={36} cy={30.5} rx={4.5} ry={5} fill="#5C1810" />
          <ellipse cx={36} cy={30.5} rx={3.5} ry={4} fill="#7A2218" />
          {/* حدقة صغيرة */}
          <ellipse cx={36} cy={30.5} rx={2} ry={2.5} fill="#0d0808" />
          {/* بريق */}
          <circle cx={34.5} cy={28.5} r={1.4} fill="rgba(255,255,255,0.82)" />
          <circle cx={38} cy={32} r={0.7} fill="rgba(255,255,255,0.45)" />
          {/* خط الجفن السفلي */}
          <path d="M28.5,34 Q36,37 43.5,34" stroke="#9a9090" strokeWidth={0.7} fill="none" opacity={0.4} />

          {/* العين اليمنى */}
          <ellipse cx={64} cy={30} rx={8} ry={6.5} fill="#E8E8F0" />
          <path d="M56,27 Q64,22 72,27 L72,29 Q64,25 56,29 Z" fill="#2a2520" opacity={0.22} />
          <ellipse cx={64} cy={30.5} rx={4.5} ry={5} fill="#5C1810" />
          <ellipse cx={64} cy={30.5} rx={3.5} ry={4} fill="#7A2218" />
          <ellipse cx={64} cy={30.5} rx={2} ry={2.5} fill="#0d0808" />
          <circle cx={62.5} cy={28.5} r={1.4} fill="rgba(255,255,255,0.82)" />
          <circle cx={66} cy={32} r={0.7} fill="rgba(255,255,255,0.45)" />
          <path d="M56.5,34 Q64,37 71.5,34" stroke="#9a9090" strokeWidth={0.7} fill="none" opacity={0.4} />

          {/* ── حواجب — غليظة داكنة ومائلة (غاضبة) ── */}
          {/* حاجب أيسر */}
          <path d="M28,23 Q36,19.5 44,21" stroke="#1a1410" strokeWidth={2.8} fill="none" strokeLinecap="round" />
          {/* حاجب أيمن */}
          <path d="M56,21 Q64,19.5 72,23" stroke="#1a1410" strokeWidth={2.8} fill="none" strokeLinecap="round" />

          {/* خط بين الحاجبين */}
          <line x1={49} y1={22} x2={51} y2={20} stroke="#2a2520" strokeWidth={1.2} strokeLinecap="round" opacity={0.5} />

          {/* ── الأنف ── */}
          <ellipse cx={50} cy={38} rx={2} ry={1.3} fill="#B8B2A8" opacity={0.8} />
          {/* خط الأنف مثل الصورة */}
          <path d="M47,35 Q50,33 53,35" stroke="#8a8480" strokeWidth={0.9} fill="none" opacity={0.5} />

          {/* ── الفم — نصف ابتسامة متعجرفة ── */}
          <path d="M40,44 Q46,42 50,43 Q55,44.5 59,42" stroke="#7a6860" strokeWidth={1.8} fill="none" strokeLinecap="round" />
          {/* شفة علوية خفيفة */}
          <path d="M43,43 Q50,40.5 57,43" stroke="#8a7870" strokeWidth={0.9} fill="none" strokeLinecap="round" opacity={0.4} />

        </motion.g>
      </svg>
    </motion.div>
  );
}
