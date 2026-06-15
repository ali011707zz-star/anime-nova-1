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
      navigate(`/watch?anime=${params.id}&ep=1`, { replace: true });
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
