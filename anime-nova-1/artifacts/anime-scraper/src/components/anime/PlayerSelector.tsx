import { X, Play } from 'lucide-react';
import { useLocation } from 'wouter';

interface PlayerSelectorProps {
  videoUrl: string;
  animeTitle: string;
  onClose: () => void;
}

export default function PlayerSelector({ videoUrl, animeTitle, onClose }: PlayerSelectorProps) {
  const [, navigate] = useLocation();

  const handlePlay = () => {
    navigate(`/watch?url=${encodeURIComponent(videoUrl)}&title=${encodeURIComponent(animeTitle)}`);
  };

  return (
    <div className="fixed inset-0 bg-black/80 backdrop-blur-sm z-[100] flex items-center justify-center p-4">
      <div className="bg-[#1a1625] rounded-3xl p-6 max-w-sm w-full relative border border-purple-500/20 shadow-2xl">
        <button onClick={onClose} className="absolute top-3 left-3 text-gray-400 hover:text-white transition-colors">
          <X size={24} />
        </button>
        <div className="text-center" dir="rtl">
          <h2 className="text-white text-xl font-black mb-2">جاهز للتشغيل</h2>
          <p className="text-gray-400 text-sm mb-6 line-clamp-2">{animeTitle}</p>
          <div className="bg-purple-600/20 rounded-full w-24 h-24 mx-auto mb-6 flex items-center justify-center">
            <div className="bg-purple-600 rounded-full w-16 h-16 flex items-center justify-center">
              <Play size={32} className="text-white ml-1" fill="white" />
            </div>
          </div>
          <button
            onClick={handlePlay}
            className="bg-purple-600 hover:bg-purple-700 text-white font-black py-4 px-8 rounded-2xl w-full flex items-center justify-center gap-2 text-lg transition-all active:scale-95"
          >
            شغل الحلقة <Play size={20} fill="white" />
          </button>
        </div>
      </div>
    </div>
  );
}
