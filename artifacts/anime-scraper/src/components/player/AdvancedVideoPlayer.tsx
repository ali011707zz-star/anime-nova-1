/**
 * Advanced Video Player Component
 * مشغل فيديو متقدم عصري مع دعم HLS وMP4 والـ iframes
 * 
 * الميزات:
 * - دعم جودات متعددة
 * - تحكم كامل في المشغل
 * - واجهة عصرية وانيقة
 * - دعم الترجمة
 * - حفظ الوقت المشاهد
 */

import React, { useState, useRef, useEffect, useCallback } from 'react';
import {
  Play,
  Pause,
  Volume2,
  VolumeX,
  Maximize,
  Settings,
  SkipBack,
  SkipForward,
  ChevronDown,
  Loader,
  AlertCircle,
} from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';
import Hls from 'hls.js';

interface VideoSource {
  url: string;
  type: 'hls' | 'mp4' | 'iframe';
  quality?: string;
  server?: string;
}

interface PlayerControlsProps {
  isPlaying: boolean;
  isMuted: boolean;
  volume: number;
  currentTime: number;
  duration: number;
  quality: string;
  qualities: string[];
  onPlayPause: () => void;
  onMuteToggle: () => void;
  onVolumeChange: (vol: number) => void;
  onSeek: (time: number) => void;
  onQualityChange: (q: string) => void;
  onFullscreen: () => void;
}

const PlayerControls: React.FC<PlayerControlsProps> = ({
  isPlaying,
  isMuted,
  volume,
  currentTime,
  duration,
  quality,
  qualities,
  onPlayPause,
  onMuteToggle,
  onVolumeChange,
  onSeek,
  onQualityChange,
  onFullscreen,
}) => {
  const [showQualityMenu, setShowQualityMenu] = useState(false);

  const formatTime = (seconds: number) => {
    if (!seconds || isNaN(seconds)) return '0:00';
    const hrs = Math.floor(seconds / 3600);
    const mins = Math.floor((seconds % 3600) / 60);
    const secs = Math.floor(seconds % 60);
    return hrs > 0
      ? `${hrs}:${String(mins).padStart(2, '0')}:${String(secs).padStart(2, '0')}`
      : `${mins}:${String(secs).padStart(2, '0')}`;
  };

  const progressPercent = duration ? (currentTime / duration) * 100 : 0;

  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      exit={{ opacity: 0, y: 20 }}
      className="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black via-black/50 to-transparent pt-8 pb-4 px-4 space-y-3"
    >
      {/* Progress bar */}
      <div className="w-full group cursor-pointer" onClick={(e) => {
        const rect = e.currentTarget.getBoundingClientRect();
        const percent = (e.clientX - rect.left) / rect.width;
        onSeek(percent * duration);
      }}>
        <div className="h-1 bg-white/20 rounded-full overflow-hidden group-hover:h-2 transition-all">
          <div
            className="h-full bg-gradient-to-r from-primary via-primary/80 to-primary/60"
            style={{ width: `${progressPercent}%` }}
          />
        </div>
      </div>

      {/* Controls */}
      <div className="flex items-center justify-between text-white">
        <div className="flex items-center gap-2">
          {/* Play/Pause */}
          <button
            onClick={onPlayPause}
            className="w-9 h-9 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition-colors"
          >
            {isPlaying ? (
              <Pause className="w-5 h-5" />
            ) : (
              <Play className="w-5 h-5 ml-0.5" />
            )}
          </button>

          {/* Volume */}
          <div className="flex items-center gap-2">
            <button
              onClick={onMuteToggle}
              className="w-9 h-9 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition-colors"
            >
              {isMuted ? (
                <VolumeX className="w-5 h-5" />
              ) : (
                <Volume2 className="w-5 h-5" />
              )}
            </button>
            <input
              type="range"
              min="0"
              max="100"
              value={isMuted ? 0 : volume}
              onChange={(e) => {
                onVolumeChange(parseInt(e.target.value));
              }}
              className="w-16 h-1 rounded-full bg-white/20 appearance-none cursor-pointer accent-primary"
            />
          </div>

          {/* Time */}
          <span className="text-xs font-semibold ml-2">
            {formatTime(currentTime)} / {formatTime(duration)}
          </span>
        </div>

        <div className="flex items-center gap-2">
          {/* Quality selector */}
          <div className="relative">
            <button
              onClick={() => setShowQualityMenu(!showQualityMenu)}
              className="px-3 h-9 rounded-full bg-white/10 hover:bg-white/20 flex items-center gap-1.5 transition-colors text-xs font-semibold"
            >
              {quality}
              <ChevronDown className="w-3.5 h-3.5" />
            </button>
            <AnimatePresence>
              {showQualityMenu && (
                <motion.div
                  initial={{ opacity: 0, y: 8 }}
                  animate={{ opacity: 1, y: 0 }}
                  exit={{ opacity: 0, y: 8 }}
                  className="absolute bottom-full right-0 mb-2 bg-black/90 rounded-lg overflow-hidden border border-white/10"
                >
                  {qualities.map((q) => (
                    <button
                      key={q}
                      onClick={() => {
                        onQualityChange(q);
                        setShowQualityMenu(false);
                      }}
                      className={`w-full px-4 py-2 text-left text-xs transition-colors ${
                        q === quality
                          ? 'bg-primary text-white'
                          : 'hover:bg-white/10 text-white/70'
                      }`}
                    >
                      {q}
                    </button>
                  ))}
                </motion.div>
              )}
            </AnimatePresence>
          </div>

          {/* Fullscreen */}
          <button
            onClick={onFullscreen}
            className="w-9 h-9 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition-colors"
          >
            <Maximize className="w-5 h-5" />
          </button>
        </div>
      </div>
    </motion.div>
  );
};

interface AdvancedVideoPlayerProps {
  sources: VideoSource[];
  title?: string;
  poster?: string;
  onTimeUpdate?: (time: number) => void;
  autoPlay?: boolean;
}

export const AdvancedVideoPlayer: React.FC<AdvancedVideoPlayerProps> = ({
  sources,
  title,
  poster,
  onTimeUpdate,
  autoPlay = false,
}) => {
  const containerRef = useRef<HTMLDivElement>(null);
  const videoRef = useRef<HTMLVideoElement>(null);
  const iframeRef = useRef<HTMLIFrameElement>(null);
  const hlsRef = useRef<Hls | null>(null);

  const [isPlaying, setIsPlaying] = useState(autoPlay);
  const [isMuted, setIsMuted] = useState(false);
  const [volume, setVolume] = useState(100);
  const [currentTime, setCurrentTime] = useState(0);
  const [duration, setDuration] = useState(0);
  const [currentQuality, setCurrentQuality] = useState<string>(
    sources[0]?.quality || 'auto'
  );
  const [showControls, setShowControls] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const controlsTimeoutRef = useRef<NodeJS.Timeout>();

  const currentSource = sources.find((s) => s.quality === currentQuality) || sources[0];
  const qualities = [...new Set(sources.map((s) => s.quality || 'auto'))];

  // Setup HLS or MP4 playback
  useEffect(() => {
    if (currentSource?.type === 'iframe' || !videoRef.current) return;

    const video = videoRef.current;
    if (currentSource.type === 'hls' && Hls.isSupported()) {
      const hls = new Hls({ enableWorker: true });
      hlsRef.current = hls;
      hls.loadSource(currentSource.url);
      hls.attachMedia(video);
      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        setLoading(false);
        if (autoPlay) video.play();
      });
      hls.on(Hls.Events.ERROR, (event, data) => {
        if (data.fatal) {
          setError('خطأ في تحميل الفيديو. يرجى محاولة جودة أخرى.');
        }
      });
    } else if (currentSource.type === 'mp4') {
      video.src = currentSource.url;
      setLoading(false);
    }

    return () => {
      hlsRef.current?.destroy();
    };
  }, [currentSource, autoPlay]);

  const handlePlayPause = () => {
    if (!videoRef.current && !iframeRef.current) return;
    if (videoRef.current) {
      isPlaying ? videoRef.current.pause() : videoRef.current.play();
    }
    setIsPlaying(!isPlaying);
  };

  const handleMouseMove = () => {
    setShowControls(true);
    if (controlsTimeoutRef.current) clearTimeout(controlsTimeoutRef.current);
    if (isPlaying) {
      controlsTimeoutRef.current = setTimeout(() => setShowControls(false), 3000);
    }
  };

  const handleFullscreen = () => {
    const elem = containerRef.current || videoRef.current;
    if (elem && elem.requestFullscreen) {
      elem.requestFullscreen();
    } else if ((elem as any)?.webkitRequestFullscreen) {
      (elem as any).webkitRequestFullscreen();
    }
  };

  if (currentSource?.type === 'iframe') {
    return (
      <div
        ref={containerRef}
        className="w-full h-full bg-black rounded-lg overflow-hidden"
      >
        <iframe
          ref={iframeRef}
          src={currentSource.url}
          title={title}
          className="w-full h-full border-none"
          allow="autoplay; fullscreen; encrypted-media"
          allowFullScreen
        />
      </div>
    );
  }

  return (
    <div
      ref={containerRef}
      className="group relative w-full h-full bg-black rounded-lg overflow-hidden"
      onMouseMove={handleMouseMove}
      onClick={handlePlayPause}
    >
      {/* Loading state */}
      {loading && (
        <div className="absolute inset-0 flex items-center justify-center bg-black/50">
          <div className="text-center">
            <Loader className="w-12 h-12 text-primary animate-spin mx-auto mb-3" />
            <p className="text-white text-sm font-['Cairo']">جاري التحميل...</p>
          </div>
        </div>
      )}

      {/* Error state */}
      {error && (
        <div className="absolute inset-0 flex items-center justify-center bg-black/50">
          <div className="text-center space-y-3">
            <AlertCircle className="w-12 h-12 text-red-500 mx-auto" />
            <p className="text-white text-sm font-['Cairo']">{error}</p>
            <button
              onClick={() => setError(null)}
              className="px-4 py-2 bg-primary rounded-lg text-white text-xs font-bold transition-colors hover:bg-primary/90"
            >
              إعادة محاولة
            </button>
          </div>
        </div>
      )}

      {/* Video element */}
      <video
        ref={videoRef}
        className="w-full h-full"
        poster={poster}
        onPlay={() => setIsPlaying(true)}
        onPause={() => setIsPlaying(false)}
        onTimeUpdate={(e) => {
          const time = e.currentTarget.currentTime;
          setCurrentTime(time);
          onTimeUpdate?.(time);
        }}
        onLoadedMetadata={(e) => setDuration(e.currentTarget.duration)}
        onVolumeChange={(e) => setVolume(e.currentTarget.volume * 100)}
        controls={false}
        playsInline
      />

      {/* Controls overlay */}
      <div
        className="absolute inset-0"
        onMouseMove={handleMouseMove}
      >
        {/* Play button overlay */}
        {!isPlaying && (
          <div className="absolute inset-0 flex items-center justify-center">
            <button
              onClick={handlePlayPause}
              className="w-16 h-16 rounded-full bg-primary/80 hover:bg-primary flex items-center justify-center transition-colors shadow-lg"
            >
              <Play className="w-8 h-8 text-white ml-0.5" />
            </button>
          </div>
        )}

        {/* Controls bar */}
        <AnimatePresence>
          {showControls && (
            <PlayerControls
              isPlaying={isPlaying}
              isMuted={isMuted}
              volume={volume}
              currentTime={currentTime}
              duration={duration}
              quality={currentQuality}
              qualities={qualities}
              onPlayPause={handlePlayPause}
              onMuteToggle={() => {
                setIsMuted(!isMuted);
                if (videoRef.current) videoRef.current.muted = !isMuted;
              }}
              onVolumeChange={(vol) => {
                setVolume(vol);
                if (videoRef.current) videoRef.current.volume = vol / 100;
              }}
              onSeek={(time) => {
                if (videoRef.current) videoRef.current.currentTime = time;
              }}
              onQualityChange={setCurrentQuality}
              onFullscreen={handleFullscreen}
            />
          )}
        </AnimatePresence>
      </div>
    </div>
  );
};

export default AdvancedVideoPlayer;
