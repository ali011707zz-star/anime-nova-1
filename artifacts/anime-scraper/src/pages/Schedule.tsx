import { useEffect, useState } from 'react';
import { Loader2 } from 'lucide-react';
import { Link } from 'wouter';

const SCHEDULE_QUERY = `
query ($page: Int, $perPage: Int, $weekStart: Int, $weekEnd: Int) {
  Page(page: $page, perPage: $perPage) {
    airingSchedules(airingAt_greater: $weekStart, airingAt_lesser: $weekEnd, sort: TIME) {
      airingAt
      episode
      media {
        id
        title { romaji }
        coverImage { large }
        averageScore
      }
    }
  }
}`;

const DAYS_AR = ['الأحد', 'الاثنين', 'الثلاثاء', 'الأربعاء', 'الخميس', 'الجمعة', 'السبت'];

export default function Schedule() {
  const [schedule, setSchedule] = useState<Record<string, any[]>>({});
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const now = Math.floor(Date.now() / 1000);
    const weekStart = now - (now % 86400);
    const weekEnd = weekStart + 7 * 86400;
    fetch('https://graphql.anilist.co', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ query: SCHEDULE_QUERY, variables: { page: 1, perPage: 50, weekStart, weekEnd } }),
    })
      .then(r => r.json())
      .then(d => {
        const items = d.data?.Page?.airingSchedules || [];
        const grouped: Record<string, any[]> = {};
        items.forEach((item: any) => {
          const date = new Date(item.airingAt * 1000);
          const day = DAYS_AR[date.getDay()];
          if (!grouped[day]) grouped[day] = [];
          grouped[day].push(item);
        });
        setSchedule(grouped);
      })
      .finally(() => setLoading(false));
  }, []);

  if (loading) return <div className="bg-[#0A0A0F] min-h-screen flex items-center justify-center"><Loader2 className="w-10 h-10 text-primary animate-spin" /></div>;

  return (
    <main className="bg-[#0A0A0F] min-h-screen text-white font-['Cairo'] pb-24 px-4" dir="rtl">
      <div className="pt-4 mb-6">
        <h1 className="text-xl font-black">جدول البث</h1>
        <p className="text-[#71717A] text-xs mt-1">الحلقات القادمة هذا الأسبوع</p>
      </div>
      {Object.entries(schedule).length === 0 ? (
        <div className="text-center py-20 text-[#71717A]">
          <p className="font-bold text-sm">لا توجد بيانات للجدول</p>
        </div>
      ) : Object.entries(schedule).map(([day, items]) => (
        <div key={day} className="mb-8">
          <div className="flex items-center gap-2 mb-4">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-sm font-black">{day}</h2>
          </div>
          <div className="space-y-3">
            {items.map((item, i) => (
              <Link key={i} href={`/anime/${item.media?.id}`}>
                <div className="flex items-center gap-3 p-3 bg-[#18181B] rounded-2xl border border-white/5 cursor-pointer hover:border-primary/30 transition-all active:scale-[0.98]">
                  <img src={item.media?.coverImage?.large} alt="" className="w-12 h-16 rounded-xl object-cover shrink-0" />
                  <div className="flex-1 text-right">
                    <h3 className="text-sm font-black text-white line-clamp-1">{item.media?.title?.romaji}</h3>
                    <p className="text-[10px] text-primary font-bold mt-1">الحلقة {item.episode}</p>
                    <p className="text-[9px] text-[#71717A] mt-0.5">
                      {new Date(item.airingAt * 1000).toLocaleTimeString('ar', { hour: '2-digit', minute: '2-digit' })}
                    </p>
                  </div>
                </div>
              </Link>
            ))}
          </div>
        </div>
      ))}
    </main>
  );
}
