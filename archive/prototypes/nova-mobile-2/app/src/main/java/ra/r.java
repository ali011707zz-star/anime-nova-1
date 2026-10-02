package ra;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import java.util.Collection;
import java.util.Iterator;
import okhttp3.internal.cache.DiskLruCache;
import qc.t;

/* compiled from: YouTubePlayerBridge.kt */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: c, reason: collision with root package name */
    public static final a f13206c = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final b f13207a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f13208b;

    /* compiled from: YouTubePlayerBridge.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: YouTubePlayerBridge.kt */
    /* loaded from: classes.dex */
    public interface b {
        void c();

        f getInstance();

        Collection<sa.d> getListeners();
    }

    public r(b bVar) {
        jc.l.f(bVar, "youTubePlayerOwner");
        this.f13207a = bVar;
        this.f13208b = new Handler(Looper.getMainLooper());
    }

    public static final void p(r rVar) {
        jc.l.f(rVar, "this$0");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().d(rVar.f13207a.getInstance());
        }
    }

    public static final void q(r rVar, c cVar) {
        jc.l.f(rVar, "this$0");
        jc.l.f(cVar, "$playerError");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().g(rVar.f13207a.getInstance(), cVar);
        }
    }

    public static final void r(r rVar, ra.a aVar) {
        jc.l.f(rVar, "this$0");
        jc.l.f(aVar, "$playbackQuality");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().j(rVar.f13207a.getInstance(), aVar);
        }
    }

    public static final void s(r rVar, ra.b bVar) {
        jc.l.f(rVar, "this$0");
        jc.l.f(bVar, "$playbackRate");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().c(rVar.f13207a.getInstance(), bVar);
        }
    }

    public static final void t(r rVar) {
        jc.l.f(rVar, "this$0");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().e(rVar.f13207a.getInstance());
        }
    }

    public static final void u(r rVar, d dVar) {
        jc.l.f(rVar, "this$0");
        jc.l.f(dVar, "$playerState");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().i(rVar.f13207a.getInstance(), dVar);
        }
    }

    public static final void v(r rVar, float f10) {
        jc.l.f(rVar, "this$0");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().a(rVar.f13207a.getInstance(), f10);
        }
    }

    public static final void w(r rVar, float f10) {
        jc.l.f(rVar, "this$0");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().f(rVar.f13207a.getInstance(), f10);
        }
    }

    public static final void x(r rVar, String str) {
        jc.l.f(rVar, "this$0");
        jc.l.f(str, "$videoId");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().b(rVar.f13207a.getInstance(), str);
        }
    }

    public static final void y(r rVar, float f10) {
        jc.l.f(rVar, "this$0");
        Iterator<sa.d> it2 = rVar.f13207a.getListeners().iterator();
        while (it2.hasNext()) {
            it2.next().h(rVar.f13207a.getInstance(), f10);
        }
    }

    public static final void z(r rVar) {
        jc.l.f(rVar, "this$0");
        rVar.f13207a.c();
    }

    public final ra.a l(String str) {
        return t.r(str, "small", true) ? ra.a.SMALL : t.r(str, "medium", true) ? ra.a.MEDIUM : t.r(str, "large", true) ? ra.a.LARGE : t.r(str, "hd720", true) ? ra.a.HD720 : t.r(str, "hd1080", true) ? ra.a.HD1080 : t.r(str, "highres", true) ? ra.a.HIGH_RES : t.r(str, "default", true) ? ra.a.DEFAULT : ra.a.UNKNOWN;
    }

    public final ra.b m(String str) {
        return t.r(str, "0.25", true) ? ra.b.RATE_0_25 : t.r(str, "0.5", true) ? ra.b.RATE_0_5 : t.r(str, DiskLruCache.VERSION_1, true) ? ra.b.RATE_1 : t.r(str, "1.5", true) ? ra.b.RATE_1_5 : t.r(str, "2", true) ? ra.b.RATE_2 : ra.b.UNKNOWN;
    }

    public final c n(String str) {
        if (t.r(str, "2", true)) {
            return c.INVALID_PARAMETER_IN_REQUEST;
        }
        if (t.r(str, "5", true)) {
            return c.HTML_5_PLAYER;
        }
        if (t.r(str, "100", true)) {
            return c.VIDEO_NOT_FOUND;
        }
        if (!t.r(str, "101", true) && !t.r(str, "150", true)) {
            return c.UNKNOWN;
        }
        return c.VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER;
    }

    public final d o(String str) {
        return t.r(str, "UNSTARTED", true) ? d.UNSTARTED : t.r(str, "ENDED", true) ? d.ENDED : t.r(str, "PLAYING", true) ? d.PLAYING : t.r(str, "PAUSED", true) ? d.PAUSED : t.r(str, "BUFFERING", true) ? d.BUFFERING : t.r(str, "CUED", true) ? d.VIDEO_CUED : d.UNKNOWN;
    }

    @JavascriptInterface
    public final void sendApiChange() {
        this.f13208b.post(new Runnable() { // from class: ra.i
            @Override // java.lang.Runnable
            public final void run() {
                r.p(r.this);
            }
        });
    }

    @JavascriptInterface
    public final void sendError(String str) {
        jc.l.f(str, "error");
        final c n10 = n(str);
        this.f13208b.post(new Runnable() { // from class: ra.q
            @Override // java.lang.Runnable
            public final void run() {
                r.q(r.this, n10);
            }
        });
    }

    @JavascriptInterface
    public final void sendPlaybackQualityChange(String str) {
        jc.l.f(str, "quality");
        final ra.a l10 = l(str);
        this.f13208b.post(new Runnable() { // from class: ra.o
            @Override // java.lang.Runnable
            public final void run() {
                r.r(r.this, l10);
            }
        });
    }

    @JavascriptInterface
    public final void sendPlaybackRateChange(String str) {
        jc.l.f(str, "rate");
        final ra.b m10 = m(str);
        this.f13208b.post(new Runnable() { // from class: ra.p
            @Override // java.lang.Runnable
            public final void run() {
                r.s(r.this, m10);
            }
        });
    }

    @JavascriptInterface
    public final void sendReady() {
        this.f13208b.post(new Runnable() { // from class: ra.g
            @Override // java.lang.Runnable
            public final void run() {
                r.t(r.this);
            }
        });
    }

    @JavascriptInterface
    public final void sendStateChange(String str) {
        jc.l.f(str, "state");
        final d o10 = o(str);
        this.f13208b.post(new Runnable() { // from class: ra.h
            @Override // java.lang.Runnable
            public final void run() {
                r.u(r.this, o10);
            }
        });
    }

    @JavascriptInterface
    public final void sendVideoCurrentTime(String str) {
        jc.l.f(str, "seconds");
        try {
            final float parseFloat = Float.parseFloat(str);
            this.f13208b.post(new Runnable() { // from class: ra.l
                @Override // java.lang.Runnable
                public final void run() {
                    r.v(r.this, parseFloat);
                }
            });
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @JavascriptInterface
    public final void sendVideoDuration(String str) {
        jc.l.f(str, "seconds");
        try {
            if (TextUtils.isEmpty(str)) {
                str = "0";
            }
            final float parseFloat = Float.parseFloat(str);
            this.f13208b.post(new Runnable() { // from class: ra.k
                @Override // java.lang.Runnable
                public final void run() {
                    r.w(r.this, parseFloat);
                }
            });
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @JavascriptInterface
    public final void sendVideoId(final String str) {
        jc.l.f(str, "videoId");
        this.f13208b.post(new Runnable() { // from class: ra.n
            @Override // java.lang.Runnable
            public final void run() {
                r.x(r.this, str);
            }
        });
    }

    @JavascriptInterface
    public final void sendVideoLoadedFraction(String str) {
        jc.l.f(str, "fraction");
        try {
            final float parseFloat = Float.parseFloat(str);
            this.f13208b.post(new Runnable() { // from class: ra.m
                @Override // java.lang.Runnable
                public final void run() {
                    r.y(r.this, parseFloat);
                }
            });
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @JavascriptInterface
    public final boolean sendYouTubeIFrameAPIReady() {
        return this.f13208b.post(new Runnable() { // from class: ra.j
            @Override // java.lang.Runnable
            public final void run() {
                r.z(r.this);
            }
        });
    }
}
