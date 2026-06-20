import { Link } from 'wouter';
import { motion } from 'framer-motion';
import { Star } from 'lucide-react';

type AniListAnime = {
  id: number;
  title: { romaji: string; english?: string };
  coverImage: { large: string };
  averageScore?: number;
  episodes?: number;
};

export default function AnimeCard({ anime }: { anime: AniListAnime }) {
  return (
    <Link href={`/watch?anime=${anime.id}&ep=1&title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english ?? "")}`}>
      <motion.div whileTap={{ scale: 0.93 }} className="group cursor-pointer">
        <div className="relative aspect-[2/3] w-full rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.07]">
          {anime.coverImage?.large ? (
            <img
              src={anime.coverImage.large}
              alt={anime.title.romaji}
              className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
              loading="lazy"
            />
          ) : (
            <div className="w-full h-full flex items-center justify-center">
              <p className="text-white/20 text-[9px] font-bold text-center p-2">{anime.title.romaji}</p>
            </div>
          )}
          <div className="absolute inset-0 bg-gradient-to-t from-black/50 via-transparent to-transparent" />
          {anime.averageScore && (
            <div className="absolute top-2 right-2 bg-black/70 backdrop-blur-sm text-yellow-400 text-[8px] px-1.5 py-0.5 rounded-lg font-black flex items-center gap-0.5">
              <Star className="w-2 h-2 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
            </div>
          )}
        </div>
        <h3 className="mt-1.5 text-[11px] text-white/65 truncate font-bold group-hover:text-primary transition-colors">
          {anime.title.romaji}
        </h3>
      </motion.div>
    </Link>
  );
}
