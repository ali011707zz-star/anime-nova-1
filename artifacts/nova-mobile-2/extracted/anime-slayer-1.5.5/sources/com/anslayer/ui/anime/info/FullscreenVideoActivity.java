package com.anslayer.ui.anime.info;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.app.e;
import androidx.lifecycle.k;
import com.anslayer.ui.anime.info.FullscreenVideoActivity;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.player.views.YouTubePlayerView;
import j4.h1;
import jc.g;
import jc.l;
import r7.j;
import ra.f;
import ta.a;

/* compiled from: FullscreenVideoActivity.kt */
/* loaded from: classes.dex */
public final class FullscreenVideoActivity extends e {

    /* renamed from: g, reason: collision with root package name */
    public static final a f4163g = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public h1 f4164f;

    /* compiled from: FullscreenVideoActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, String str, String str2) {
            l.f(context, "context");
            l.f(str, "id");
            l.f(str2, "thumbnailUrl");
            Intent intent = new Intent(context, (Class<?>) FullscreenVideoActivity.class);
            intent.putExtra("img", str2);
            intent.putExtra("youtube_id", str);
            return intent;
        }
    }

    /* compiled from: FullscreenVideoActivity.kt */
    /* loaded from: classes.dex */
    public static final class b implements sa.c {
        public b() {
        }

        @Override // sa.c
        public void a() {
            ImageView imageView = FullscreenVideoActivity.this.h().f8412b;
            l.e(imageView, "binding.close");
            imageView.setVisibility(0);
            FullscreenVideoActivity.this.l(7);
            FullscreenVideoActivity.this.m();
        }

        @Override // sa.c
        public void b() {
            ImageView imageView = FullscreenVideoActivity.this.h().f8412b;
            l.e(imageView, "binding.close");
            imageView.setVisibility(8);
            FullscreenVideoActivity.this.l(6);
            FullscreenVideoActivity.this.i();
        }
    }

    /* compiled from: FullscreenVideoActivity.kt */
    /* loaded from: classes.dex */
    public static final class c extends sa.a {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f4167g;

        public c(String str) {
            this.f4167g = str;
        }

        @Override // sa.a, sa.d
        public void e(f fVar) {
            l.f(fVar, "youTubePlayer");
            CircularProgressIndicator circularProgressIndicator = FullscreenVideoActivity.this.h().f8413c;
            l.e(circularProgressIndicator, "binding.progress");
            circularProgressIndicator.setVisibility(8);
            ImageView imageView = FullscreenVideoActivity.this.h().f8414d;
            l.e(imageView, "binding.thumbnail");
            imageView.setVisibility(8);
            YouTubePlayerView youTubePlayerView = FullscreenVideoActivity.this.h().f8415e;
            l.e(youTubePlayerView, "binding.youtubePlayerView");
            FullscreenVideoActivity.this.h().f8415e.setCustomPlayerUi(new wa.g(youTubePlayerView, fVar).v());
            k lifecycle = FullscreenVideoActivity.this.getLifecycle();
            l.e(lifecycle, "lifecycle");
            ua.e.a(fVar, lifecycle, this.f4167g, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            FullscreenVideoActivity.this.g();
        }
    }

    public static final void j(FullscreenVideoActivity fullscreenVideoActivity, View view) {
        l.f(fullscreenVideoActivity, "this$0");
        fullscreenVideoActivity.onBackPressed();
    }

    public final void g() {
        h().f8415e.f(new b());
    }

    public final h1 h() {
        h1 h1Var = this.f4164f;
        if (h1Var != null) {
            return h1Var;
        }
        l.v("binding");
        return null;
    }

    public final void i() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    public final void k(h1 h1Var) {
        l.f(h1Var, "<set-?>");
        this.f4164f = h1Var;
    }

    public final void l(int i10) {
        setRequestedOrientation(i10);
    }

    public final void m() {
        getWindow().getDecorView().setSystemUiVisibility(256);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (h().f8415e.l()) {
            h().f8415e.j();
        } else {
            super.onBackPressed();
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        h1 c10 = h1.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        k(c10);
        setContentView(h().b());
        h().f8412b.setOnClickListener(new View.OnClickListener() { // from class: i5.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FullscreenVideoActivity.j(FullscreenVideoActivity.this, view);
            }
        });
        String stringExtra = getIntent().getStringExtra("youtube_id");
        if (stringExtra == null || stringExtra.length() == 0) {
            finish();
            return;
        }
        d4.a.b(h().f8414d).s(getIntent().getStringExtra("img")).g(j.f12975d).G0().u0(h().f8414d);
        getLifecycle().a(h().f8415e);
        h().f8415e.setEnableAutomaticInitialization(false);
        h().f8415e.k(new c(stringExtra), new a.C0352a().d(0).c());
    }
}
