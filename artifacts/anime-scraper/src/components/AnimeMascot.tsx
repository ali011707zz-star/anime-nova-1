import { motion } from "framer-motion";

/**
 * AnimeMascot — شخصية Sukuna-inspired chibi (Jujutsu Kaisen)
 * شعر وردي/كريمسون، وشوم مميزة، عيون حمراء بحدقة شقية
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
      {/* overflow:visible lets the walking motion go outside SVG bounds */}
      <svg
        viewBox="0 0 100 128"
        width="96"
        height="123"
        overflow="visible"
        aria-hidden="true"
      >
        <defs>
          {/* Skin tone */}
          <radialGradient id="sk" cx="40%" cy="38%" r="65%">
            <stop offset="0%" stopColor="#FFE0BE" />
            <stop offset="100%" stopColor="#E8AA72" />
          </radialGradient>
          {/* Hot-pink → crimson hair */}
          <linearGradient id="hr" x1="0" y1="0" x2="0.3" y2="1">
            <stop offset="0%" stopColor="#FF5FAE" />
            <stop offset="55%" stopColor="#E0196A" />
            <stop offset="100%" stopColor="#991240" />
          </linearGradient>
          {/* Crimson red eyes */}
          <radialGradient id="ey" cx="32%" cy="28%" r="72%">
            <stop offset="0%" stopColor="#FF3030" />
            <stop offset="55%" stopColor="#AA0018" />
            <stop offset="100%" stopColor="#440008" />
          </radialGradient>
          {/* Dark jacket */}
          <linearGradient id="jk" x1="0" y1="0" x2="0" y2="1">
            <stop offset="0%" stopColor="#1a1828" />
            <stop offset="100%" stopColor="#0e0d18" />
          </linearGradient>
        </defs>

        {/* ── Ground shadow (static, outside moving group) ── */}
        <motion.ellipse
          cx={50} cy={124} rx={20} ry={3.5}
          fill="rgba(200,0,40,0.22)"
          animate={{ x: [0, 22, 44, 22, 0], scaleX: [1, 0.88, 0.76, 0.88, 1] }}
          transition={baseT}
          style={{ transformOrigin: "50px 124px" }}
        />

        {/* ══════════════ CHARACTER — slides L → R → L ══════════════ */}
        <motion.g
          animate={{ x: [0, 22, 44, 22, 0], y: [0, -2, 0, -2, 0] }}
          transition={baseT}
        >

          {/* ── LEGS ── */}
          {/* Left leg — pivot at hip */}
          <motion.g
            style={{ transformOrigin: "37px 90px" }}
            animate={{ rotate: [4, -24, 26, -24, 4] }}
            transition={baseT}
          >
            {/* Pant leg */}
            <rect x={32} y={90} width={11} height={28} rx={5.5} fill="url(#jk)" />
            {/* Crimson cuff */}
            <rect x={31.5} y={109} width={12} height={5} rx={2.5} fill="#B01030" />
            {/* Sandal platform */}
            <rect x={29} y={115} width={17} height={6} rx={3} fill="#111" />
            {/* Sandal strap */}
            <rect x={31} y={114} width={13} height={2.5} rx={1.2} fill="#C41E3A" />
          </motion.g>

          {/* Right leg */}
          <motion.g
            style={{ transformOrigin: "61px 90px" }}
            animate={{ rotate: [-4, 26, -24, 26, -4] }}
            transition={baseT}
          >
            <rect x={56} y={90} width={11} height={28} rx={5.5} fill="url(#jk)" />
            <rect x={55.5} y={109} width={12} height={5} rx={2.5} fill="#B01030" />
            <rect x={53} y={115} width={17} height={6} rx={3} fill="#111" />
            <rect x={55} y={114} width={13} height={2.5} rx={1.2} fill="#C41E3A" />
          </motion.g>

          {/* ── BODY / KIMONO ── */}
          <rect x={25} y={56} width={50} height={37} rx={11} fill="url(#jk)" />
          {/* Obi / belt */}
          <rect x={25} y={85} width={50} height={6} rx={3} fill="#B01030" />
          {/* Collar open V */}
          <path d="M50,56 L42,72 L50,78 L58,72 Z" fill="#0b0b14" opacity={0.7} />
          {/* Inner collar lining */}
          <path d="M50,56 L44,68 L50,73 L56,68 Z" fill="#C41E3A" opacity={0.35} />
          {/* Chest tattoo lines (Sukuna body markings) */}
          <path d="M37,64 L34,76" stroke="#C41E3A" strokeWidth={1.8} strokeLinecap="round" opacity={0.75} />
          <path d="M63,64 L66,76" stroke="#C41E3A" strokeWidth={1.8} strokeLinecap="round" opacity={0.75} />
          {/* Extra tattoo dots */}
          <circle cx={38} cy={78} r={2} fill="#C41E3A" opacity={0.6} />
          <circle cx={62} cy={78} r={2} fill="#C41E3A" opacity={0.6} />

          {/* ── LEFT ARM ── pivot at shoulder */}
          <motion.g
            style={{ transformOrigin: "25px 62px" }}
            animate={{ rotate: [6, -18, 20, -18, 6] }}
            transition={baseT}
          >
            <rect x={10} y={62} width={15} height={26} rx={7.5} fill="url(#jk)" />
            {/* Sleeve cuff */}
            <rect x={9.5} y={80} width={16} height={5} rx={2.5} fill="#B01030" />
            {/* Hand — clenched fist suggestion */}
            <rect x={11} y={85} width={13} height={11} rx={5.5} fill="url(#sk)" />
            {/* Knuckle lines */}
            <line x1={13} y1={90} x2={22} y2={90} stroke="#D4956A" strokeWidth={0.8} opacity={0.5} />
            {/* Hand tattoo (Sukuna's cursed mark) */}
            <circle cx={17.5} cy={88} r={2.5} fill="#C41E3A" opacity={0.65} />
            <path d="M17.5,85.5 L17.5,90.5 M15,88 L20,88" stroke="#8B0020" strokeWidth={0.8} opacity={0.8} />
          </motion.g>

          {/* ── RIGHT ARM ── */}
          <motion.g
            style={{ transformOrigin: "75px 62px" }}
            animate={{ rotate: [-6, 20, -18, 20, -6] }}
            transition={baseT}
          >
            <rect x={75} y={62} width={15} height={26} rx={7.5} fill="url(#jk)" />
            <rect x={74.5} y={80} width={16} height={5} rx={2.5} fill="#B01030" />
            <rect x={76} y={85} width={13} height={11} rx={5.5} fill="url(#sk)" />
            <line x1={78} y1={90} x2={87} y2={90} stroke="#D4956A" strokeWidth={0.8} opacity={0.5} />
            <circle cx={82.5} cy={88} r={2.5} fill="#C41E3A" opacity={0.65} />
            <path d="M82.5,85.5 L82.5,90.5 M80,88 L85,88" stroke="#8B0020" strokeWidth={0.8} opacity={0.8} />
          </motion.g>

          {/* ── NECK ── */}
          <rect x={43.5} y={49} width={13} height={10} rx={6.5} fill="url(#sk)" />
          {/* Neck tattoo line */}
          <line x1={50} y1={50} x2={50} y2={57} stroke="#C41E3A" strokeWidth={1.2} strokeLinecap="round" opacity={0.5} />

          {/* ══ HAIR — back layer ══ */}
          {/* Large back circle */}
          <circle cx={50} cy={28} r={27} fill="url(#hr)" />
          {/* Back side hair hanging down */}
          <ellipse cx={24} cy={48} rx={8} ry={18} fill="#991240" transform="rotate(-14,24,48)" />
          <ellipse cx={76} cy={48} rx={8} ry={18} fill="#991240" transform="rotate(14,76,48)" />

          {/* ── HAIR SPIKES (5 prominent spikes — wild Sukuna style) ── */}
          {/* Spike 1 — far left, angled outward */}
          <polygon points="22,26 11,4 29,22" fill="#E0196A" />
          {/* Spike 2 — left */}
          <polygon points="31,17 27,-2 41,14" fill="#FF3D8A" />
          {/* Spike 3 — center (tallest) */}
          <polygon points="44,11 50,-8 56,11" fill="#FF5FAE" />
          {/* Spike 4 — right */}
          <polygon points="59,17 73,-2 69,14" fill="#FF3D8A" />
          {/* Spike 5 — far right */}
          <polygon points="71,26 89,4 78,22" fill="#E0196A" />
          {/* Spike highlight overlay (lighter on leading edge) */}
          <polygon points="44,11 50,-8 50,11" fill="rgba(255,180,210,0.30)" />

          {/* ── HEAD ── */}
          <circle cx={50} cy={30} r={22} fill="url(#sk)" />

          {/* ── HAIR FRONT FRINGE (wild strands over forehead) ── */}
          <path d="M33,20 Q28,12 30,6 Q35,10 36,18 Z" fill="#E0196A" />
          <path d="M39,14 Q37,5 42,3 Q45,9 43,16 Z" fill="#C41E3A" />
          <path d="M47,12 Q46,3 50,2 Q53,8 52,14 Z" fill="#FF5FAE" />
          <path d="M54,13 Q57,4 62,5 Q61,11 58,16 Z" fill="#C41E3A" />
          <path d="M63,20 Q70,12 70,6 Q65,10 63,18 Z" fill="#E0196A" />
          {/* Fringe highlight */}
          <path d="M47,12 Q50,5 53,12 Q51,9 50,9 Q49,9 47,12 Z" fill="rgba(255,180,210,0.40)" />

          {/* ══ FACE ══ */}

          {/* ── SUKUNA TATTOO MARKS — most distinctive feature ── */}
          {/* Under LEFT eye — two curved lines */}
          <path d="M31,37 Q27,42 28,47" stroke="#1a0530" strokeWidth={2.2} fill="none" strokeLinecap="round" />
          <path d="M34,38 Q31,43 32,48" stroke="#1a0530" strokeWidth={1.6} fill="none" strokeLinecap="round" />
          {/* Under RIGHT eye */}
          <path d="M69,37 Q73,42 72,47" stroke="#1a0530" strokeWidth={2.2} fill="none" strokeLinecap="round" />
          <path d="M66,38 Q69,43 68,48" stroke="#1a0530" strokeWidth={1.6} fill="none" strokeLinecap="round" />
          {/* Cheek side marks */}
          <path d="M29,33 L25,32" stroke="#1a0530" strokeWidth={1.6} strokeLinecap="round" />
          <path d="M71,33 L75,32" stroke="#1a0530" strokeWidth={1.6} strokeLinecap="round" />
          {/* Forehead marks (3 lines) */}
          <line x1={46} y1={18} x2={44} y2={13} stroke="#1a0530" strokeWidth={1.4} strokeLinecap="round" opacity={0.7} />
          <line x1={50} y1={17} x2={50} y2={12} stroke="#1a0530" strokeWidth={1.4} strokeLinecap="round" opacity={0.7} />
          <line x1={54} y1={18} x2={56} y2={13} stroke="#1a0530" strokeWidth={1.4} strokeLinecap="round" opacity={0.7} />
          {/* Chin mark */}
          <path d="M48,49 Q50,52 52,49" stroke="#1a0530" strokeWidth={1.3} fill="none" strokeLinecap="round" opacity={0.6} />

          {/* ── EYES ── */}
          {/* Left eye white */}
          <ellipse cx={37} cy={29} rx={8} ry={7.5} fill="white" />
          {/* Upper lid shadow */}
          <path d="M29,26 Q37,19 45,26" fill="#1a1828" opacity={0.25} />
          {/* Red iris */}
          <ellipse cx={37} cy={29} rx={6} ry={6} fill="url(#ey)" />
          {/* Slit pupil — Sukuna's curse mark */}
          <rect x={36} y={23.5} width={2.2} height={11} rx={1.1} fill="#0a0008" />
          {/* Iris ring detail */}
          <ellipse cx={37} cy={29} rx={5.5} ry={5.5} fill="none" stroke="rgba(255,80,80,0.4)" strokeWidth={0.8} />
          {/* Eye highlights */}
          <circle cx={34} cy={26} r={2} fill="rgba(255,255,255,0.88)" />
          <circle cx={39} cy={32} r={0.9} fill="rgba(255,255,255,0.55)" />
          {/* Lower eyelid line */}
          <path d="M30,33 Q37,36 44,33" stroke="#C47060" strokeWidth={0.8} fill="none" opacity={0.5} />

          {/* Right eye */}
          <ellipse cx={63} cy={29} rx={8} ry={7.5} fill="white" />
          <path d="M55,26 Q63,19 71,26" fill="#1a1828" opacity={0.25} />
          <ellipse cx={63} cy={29} rx={6} ry={6} fill="url(#ey)" />
          <rect x={61.8} y={23.5} width={2.2} height={11} rx={1.1} fill="#0a0008" />
          <ellipse cx={63} cy={29} rx={5.5} ry={5.5} fill="none" stroke="rgba(255,80,80,0.4)" strokeWidth={0.8} />
          <circle cx={60} cy={26} r={2} fill="rgba(255,255,255,0.88)" />
          <circle cx={65} cy={32} r={0.9} fill="rgba(255,255,255,0.55)" />
          <path d="M56,33 Q63,36 70,33" stroke="#C47060" strokeWidth={0.8} fill="none" opacity={0.5} />

          {/* Eyelashes — sharp, angular (Sukuna's look) */}
          {/* Left eye top lashes */}
          <path d="M30,24 L27,20" stroke="#1a1828" strokeWidth={1.5} strokeLinecap="round" />
          <path d="M32,22.5 L30,18.5" stroke="#1a1828" strokeWidth={1.4} strokeLinecap="round" />
          <path d="M37,21.5 L37,17.5" stroke="#1a1828" strokeWidth={1.3} strokeLinecap="round" />
          <path d="M42,22.5 L44.5,19" stroke="#1a1828" strokeWidth={1.4} strokeLinecap="round" />
          <path d="M44,24 L47,20.5" stroke="#1a1828" strokeWidth={1.5} strokeLinecap="round" />
          {/* Right eye top lashes */}
          <path d="M56,24 L53,20.5" stroke="#1a1828" strokeWidth={1.5} strokeLinecap="round" />
          <path d="M58,22.5 L55.5,19" stroke="#1a1828" strokeWidth={1.4} strokeLinecap="round" />
          <path d="M63,21.5 L63,17.5" stroke="#1a1828" strokeWidth={1.3} strokeLinecap="round" />
          <path d="M68,22.5 L70,18.5" stroke="#1a1828" strokeWidth={1.4} strokeLinecap="round" />
          <path d="M70,24 L73,20" stroke="#1a1828" strokeWidth={1.5} strokeLinecap="round" />

          {/* ── NOSE ── */}
          <ellipse cx={50} cy={37} rx={2} ry={1.4} fill="#D4906A" />

          {/* ── MOUTH — Sukuna's signature cocky smirk ── */}
          {/* Main smirk: raised on left, drops on right */}
          <path d="M39,44 Q44,41 50,43 Q56,45 60,42" stroke="#8B3010" strokeWidth={2} fill="none" strokeLinecap="round" />
          {/* Subtle upper lip */}
          <path d="M41,43.5 Q50,40 59,42.5" stroke="#B04020" strokeWidth={0.9} fill="none" strokeLinecap="round" opacity={0.45} />
          {/* Small fang hint on left corner */}
          <path d="M40,44 L39,47 L42,46" fill="white" stroke="#ccc" strokeWidth={0.5} />

        </motion.g>
      </svg>
    </motion.div>
  );
}
