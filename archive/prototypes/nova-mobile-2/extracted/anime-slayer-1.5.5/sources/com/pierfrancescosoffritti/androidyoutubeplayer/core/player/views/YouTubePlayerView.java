package com.pierfrancescosoffritti.androidyoutubeplayer.core.player.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.lifecycle.a0;
import androidx.lifecycle.k;
import androidx.lifecycle.p;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import jc.l;
import qa.h;
import ra.f;
import sa.c;
import sa.d;
import ua.e;

/* compiled from: YouTubePlayerView.kt */
/* loaded from: classes.dex */
public final class YouTubePlayerView extends va.a implements p {

    /* renamed from: f, reason: collision with root package name */
    public final LegacyYouTubePlayerView f4951f;

    /* renamed from: g, reason: collision with root package name */
    public final ua.a f4952g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4953h;

    /* compiled from: YouTubePlayerView.kt */
    /* loaded from: classes.dex */
    public static final class a extends sa.a {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String f4954f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ YouTubePlayerView f4955g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f4956h;

        public a(String str, YouTubePlayerView youTubePlayerView, boolean z10) {
            this.f4954f = str;
            this.f4955g = youTubePlayerView;
            this.f4956h = z10;
        }

        @Override // sa.a, sa.d
        public void e(f fVar) {
            l.f(fVar, "youTubePlayer");
            String str = this.f4954f;
            if (str != null) {
                e.b(fVar, this.f4955g.f4951f.getCanPlay$core_release() && this.f4956h, str, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
            fVar.b(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        l.f(context, "context");
        LegacyYouTubePlayerView legacyYouTubePlayerView = new LegacyYouTubePlayerView(context);
        this.f4951f = legacyYouTubePlayerView;
        this.f4952g = new ua.a(this);
        addView(legacyYouTubePlayerView, new FrameLayout.LayoutParams(-1, -1));
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, h.Z, 0, 0);
        l.e(obtainStyledAttributes, "context.theme.obtainStyl….YouTubePlayerView, 0, 0)");
        this.f4953h = obtainStyledAttributes.getBoolean(h.f12646b0, true);
        boolean z10 = obtainStyledAttributes.getBoolean(h.f12644a0, false);
        boolean z11 = obtainStyledAttributes.getBoolean(h.f12648c0, true);
        String string = obtainStyledAttributes.getString(h.f12650d0);
        obtainStyledAttributes.recycle();
        if (z10 && string == null) {
            throw new IllegalStateException("YouTubePlayerView: videoId is not set but autoPlay is set to true. This combination is not allowed.");
        }
        a aVar = new a(string, this, z10);
        if (this.f4953h) {
            legacyYouTubePlayerView.k(aVar, z11, ta.a.f14101b.a());
        }
    }

    @a0(k.b.ON_RESUME)
    private final void onResume() {
        this.f4951f.onResume$core_release();
    }

    @a0(k.b.ON_STOP)
    private final void onStop() {
        this.f4951f.onStop$core_release();
    }

    public final boolean f(c cVar) {
        l.f(cVar, "fullScreenListener");
        return this.f4952g.a(cVar);
    }

    public final boolean getEnableAutomaticInitialization() {
        return this.f4953h;
    }

    public final void j() {
        this.f4952g.c();
    }

    public final void k(d dVar, ta.a aVar) {
        l.f(dVar, "youTubePlayerListener");
        l.f(aVar, "playerOptions");
        if (!this.f4953h) {
            this.f4951f.k(dVar, true, aVar);
            return;
        }
        throw new IllegalStateException("YouTubePlayerView: If you want to initialize this view manually, you need to set 'enableAutomaticInitialization' to false");
    }

    public final boolean l() {
        return this.f4952g.d();
    }

    public final void m() {
        this.f4952g.e();
    }

    @a0(k.b.ON_DESTROY)
    public final void release() {
        this.f4951f.release();
    }

    public final void setCustomPlayerUi(View view) {
        l.f(view, "view");
        this.f4951f.setCustomPlayerUi(view);
    }

    public final void setEnableAutomaticInitialization(boolean z10) {
        this.f4953h = z10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        l.f(context, "context");
    }
}
