package com.anslayer.data;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.anslayer.api.endpoint.SeriesEndpoint;
import jc.g;
import jc.l;
import jc.m;
import jc.y;
import vb.e;
import vb.f;
import z3.b;

/* compiled from: ListManagementWorker.kt */
/* loaded from: classes.dex */
public final class ListManagementWorker extends Worker {

    /* renamed from: w, reason: collision with root package name */
    public static final a f4059w = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public String f4060l;

    /* renamed from: m, reason: collision with root package name */
    public Integer f4061m;

    /* renamed from: n, reason: collision with root package name */
    public int f4062n;

    /* renamed from: o, reason: collision with root package name */
    public int f4063o;

    /* renamed from: p, reason: collision with root package name */
    public int f4064p;

    /* renamed from: q, reason: collision with root package name */
    public int f4065q;

    /* renamed from: r, reason: collision with root package name */
    public String f4066r;

    /* renamed from: s, reason: collision with root package name */
    public Integer f4067s;

    /* renamed from: t, reason: collision with root package name */
    public String f4068t;

    /* renamed from: u, reason: collision with root package name */
    public long f4069u;

    /* renamed from: v, reason: collision with root package name */
    public final e f4070v;

    /* compiled from: ListManagementWorker.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: ListManagementWorker.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<z3.b> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final z3.b invoke() {
            b.a aVar = z3.b.f17284d;
            Context a10 = ListManagementWorker.this.a();
            l.e(a10, "applicationContext");
            return aVar.getInstance(a10);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListManagementWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.f(context, "context");
        l.f(workerParameters, "workerParameters");
        androidx.work.a c10 = workerParameters.c();
        this.f4066r = c10.k("anime_ids");
        this.f4061m = Integer.valueOf(c10.h("anime_rating", -1));
        this.f4062n = c10.h("story_rating", -1);
        this.f4063o = c10.h("characters_rating", -1);
        this.f4064p = c10.h("art_rating", -1);
        this.f4065q = c10.h("ost_rating", -1);
        this.f4069u = c10.j("episode_id", -1L);
        this.f4068t = c10.k("episode_ids");
        this.f4067s = Integer.valueOf(c10.h("episode_rating", -1));
        this.f4060l = c10.k("arg_request_type");
        this.f4070v = f.a(new b());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a p() {
        if (r(y.b(SeriesEndpoint.class))) {
            ListenableWorker.a c10 = ListenableWorker.a.c();
            l.e(c10, "success()");
            return c10;
        }
        ListenableWorker.a a10 = ListenableWorker.a.a();
        l.e(a10, "failure()");
        return a10;
    }

    public final z3.b q() {
        return (z3.b) this.f4070v.getValue();
    }

    public final boolean r(oc.b<SeriesEndpoint> bVar) {
        SeriesEndpoint seriesEndpoint = (SeriesEndpoint) q().b(hc.a.a(bVar));
        try {
            String str = this.f4060l;
            if (str != null) {
                switch (str.hashCode()) {
                    case -1918084950:
                        if (!str.equals("REMOVE_FROM_WATCH_HISTORY")) {
                            break;
                        } else {
                            return seriesEndpoint.removeFromWatchHistory(this.f4066r).execute().f();
                        }
                    case -1781944314:
                        if (!str.equals("REMOVE_FROM_PLANNING_LIST")) {
                            break;
                        } else {
                            return seriesEndpoint.removeFromPlanToWatch(this.f4066r).execute().f();
                        }
                    case -1399741145:
                        if (!str.equals("ADD_SERIES_RATING")) {
                            break;
                        } else {
                            return seriesEndpoint.addAnimeRating(this.f4066r, this.f4061m, Integer.valueOf(this.f4062n), Integer.valueOf(this.f4064p), Integer.valueOf(this.f4063o), Integer.valueOf(this.f4065q)).execute().f();
                        }
                    case -445643475:
                        if (!str.equals("REMOVE_FROM_WATCHING")) {
                            break;
                        } else {
                            return seriesEndpoint.removeFromWatching(this.f4066r).execute().f();
                        }
                    case 3332959:
                        if (!str.equals("REMOVE_EPISODE_TO_WATCH_HISTORY")) {
                            break;
                        } else {
                            return seriesEndpoint.removeEpisodeFromWatchHistory(this.f4068t).execute().f();
                        }
                    case 262718932:
                        if (!str.equals("REMOVE_FROM_WATCHED")) {
                            break;
                        } else {
                            return seriesEndpoint.removeFromWatched(this.f4066r).execute().f();
                        }
                    case 1062491110:
                        if (!str.equals("REMOVE_FROM_DROPPED")) {
                            break;
                        } else {
                            return seriesEndpoint.removeFromDropped(this.f4066r).execute().f();
                        }
                    case 1846407307:
                        if (!str.equals("REMOVE_FROM_CHARACTER_FAV")) {
                            break;
                        } else {
                            return seriesEndpoint.unFavoriteCharacterV2(this.f4066r).execute().f();
                        }
                    case 1887263743:
                        if (!str.equals("ADD_EPISODE_RATING")) {
                            break;
                        } else {
                            return seriesEndpoint.addEpisodeRating(this.f4068t, this.f4067s).execute().f();
                        }
                    case 1910231780:
                        if (!str.equals("REMOVE_FROM_FAVOURITES")) {
                            break;
                        } else {
                            return seriesEndpoint.removeFromFavourites(this.f4066r).execute().f();
                        }
                    case 2098582018:
                        if (!str.equals("ADD_EPISODE_TO_WATCH_HISTORY")) {
                            break;
                        } else {
                            return seriesEndpoint.addEpisodeToWatchHistory(this.f4069u).execute().f();
                        }
                    case 2135117669:
                        if (!str.equals("REMOVE_FROM_ON_HOLD")) {
                            break;
                        } else {
                            return seriesEndpoint.removeFromOnHold(this.f4066r).execute().f();
                        }
                }
            }
            toString();
            l.m("Request type not defined, current type -> ", this.f4060l);
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
