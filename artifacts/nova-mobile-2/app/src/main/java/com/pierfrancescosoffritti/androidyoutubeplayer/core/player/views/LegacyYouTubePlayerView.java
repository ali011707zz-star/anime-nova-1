package com.pierfrancescosoffritti.androidyoutubeplayer.core.player.views;

import android.content.Context;
import android.content.IntentFilter;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.lifecycle.a0;
import androidx.lifecycle.k;
import androidx.lifecycle.p;
import java.util.HashSet;
import java.util.Iterator;
import jc.l;
import jc.m;
import ra.f;
import va.i;

/* compiled from: LegacyYouTubePlayerView.kt */
/* loaded from: classes.dex */
public final class LegacyYouTubePlayerView extends va.a implements p {

    /* renamed from: f, reason: collision with root package name */
    public final i f4935f;

    /* renamed from: g, reason: collision with root package name */
    public final ua.b f4936g;

    /* renamed from: h, reason: collision with root package name */
    public final ua.c f4937h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4938i;

    /* renamed from: j, reason: collision with root package name */
    public ic.a<vb.p> f4939j;

    /* renamed from: k, reason: collision with root package name */
    public final HashSet<sa.b> f4940k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4941l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f4942m;

    /* compiled from: LegacyYouTubePlayerView.kt */
    /* loaded from: classes.dex */
    public static final class a extends sa.a {
        public a() {
        }

        @Override // sa.a, sa.d
        public void i(f fVar, ra.d dVar) {
            l.f(fVar, "youTubePlayer");
            l.f(dVar, "state");
            if (dVar != ra.d.PLAYING || LegacyYouTubePlayerView.this.l()) {
                return;
            }
            fVar.d();
        }
    }

    /* compiled from: LegacyYouTubePlayerView.kt */
    /* loaded from: classes.dex */
    public static final class b extends sa.a {
        public b() {
        }

        @Override // sa.a, sa.d
        public void e(f fVar) {
            l.f(fVar, "youTubePlayer");
            LegacyYouTubePlayerView.this.setYouTubePlayerReady$core_release(true);
            Iterator it2 = LegacyYouTubePlayerView.this.f4940k.iterator();
            while (it2.hasNext()) {
                ((sa.b) it2.next()).a(fVar);
            }
            LegacyYouTubePlayerView.this.f4940k.clear();
            fVar.b(this);
        }
    }

    /* compiled from: LegacyYouTubePlayerView.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<vb.p> {
        public c() {
            super(0);
        }

        public final void a() {
            if (!LegacyYouTubePlayerView.this.m()) {
                LegacyYouTubePlayerView.this.f4939j.invoke();
            } else {
                LegacyYouTubePlayerView.this.f4937h.m(LegacyYouTubePlayerView.this.getYouTubePlayer$core_release());
            }
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: LegacyYouTubePlayerView.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f4946f = new d();

        public d() {
            super(0);
        }

        public final void a() {
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: LegacyYouTubePlayerView.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ta.a f4948g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ sa.d f4949h;

        /* compiled from: LegacyYouTubePlayerView.kt */
        /* loaded from: classes.dex */
        public static final class a extends m implements ic.l<f, vb.p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ sa.d f4950f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(sa.d dVar) {
                super(1);
                this.f4950f = dVar;
            }

            public final void a(f fVar) {
                l.f(fVar, "it");
                fVar.f(this.f4950f);
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ vb.p invoke(f fVar) {
                a(fVar);
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ta.a aVar, sa.d dVar) {
            super(0);
            this.f4948g = aVar;
            this.f4949h = dVar;
        }

        public final void a() {
            LegacyYouTubePlayerView.this.getYouTubePlayer$core_release().r(new a(this.f4949h), this.f4948g);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyYouTubePlayerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        l.f(context, "context");
        i iVar = new i(context, null, 0, 6, null);
        this.f4935f = iVar;
        ua.b bVar = new ua.b();
        this.f4936g = bVar;
        ua.c cVar = new ua.c();
        this.f4937h = cVar;
        this.f4939j = d.f4946f;
        this.f4940k = new HashSet<>();
        this.f4941l = true;
        addView(iVar, new FrameLayout.LayoutParams(-1, -1));
        iVar.f(cVar);
        iVar.f(new a());
        iVar.f(new b());
        bVar.a(new c());
    }

    public final boolean getCanPlay$core_release() {
        return this.f4941l;
    }

    public final i getYouTubePlayer$core_release() {
        return this.f4935f;
    }

    public final void k(sa.d dVar, boolean z10, ta.a aVar) {
        l.f(dVar, "youTubePlayerListener");
        l.f(aVar, "playerOptions");
        if (!this.f4938i) {
            if (z10) {
                getContext().registerReceiver(this.f4936g, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            }
            e eVar = new e(aVar, dVar);
            this.f4939j = eVar;
            if (z10) {
                return;
            }
            eVar.invoke();
            return;
        }
        throw new IllegalStateException("This YouTubePlayerView has already been initialized.");
    }

    public final boolean l() {
        return this.f4941l || this.f4935f.s();
    }

    public final boolean m() {
        return this.f4938i;
    }

    @a0(k.b.ON_RESUME)
    public final void onResume$core_release() {
        this.f4937h.k();
        this.f4941l = true;
    }

    @a0(k.b.ON_STOP)
    public final void onStop$core_release() {
        this.f4935f.d();
        this.f4937h.l();
        this.f4941l = false;
    }

    @a0(k.b.ON_DESTROY)
    public final void release() {
        removeView(this.f4935f);
        this.f4935f.removeAllViews();
        this.f4935f.destroy();
        try {
            getContext().unregisterReceiver(this.f4936g);
        } catch (Exception unused) {
        }
    }

    public final void setCustomPlayerUi(View view) {
        l.f(view, "view");
        removeViews(1, getChildCount() - 1);
        this.f4942m = true;
        addView(view);
    }

    public final void setYouTubePlayerReady$core_release(boolean z10) {
        this.f4938i = z10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LegacyYouTubePlayerView(Context context) {
        this(context, null, 0);
        l.f(context, "context");
    }
}
