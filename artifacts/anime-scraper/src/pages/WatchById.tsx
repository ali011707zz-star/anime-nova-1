import { useParams, useLocation } from 'wouter';
import { useEffect } from 'react';
import { Loader2 } from 'lucide-react';

// WatchById is a legacy route — redirect to the main Watch page
// The `:id` param is treated as the AniList anime ID, episode 1 by default
export default function WatchById() {
  const params = useParams<{ id: string }>();
  const [, navigate] = useLocation();

  useEffect(() => {
    if (params.id) {
      const sp = new URLSearchParams(window.location.search);
      const ep = Math.max(1, parseInt(sp.get('ep') || '1', 10) || 1);
      sp.set('anime', params.id);
      if (!sp.get('anilistId')) sp.set('anilistId', params.id);
      sp.set('ep', String(ep));
      if (!sp.get('totalEps')) sp.set('totalEps', String(ep));
      navigate(`/watch?${sp.toString()}`, { replace: true });
    } else {
      navigate('/', { replace: true });
    }
  }, [params.id]);

  return (
    <div className="bg-black min-h-screen flex items-center justify-center">
      <Loader2 className="w-10 h-10 text-primary animate-spin" />
    </div>
  );
}
