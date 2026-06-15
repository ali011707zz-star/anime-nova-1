import { motion } from "framer-motion";

/**
 * AnimeMascot — شخصية أنمي chibi تقوم بحركة انتظار واقعية
 * خطوتان إلى اليمين ثم العودة لنقطة البداية بشكل متكرر
 */
export function AnimeMascot({ className }: { className?: string }) {
  const DUR = 2.6;
  const TIMES: number[] = [0, 0.24, 0.5, 0.74, 1];

  const bodyT = {
    animate: { x: [0, 22, 44, 22, 0], y: [0, -2, 0, -2, 0] },
    transition: { duration: DUR, repeat: Infinity, ease: "easeInOut" as const, times: TIMES },
  };

  const legL = {
    animate: { rotate: [3, -22, 24, -22, 3] },
    transition: { duration: DUR, repeat: Infinity, ease: "easeInOut" as const, times: TIMES },
  };
  const legR = {
    animate: { rotate: [-3, 24, -22, 24, -3] },
    transition: { duration: DUR, repeat: Infinity, ease: "easeInOut" as const, times: TIMES },
  };
  const armL = {
    animate: { rotate: [6, -16, 18, -16, 6] },
    transition: { duration: DUR, repeat: Infinity, ease: "easeInOut" as const, times: TIMES },
  };
  const armR = {
    animate: { rotate: [-6, 18, -16, 18, -6] },
    transition: { duration: DUR, repeat: Infinity, ease: "easeInOut" as const, times: TIMES },
  };
  const shadow = {
    animate: { scaleX: [1, 0.87, 0.75, 0.87, 1], opacity: [0.22, 0.16, 0.12, 0.16, 0.22] },
    transition: { duration: DUR, repeat: Infinity, ease: "easeInOut" as const, times: TIMES },
  };

  return (
    <motion.div
      className={className}
      initial={{ opacity: 0, y: 14, scale: 0.88 }}
      animate={{ opacity: 1, y: 0, scale: 1 }}
      transition={{ duration: 0.45, delay: 0.55, ease: [0.22, 1, 0.36, 1] }}
    >
      <svg viewBox="0 0 96 124" width="84" height="109" aria-hidden="true">
        {/* ─── ground shadow (stays in place) ─── */}
        <motion.ellipse
          cx={44} cy={120} rx={20} ry={4}
          fill="rgba(124,58,237,0.28)"
          animate={shadow.animate}
          transition={shadow.transition}
          style={{ transformOrigin: "44px 120px" }}
        />

        {/* ─── Character body (translates L→R→L) ─── */}
        <motion.g
          animate={bodyT.animate}
          transition={bodyT.transition}
        >
          {/* ══ LEGS ══ */}
          {/* Left leg — pivot at hip */}
          <motion.g
            style={{ transformOrigin: "36px 84px" }}
            animate={legL.animate}
            transition={legL.transition}
          >
            <rect x={32} y={84} width={9} height={24} rx={4.5} fill="#1E1B4B" />
            {/* left cuff */}
            <rect x={31.5} y={100} width={10} height={5} rx={2.5} fill="#2D1B69" />
            {/* left shoe */}
            <ellipse cx={36.5} cy={110} rx={8.5} ry={4} fill="#111827" />
            <ellipse cx={38} cy={108} rx={4} ry={2} fill="#374151" />
          </motion.g>

          {/* Right leg */}
          <motion.g
            style={{ transformOrigin: "52px 84px" }}
            animate={legR.animate}
            transition={legR.transition}
          >
            <rect x={48} y={84} width={9} height={24} rx={4.5} fill="#1E1B4B" />
            {/* right cuff */}
            <rect x={47.5} y={100} width={10} height={5} rx={2.5} fill="#2D1B69" />
            {/* right shoe */}
            <ellipse cx={52.5} cy={110} rx={8.5} ry={4} fill="#111827" />
            <ellipse cx={54} cy={108} rx={4} ry={2} fill="#374151" />
          </motion.g>

          {/* ══ BODY ══ */}
          {/* Torso / jacket */}
          <rect x={26} y={54} width={36} height={33} rx={9} fill="#1E1B4B" />
          {/* Jacket collar stripe */}
          <rect x={40} y={54} width={8} height={20} rx={4} fill="#4C1D95" />
          {/* Star/badge on chest */}
          <circle cx={32} cy={64} r={3.5} fill="#7C3AED" opacity={0.7} />
          <circle cx={32} cy={64} r={1.8} fill="#A78BFA" />
          {/* Waist band */}
          <rect x={26} y={83} width={36} height={4} rx={2} fill="#2D1B69" />

          {/* ══ ARMS ══ */}
          {/* Left arm — pivot at left shoulder */}
          <motion.g
            style={{ transformOrigin: "26px 58px" }}
            animate={armL.animate}
            transition={armL.transition}
          >
            <rect x={14} y={58} width={13} height={22} rx={6.5} fill="#1E1B4B" />
            {/* left sleeve cuff */}
            <rect x={13.5} y={73} width={14} height={5} rx={2.5} fill="#2D1B69" />
            {/* left hand */}
            <ellipse cx={21} cy={82} rx={6} ry={5} fill="#FDDBB8" />
            <ellipse cx={20} cy={80} rx={2} ry={1.5} fill="#E8A87C" opacity={0.5} />
          </motion.g>

          {/* Right arm — pivot at right shoulder */}
          <motion.g
            style={{ transformOrigin: "62px 58px" }}
            animate={armR.animate}
            transition={armR.transition}
          >
            <rect x={62} y={58} width={13} height={22} rx={6.5} fill="#1E1B4B" />
            {/* right sleeve cuff */}
            <rect x={61.5} y={73} width={14} height={5} rx={2.5} fill="#2D1B69" />
            {/* right hand */}
            <ellipse cx={68} cy={82} rx={6} ry={5} fill="#FDDBB8" />
            <ellipse cx={67} cy={80} rx={2} ry={1.5} fill="#E8A87C" opacity={0.5} />
          </motion.g>

          {/* ══ NECK ══ */}
          <rect x={39} y={48} width={11} height={9} rx={5.5} fill="#FDDBB8" />

          {/* ══ HAIR — back layer (behind head) ══ */}
          <circle cx={44} cy={28} r={25} fill="#7C3AED" />
          {/* Back hair strands */}
          <ellipse cx={22} cy={38} rx={7} ry={14} fill="#7C3AED" transform="rotate(-12,22,38)" />
          <ellipse cx={66} cy={38} rx={7} ry={14} fill="#7C3AED" transform="rotate(12,66,38)" />

          {/* ══ CAT EARS ══ */}
          {/* Left ear outer */}
          <polygon points="19,19 25,3 33,19" fill="#6D28D9" />
          {/* Left ear inner */}
          <polygon points="21.5,17 25,7 30,17" fill="#C4B5FD" />
          {/* Right ear outer */}
          <polygon points="55,19 63,3 69,19" fill="#6D28D9" />
          {/* Right ear inner */}
          <polygon points="58,17 63,7 66.5,17" fill="#C4B5FD" />

          {/* ══ HEAD ══ */}
          <circle cx={44} cy={28} r={22} fill="#FDDBB8" />
          {/* Cheek shading */}
          <ellipse cx={26} cy={35} rx={7} ry={4} fill="rgba(255,150,150,0.32)" />
          <ellipse cx={62} cy={35} rx={7} ry={4} fill="rgba(255,150,150,0.32)" />

          {/* ══ HAIR FRONT (fringe) ══ */}
          <ellipse cx={29} cy={15} rx={8} ry={11} fill="#7C3AED" transform="rotate(-18,29,15)" />
          <ellipse cx={38} cy={11} rx={7} ry={11} fill="#7C3AED" transform="rotate(-5,38,11)" />
          <ellipse cx={47} cy={10} rx={7} ry={11} fill="#7C3AED" transform="rotate(5,47,10)" />
          <ellipse cx={57} cy={14} rx={7} ry={11} fill="#7C3AED" transform="rotate(18,57,14)" />
          {/* Hair highlight */}
          <ellipse cx={52} cy={14} rx={5} ry={3} fill="rgba(196,181,253,0.35)" transform="rotate(30,52,14)" />

          {/* ══ EYES ══ */}
          {/* Left eye */}
          <ellipse cx={34} cy={29} rx={7} ry={7.5} fill="white" />
          <ellipse cx={34} cy={29.5} rx={6} ry={6.5} fill="#1a0040" />
          <ellipse cx={34} cy={28.5} rx={4} ry={4.5} fill="#8B5CF6" />
          {/* iris shimmer */}
          <ellipse cx={34} cy={27} rx={2.5} ry={1.5} fill="#A78BFA" opacity={0.6} />
          {/* shine spots */}
          <circle cx={31.5} cy={26.5} r={1.8} fill="white" />
          <circle cx={36} cy={31} r={0.9} fill="white" opacity={0.7} />
          {/* upper eyelid shadow */}
          <ellipse cx={34} cy={23.5} rx={6.5} ry={2} fill="rgba(30,27,75,0.5)" />

          {/* Right eye */}
          <ellipse cx={54} cy={29} rx={7} ry={7.5} fill="white" />
          <ellipse cx={54} cy={29.5} rx={6} ry={6.5} fill="#1a0040" />
          <ellipse cx={54} cy={28.5} rx={4} ry={4.5} fill="#8B5CF6" />
          <ellipse cx={54} cy={27} rx={2.5} ry={1.5} fill="#A78BFA" opacity={0.6} />
          <circle cx={51.5} cy={26.5} r={1.8} fill="white" />
          <circle cx={56} cy={31} r={0.9} fill="white" opacity={0.7} />
          <ellipse cx={54} cy={23.5} rx={6.5} ry={2} fill="rgba(30,27,75,0.5)" />

          {/* ══ EYELASHES ══ */}
          {/* Left eye */}
          <line x1={27} y1={23.5} x2={25} y2={20.5} stroke="#1a0040" strokeWidth={1.3} strokeLinecap="round" />
          <line x1={28.5} y1={22.5} x2={27.5} y2={19} stroke="#1a0040" strokeWidth={1.3} strokeLinecap="round" />
          <line x1={40.5} y1={23} x2={42} y2={20} stroke="#1a0040" strokeWidth={1.3} strokeLinecap="round" />
          {/* Right eye */}
          <line x1={47.5} y1={23} x2={46} y2={20} stroke="#1a0040" strokeWidth={1.3} strokeLinecap="round" />
          <line x1={60.5} y1={23.5} x2={62.5} y2={20.5} stroke="#1a0040" strokeWidth={1.3} strokeLinecap="round" />
          <line x1={59} y1={22.5} x2={60} y2={19} stroke="#1a0040" strokeWidth={1.3} strokeLinecap="round" />

          {/* ══ NOSE ══ */}
          <ellipse cx={44} cy={35} rx={1.8} ry={1.2} fill="#E0946A" />

          {/* ══ MOUTH ══ */}
          <path d="M38.5,40 Q44,45 49.5,40" stroke="#C47B55" strokeWidth={1.8} fill="none" strokeLinecap="round" />
          {/* small teeth / inside mouth hint */}
          <path d="M40,41.5 Q44,44 48,41.5" fill="rgba(255,255,255,0.5)" stroke="none" />

          {/* ══ HAIR clip / accessory ══ */}
          <ellipse cx={57} cy={22} rx={3} ry={2} fill="#F472B6" opacity={0.9} />
          <ellipse cx={57} cy={22} rx={1.5} ry={1} fill="#FDE68A" opacity={0.9} />

        </motion.g>
      </svg>
    </motion.div>
  );
}
