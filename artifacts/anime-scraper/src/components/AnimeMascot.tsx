import { motion, AnimatePresence } from "framer-motion";
import { useState, useRef, useCallback } from "react";

export type MascotMood = "idle" | "loading" | "empty";

const SMUG_LINES = [
  "ضعيف...",
  "أسرع.",
  "صبري ينفد.",
  "هذا مُمِل.",
  "أنا ملك اللعنات.",
  "لا تُضيع وقتي.",
];

interface Props {
  className?: string;
  mood?: MascotMood;
}

export function AnimeMascot({ className, mood = "idle" }: Props) {
  const [bubble, setBubble] = useState<string | null>(null);
  const [pupil, setPupil] = useState({ x: 0, y: 0 });
  const timerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const svgRef = useRef<SVGSVGElement>(null);

  /* ── click → speech bubble ── */
  const handleClick = useCallback(() => {
    const line = SMUG_LINES[Math.floor(Math.random() * SMUG_LINES.length)];
    setBubble(line);
    if (timerRef.current) clearTimeout(timerRef.current);
    timerRef.current = setTimeout(() => setBubble(null), 2200);
  }, []);

  /* ── hover → pupil tracking ── */
  const handleMouseMove = useCallback((e: React.MouseEvent<SVGSVGElement>) => {
    const rect = svgRef.current?.getBoundingClientRect();
    if (!rect) return;
    const cx = rect.left + rect.width / 2;
    const cy = rect.top + rect.height * 0.3;
    const dx = (e.clientX - cx) / rect.width;
    const dy = (e.clientY - cy) / rect.height;
    setPupil({
      x: Math.max(-2.5, Math.min(2.5, dx * 5)),
      y: Math.max(-1.5, Math.min(1.5, dy * 3)),
    });
  }, []);

  const handleMouseLeave = useCallback(() => setPupil({ x: 0, y: 0 }), []);

  /* ══ animation configs ══ */

  /* IDLE — walks back and forth */
  const idleBody = {
    animate: { x: [0, 20, 40, 20, 0], y: [0, -2, 0, -2, 0] },
    transition: { duration: 2.8, repeat: Infinity, ease: "easeInOut" as const, times: [0, 0.24, 0.5, 0.76, 1] },
  };
  const idleShadow = {
    animate: { x: [0, 20, 40, 20, 0], scaleX: [1, 0.9, 0.78, 0.9, 1] },
    transition: { duration: 2.8, repeat: Infinity, ease: "easeInOut" as const, times: [0, 0.24, 0.5, 0.76, 1] },
  };
  const idleLegL = { animate: { rotate: [4, -22, 24, -22, 4] }, transition: { duration: 2.8, repeat: Infinity, ease: "easeInOut" as const } };
  const idleLegR = { animate: { rotate: [-4, 24, -22, 24, -4] }, transition: { duration: 2.8, repeat: Infinity, ease: "easeInOut" as const } };
  const idleArmL = { animate: { rotate: [5, -16, 18, -16, 5] }, transition: { duration: 2.8, repeat: Infinity, ease: "easeInOut" as const } };
  const idleArmR = { animate: { rotate: [-5, 18, -16, 18, -5] }, transition: { duration: 2.8, repeat: Infinity, ease: "easeInOut" as const } };

  /* LOADING — stays in place, right foot taps fast, left arm crosses */
  const loadBody = {
    animate: { x: 0, y: [0, -1, 0, -1, 0] },
    transition: { duration: 1.2, repeat: Infinity, ease: "easeInOut" as const },
  };
  const loadShadow = {
    animate: { x: 0, scaleX: [1, 0.97, 1, 0.97, 1] },
    transition: { duration: 1.2, repeat: Infinity, ease: "easeInOut" as const },
  };
  const loadLegL = { animate: { rotate: 0 }, transition: {} };
  const loadLegR = { animate: { rotate: [0, -28, 0, -28, 0] }, transition: { duration: 0.5, repeat: Infinity, ease: "easeInOut" as const } };
  const loadArmL = { animate: { rotate: -18 }, transition: { duration: 0.4 } };
  const loadArmR = { animate: { rotate: 18 }, transition: { duration: 0.4 } };

  /* EMPTY — shrug: arms go up, head tilts */
  const emptyBody = {
    animate: { x: 0, y: [0, -3, 0], rotate: [0, 3, 0] },
    transition: { duration: 2.2, repeat: Infinity, ease: "easeInOut" as const },
  };
  const emptyShadow = {
    animate: { x: 0, scaleX: [1, 0.85, 1] },
    transition: { duration: 2.2, repeat: Infinity, ease: "easeInOut" as const },
  };
  const emptyLegL = { animate: { rotate: 6 }, transition: { duration: 0.4 } };
  const emptyLegR = { animate: { rotate: -6 }, transition: { duration: 0.4 } };
  const emptyArmL = { animate: { rotate: [0, -42, 0] }, transition: { duration: 2.2, repeat: Infinity, ease: "easeInOut" as const } };
  const emptyArmR = { animate: { rotate: [0, 42, 0] }, transition: { duration: 2.2, repeat: Infinity, ease: "easeInOut" as const } };

  const bConf = mood === "idle" ? idleBody : mood === "loading" ? loadBody : emptyBody;
  const sConf = mood === "idle" ? idleShadow : mood === "loading" ? loadShadow : emptyShadow;
  const llConf = mood === "idle" ? idleLegL : mood === "loading" ? loadLegL : emptyLegL;
  const rlConf = mood === "idle" ? idleLegR : mood === "loading" ? loadLegR : emptyLegR;
  const laConf = mood === "idle" ? idleArmL : mood === "loading" ? loadArmL : emptyArmL;
  const raConf = mood === "idle" ? idleArmR : mood === "loading" ? loadArmR : emptyArmR;

  /* blink: every ~4s */
  const blinkSeq = {
    animate: { scaleY: [1, 1, 0.08, 1, 1] },
    transition: { duration: 4.2, repeat: Infinity, ease: "easeInOut" as const, times: [0, 0.88, 0.92, 0.97, 1] },
  };

  return (
    <div className={`relative flex flex-col items-center select-none ${className ?? ""}`}>
      {/* ── speech bubble ── */}
      <AnimatePresence>
        {bubble && (
          <motion.div
            key={bubble}
            initial={{ opacity: 0, y: 6, scale: 0.88 }}
            animate={{ opacity: 1, y: 0, scale: 1 }}
            exit={{ opacity: 0, y: -4, scale: 0.92 }}
            transition={{ duration: 0.22 }}
            className="absolute -top-10 left-1/2 -translate-x-1/2 whitespace-nowrap"
            style={{ zIndex: 10 }}
          >
            <div
              className="px-3 py-1.5 rounded-xl text-[12px] font-bold font-['Cairo'] text-white/90"
              style={{
                background: "linear-gradient(135deg,#4a0808ee,#8B0000ee)",
                border: "1px solid rgba(220,40,40,0.45)",
                boxShadow: "0 4px 16px rgba(180,0,0,0.35)",
              }}
            >
              {bubble}
            </div>
            {/* bubble tail */}
            <div className="w-0 h-0 mx-auto"
              style={{ borderLeft: "5px solid transparent", borderRight: "5px solid transparent", borderTop: "6px solid #8B0000cc" }} />
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── SVG character ── */}
      <motion.div
        style={{ overflow: "visible", display: "flex", justifyContent: "center", cursor: "pointer" }}
        initial={{ opacity: 0, y: 14, scale: 0.86 }}
        animate={{ opacity: 1, y: 0, scale: 1 }}
        transition={{ duration: 0.38, delay: 0.08, ease: [0.22, 1, 0.36, 1] }}
        onClick={handleClick}
        title="اضغط"
      >
        <svg
          ref={svgRef}
          viewBox="0 0 100 130"
          width="96"
          height="125"
          overflow="visible"
          aria-hidden="true"
          onMouseMove={handleMouseMove}
          onMouseLeave={handleMouseLeave}
        >
          <defs>
            <radialGradient id="m-sk" cx="42%" cy="36%" r="68%">
              <stop offset="0%" stopColor="#EAE6E0" />
              <stop offset="65%" stopColor="#D4CEC4" />
              <stop offset="100%" stopColor="#C0BAB0" />
            </radialGradient>
            <radialGradient id="m-hr" cx="45%" cy="28%" r="65%">
              <stop offset="0%" stopColor="#DEDAD2" />
              <stop offset="55%" stopColor="#B4B0A6" />
              <stop offset="100%" stopColor="#888480" />
            </radialGradient>
            <linearGradient id="m-rd" x1="0" y1="0" x2="0" y2="1">
              <stop offset="0%" stopColor="#CC2020" />
              <stop offset="100%" stopColor="#961010" />
            </linearGradient>
            <linearGradient id="m-col" x1="0" y1="0" x2="0" y2="1">
              <stop offset="0%" stopColor="#2a2520" />
              <stop offset="100%" stopColor="#181410" />
            </linearGradient>
          </defs>

          {/* ── ground shadow ── */}
          <motion.ellipse
            cx={50} cy={126} rx={20} ry={3.2}
            fill="rgba(0,0,0,0.30)"
            {...(sConf as any)}
            style={{ transformOrigin: "50px 126px" }}
          />

          {/* ══ character group ══ */}
          <motion.g {...(bConf as any)}>

            {/* ── left leg ── */}
            <motion.g style={{ transformOrigin: "37px 91px" }} {...(llConf as any)}>
              <rect x={32} y={91} width={11} height={27} rx={5.5} fill="url(#m-rd)" />
              <rect x={30} y={113} width={16} height={6} rx={3} fill="#181410" />
              <rect x={31} y={112} width={13} height={2.5} rx={1.2} fill="#7a0c0c" />
            </motion.g>

            {/* ── right leg ── */}
            <motion.g style={{ transformOrigin: "61px 91px" }} {...(rlConf as any)}>
              <rect x={56} y={91} width={11} height={27} rx={5.5} fill="url(#m-rd)" />
              <rect x={54} y={113} width={16} height={6} rx={3} fill="#181410" />
              <rect x={55} y={112} width={13} height={2.5} rx={1.2} fill="#7a0c0c" />
            </motion.g>

            {/* ── body / kimono ── */}
            <rect x={24} y={56} width={52} height={37} rx={11} fill="url(#m-rd)" />
            {/* obi belt */}
            <rect x={24} y={85} width={52} height={6} rx={3} fill="#720a0a" />
            {/* collar opening */}
            <path d="M50,56 L41,70 L50,77 L59,70 Z" fill="url(#m-col)" />
            <path d="M50,56 L44,68 L50,73 L56,68 Z" fill="#CC2020" opacity={0.4} />
            {/* olive buttons */}
            <circle cx={44} cy={80} r={2.5} fill="#5E5428" />
            <circle cx={56} cy={80} r={2.5} fill="#5E5428" />
            <circle cx={50} cy={75.5} r={2.5} fill="#5E5428" />
            {/* chest tattoo marks */}
            <path d="M35,63 L32,75" stroke="#600" strokeWidth={1.4} strokeLinecap="round" opacity={0.55} />
            <path d="M65,63 L68,75" stroke="#600" strokeWidth={1.4} strokeLinecap="round" opacity={0.55} />

            {/* ── left arm ── */}
            <motion.g style={{ transformOrigin: "24px 62px" }} {...(laConf as any)}>
              <rect x={9} y={62} width={15} height={24} rx={7.5} fill="url(#m-rd)" />
              <rect x={9} y={79} width={15} height={4} rx={2} fill="#720a0a" />
              <rect x={10} y={83} width={13} height={10} rx={5.5} fill="url(#m-sk)" />
              <line x1={12} y1={88} x2={21} y2={88} stroke="#ACA8A0" strokeWidth={0.7} opacity={0.35} />
            </motion.g>

            {/* ── right arm ── */}
            <motion.g style={{ transformOrigin: "76px 62px" }} {...(raConf as any)}>
              <rect x={76} y={62} width={15} height={24} rx={7.5} fill="url(#m-rd)" />
              <rect x={76} y={79} width={15} height={4} rx={2} fill="#720a0a" />
              <rect x={77} y={83} width={13} height={10} rx={5.5} fill="url(#m-sk)" />
              <line x1={79} y1={88} x2={88} y2={88} stroke="#ACA8A0" strokeWidth={0.7} opacity={0.35} />
            </motion.g>

            {/* ── neck ── */}
            <rect x={43.5} y={49} width={13} height={11} rx={6.5} fill="url(#m-sk)" />
            <line x1={47} y1={51} x2={47} y2={59} stroke="#4e4a46" strokeWidth={1} strokeLinecap="round" opacity={0.5} />
            <line x1={50} y1={50} x2={50} y2={59} stroke="#4e4a46" strokeWidth={1.1} strokeLinecap="round" opacity={0.62} />
            <line x1={53} y1={51} x2={53} y2={59} stroke="#4e4a46" strokeWidth={1} strokeLinecap="round" opacity={0.5} />

            {/* ── back hair ── */}
            <circle cx={50} cy={27} r={27} fill="url(#m-hr)" />
            <ellipse cx={25} cy={46} rx={7} ry={16} fill="#848280" transform="rotate(-12,25,46)" />
            <ellipse cx={75} cy={46} rx={7} ry={16} fill="#848280" transform="rotate(12,75,46)" />

            {/* ── spiky hair ── */}
            <polygon points="24,22 14,5 31,18" fill="#C0BEB4" />
            <polygon points="33,14 28,-2 42,11" fill="#CCCAC0" />
            <polygon points="43,9 49,-7 55,9" fill="#D4D2C8" />
            <polygon points="57,14 72,-2 67,11" fill="#CCCAC0" />
            <polygon points="68,22 86,5 69,18" fill="#C0BEB4" />
            <polygon points="43,9 49,-7 49,9" fill="rgba(255,255,255,0.20)" />

            {/* ── head ── */}
            <circle cx={50} cy={29} r={22} fill="url(#m-sk)" />

            {/* ── front hair strands ── */}
            <path d="M34,19 Q29,10 31,4 Q36,9 37,17 Z" fill="#B4B0A8" />
            <path d="M40,13 Q38,3 43,1 Q46,7 44,14 Z" fill="#C0BCA8" />
            <path d="M47,10 Q46,1 50,0 Q54,6 52,12 Z" fill="#CCCAC0" />
            <path d="M54,12 Q57,2 62,3 Q61,9 58,14 Z" fill="#C0BCA8" />
            <path d="M62,18 Q69,10 69,4 Q64,9 63,16 Z" fill="#B4B0A8" />
            <path d="M47,10 Q50,3 53,10 Q51,7 50,7 Q49,7 47,10 Z" fill="rgba(255,255,255,0.28)" />

            {/* ══ face ══ */}

            {/* forehead diamond tattoo */}
            <path d="M50,12 L54,17 L50,22 L46,17 Z" fill="#1e1a16" opacity={0.88} />

            {/* under-eye curse lines – left */}
            <line x1={30} y1={37} x2={27} y2={43} stroke="#1e1a16" strokeWidth={2.1} strokeLinecap="round" />
            <line x1={33} y1={37} x2={30} y2={44} stroke="#1e1a16" strokeWidth={1.5} strokeLinecap="round" opacity={0.72} />
            {/* under-eye curse lines – right */}
            <line x1={70} y1={37} x2={73} y2={43} stroke="#1e1a16" strokeWidth={2.1} strokeLinecap="round" />
            <line x1={67} y1={37} x2={70} y2={44} stroke="#1e1a16" strokeWidth={1.5} strokeLinecap="round" opacity={0.72} />

            {/* cheek side marks */}
            <line x1={27} y1={33} x2={22} y2={31} stroke="#1e1a16" strokeWidth={1.3} strokeLinecap="round" opacity={0.58} />
            <line x1={73} y1={33} x2={78} y2={31} stroke="#1e1a16" strokeWidth={1.3} strokeLinecap="round" opacity={0.58} />

            {/* chin tattoo */}
            <path d="M47,48 Q50,51.5 53,48" stroke="#1e1a16" strokeWidth={1.3} fill="none" strokeLinecap="round" opacity={0.52} />

            {/* ── left eye (blink group) ── */}
            <motion.g
              style={{ transformOrigin: "36px 30px" }}
              animate={blinkSeq.animate}
              transition={blinkSeq.transition}
            >
              <ellipse cx={36} cy={30} rx={8} ry={6.5} fill="#E4E4EE" />
              {/* heavy upper eyelid shadow */}
              <path d="M28,27 Q36,22 44,27 L44,29 Q36,25 28,29 Z" fill="#1e1a16" opacity={0.20} />
              {/* iris */}
              <ellipse cx={36} cy={30.5} rx={4.5} ry={5} fill="#521208" />
              <ellipse cx={36} cy={30.5} rx={3.5} ry={4} fill="#721A14" />
              {/* pupil — tracks cursor */}
              <ellipse
                cx={36 + pupil.x}
                cy={30.5 + pupil.y}
                rx={2} ry={2.5}
                fill="#0c0808"
              />
              {/* highlights */}
              <circle cx={34.5 + pupil.x * 0.4} cy={28.5 + pupil.y * 0.4} r={1.4} fill="rgba(255,255,255,0.84)" />
              <circle cx={38 + pupil.x * 0.2} cy={32 + pupil.y * 0.2} r={0.7} fill="rgba(255,255,255,0.42)" />
              {/* lower lid line */}
              <path d="M28.5,34 Q36,37 43.5,34" stroke="#907878" strokeWidth={0.7} fill="none" opacity={0.38} />
            </motion.g>

            {/* ── right eye (blink group) ── */}
            <motion.g
              style={{ transformOrigin: "64px 30px" }}
              animate={blinkSeq.animate}
              transition={{ ...blinkSeq.transition, delay: 0.05 }}
            >
              <ellipse cx={64} cy={30} rx={8} ry={6.5} fill="#E4E4EE" />
              <path d="M56,27 Q64,22 72,27 L72,29 Q64,25 56,29 Z" fill="#1e1a16" opacity={0.20} />
              <ellipse cx={64} cy={30.5} rx={4.5} ry={5} fill="#521208" />
              <ellipse cx={64} cy={30.5} rx={3.5} ry={4} fill="#721A14" />
              <ellipse
                cx={64 + pupil.x}
                cy={30.5 + pupil.y}
                rx={2} ry={2.5}
                fill="#0c0808"
              />
              <circle cx={62.5 + pupil.x * 0.4} cy={28.5 + pupil.y * 0.4} r={1.4} fill="rgba(255,255,255,0.84)" />
              <circle cx={66 + pupil.x * 0.2} cy={32 + pupil.y * 0.2} r={0.7} fill="rgba(255,255,255,0.42)" />
              <path d="M56.5,34 Q64,37 71.5,34" stroke="#907878" strokeWidth={0.7} fill="none" opacity={0.38} />
            </motion.g>

            {/* ── eyebrows — thick, angled (arrogant) ── */}
            <path d="M28,23 Q36,19 44,21" stroke="#141010" strokeWidth={2.9} fill="none" strokeLinecap="round" />
            <path d="M56,21 Q64,19 72,23" stroke="#141010" strokeWidth={2.9} fill="none" strokeLinecap="round" />
            <line x1={49} y1={22} x2={51} y2={20} stroke="#1e1a16" strokeWidth={1.2} strokeLinecap="round" opacity={0.48} />

            {/* ── nose ── */}
            <ellipse cx={50} cy={38} rx={2} ry={1.3} fill="#B0AAA0" opacity={0.78} />
            <path d="M47,35 Q50,33 53,35" stroke="#888480" strokeWidth={0.9} fill="none" opacity={0.48} />

            {/* ── mouth — smug half-smirk ── */}
            <path d="M41,44 Q46,42 50,43 Q55,44.5 59,42" stroke="#786858" strokeWidth={1.8} fill="none" strokeLinecap="round" />
            <path d="M43,43 Q50,40.5 57,43" stroke="#907060" strokeWidth={0.9} fill="none" strokeLinecap="round" opacity={0.38} />

          </motion.g>
        </svg>
      </motion.div>

      {/* ── mood hint text ── */}
      {mood === "loading" && (
        <motion.p
          initial={{ opacity: 0 }}
          animate={{ opacity: [0, 0.6, 0.6, 0] }}
          transition={{ duration: 3, repeat: Infinity, times: [0, 0.15, 0.85, 1] }}
          className="text-[11px] text-red-400/70 font-bold font-['Cairo'] mt-1"
        >
          ينتظر بنفاد صبر...
        </motion.p>
      )}
      {mood === "empty" && (
        <motion.p
          initial={{ opacity: 0 }}
          animate={{ opacity: 0.55 }}
          transition={{ delay: 0.5, duration: 0.4 }}
          className="text-[11px] text-white/40 font-bold font-['Cairo'] mt-1"
        >
          لا شيء يستحق...
        </motion.p>
      )}
    </div>
  );
}
