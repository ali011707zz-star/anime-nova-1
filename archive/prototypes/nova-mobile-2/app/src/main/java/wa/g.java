package wa;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.player.views.YouTubePlayerView;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.ui.views.YouTubePlayerSeekBar;
import jc.l;
import wa.g;

/* compiled from: DefaultPlayerUiController.kt */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final YouTubePlayerView f15419a;

    /* renamed from: b, reason: collision with root package name */
    public final ra.f f15420b;

    /* renamed from: c, reason: collision with root package name */
    public final View f15421c;

    /* renamed from: d, reason: collision with root package name */
    public xa.b f15422d;

    /* renamed from: e, reason: collision with root package name */
    public final View f15423e;

    /* renamed from: f, reason: collision with root package name */
    public final View f15424f;

    /* renamed from: g, reason: collision with root package name */
    public final LinearLayout f15425g;

    /* renamed from: h, reason: collision with root package name */
    public final TextView f15426h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f15427i;

    /* renamed from: j, reason: collision with root package name */
    public final ProgressBar f15428j;

    /* renamed from: k, reason: collision with root package name */
    public final ImageView f15429k;

    /* renamed from: l, reason: collision with root package name */
    public final ImageView f15430l;

    /* renamed from: m, reason: collision with root package name */
    public final ImageView f15431m;

    /* renamed from: n, reason: collision with root package name */
    public final ImageView f15432n;

    /* renamed from: o, reason: collision with root package name */
    public final ImageView f15433o;

    /* renamed from: p, reason: collision with root package name */
    public final ImageView f15434p;

    /* renamed from: q, reason: collision with root package name */
    public final YouTubePlayerSeekBar f15435q;

    /* renamed from: r, reason: collision with root package name */
    public final za.b f15436r;

    /* renamed from: s, reason: collision with root package name */
    public View.OnClickListener f15437s;

    /* renamed from: t, reason: collision with root package name */
    public View.OnClickListener f15438t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f15439u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f15440v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f15441w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f15442x;

    /* renamed from: y, reason: collision with root package name */
    public final c f15443y;

    /* compiled from: DefaultPlayerUiController.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15444a;

        static {
            int[] iArr = new int[ra.d.values().length];
            iArr[ra.d.ENDED.ordinal()] = 1;
            iArr[ra.d.PAUSED.ordinal()] = 2;
            iArr[ra.d.PLAYING.ordinal()] = 3;
            f15444a = iArr;
        }
    }

    /* compiled from: DefaultPlayerUiController.kt */
    /* loaded from: classes.dex */
    public static final class b implements ab.b {
        public b() {
        }

        @Override // ab.b
        public void a(float f10) {
            g.this.f15420b.a(f10);
        }
    }

    /* compiled from: DefaultPlayerUiController.kt */
    /* loaded from: classes.dex */
    public static final class c extends sa.a {
        public c() {
        }

        public static final void l(String str, g gVar, c cVar, View view) {
            l.f(str, "$videoId");
            l.f(gVar, "this$0");
            l.f(cVar, "this$1");
            try {
                gVar.f15431m.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.youtube.com/watch?v=" + str + "#t=" + gVar.f15435q.getSeekBar().getProgress())));
            } catch (Exception e10) {
                cVar.getClass();
                e10.getMessage();
            }
        }

        @Override // sa.a, sa.d
        public void b(ra.f fVar, final String str) {
            l.f(fVar, "youTubePlayer");
            l.f(str, "videoId");
            ImageView imageView = g.this.f15431m;
            final g gVar = g.this;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: wa.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.c.l(str, gVar, this, view);
                }
            });
        }

        @Override // sa.a, sa.d
        public void i(ra.f fVar, ra.d dVar) {
            l.f(fVar, "youTubePlayer");
            l.f(dVar, "state");
            g.this.D(dVar);
            ra.d dVar2 = ra.d.PLAYING;
            if (dVar == dVar2 || dVar == ra.d.PAUSED || dVar == ra.d.VIDEO_CUED) {
                g.this.f15423e.setBackgroundColor(f0.a.d(g.this.f15423e.getContext(), R.color.transparent));
                g.this.f15428j.setVisibility(8);
                if (g.this.f15440v) {
                    g.this.f15430l.setVisibility(0);
                }
                if (g.this.f15441w) {
                    g.this.f15433o.setVisibility(0);
                }
                if (g.this.f15442x) {
                    g.this.f15434p.setVisibility(0);
                }
                g.this.C(dVar == dVar2);
                return;
            }
            g.this.C(false);
            if (dVar == ra.d.BUFFERING) {
                g.this.f15428j.setVisibility(0);
                g.this.f15423e.setBackgroundColor(f0.a.d(g.this.f15423e.getContext(), R.color.transparent));
                if (g.this.f15440v) {
                    g.this.f15430l.setVisibility(4);
                }
                g.this.f15433o.setVisibility(8);
                g.this.f15434p.setVisibility(8);
            }
            if (dVar == ra.d.UNSTARTED) {
                g.this.f15428j.setVisibility(8);
                if (g.this.f15440v) {
                    g.this.f15430l.setVisibility(0);
                }
            }
        }
    }

    public g(YouTubePlayerView youTubePlayerView, ra.f fVar) {
        l.f(youTubePlayerView, "youTubePlayerView");
        l.f(fVar, "youTubePlayer");
        this.f15419a = youTubePlayerView;
        this.f15420b = fVar;
        View inflate = View.inflate(youTubePlayerView.getContext(), qa.e.f12638a, null);
        l.e(inflate, "inflate(youTubePlayerVie…_default_player_ui, null)");
        this.f15421c = inflate;
        Context context = youTubePlayerView.getContext();
        l.e(context, "youTubePlayerView.context");
        this.f15422d = new ya.a(context);
        View findViewById = inflate.findViewById(qa.d.f12630h);
        l.e(findViewById, "rootView.findViewById(R.id.panel)");
        this.f15423e = findViewById;
        View findViewById2 = inflate.findViewById(qa.d.f12623a);
        l.e(findViewById2, "rootView.findViewById(R.id.controls_container)");
        this.f15424f = findViewById2;
        View findViewById3 = inflate.findViewById(qa.d.f12626d);
        l.e(findViewById3, "rootView.findViewById(R.id.extra_views_container)");
        this.f15425g = (LinearLayout) findViewById3;
        View findViewById4 = inflate.findViewById(qa.d.f12635m);
        l.e(findViewById4, "rootView.findViewById(R.id.video_title)");
        this.f15426h = (TextView) findViewById4;
        View findViewById5 = inflate.findViewById(qa.d.f12628f);
        l.e(findViewById5, "rootView.findViewById(R.id.live_video_indicator)");
        this.f15427i = (TextView) findViewById5;
        View findViewById6 = inflate.findViewById(qa.d.f12632j);
        l.e(findViewById6, "rootView.findViewById(R.id.progress)");
        this.f15428j = (ProgressBar) findViewById6;
        View findViewById7 = inflate.findViewById(qa.d.f12629g);
        l.e(findViewById7, "rootView.findViewById(R.id.menu_button)");
        this.f15429k = (ImageView) findViewById7;
        View findViewById8 = inflate.findViewById(qa.d.f12631i);
        l.e(findViewById8, "rootView.findViewById(R.id.play_pause_button)");
        this.f15430l = (ImageView) findViewById8;
        View findViewById9 = inflate.findViewById(qa.d.f12636n);
        l.e(findViewById9, "rootView.findViewById(R.id.youtube_button)");
        this.f15431m = (ImageView) findViewById9;
        View findViewById10 = inflate.findViewById(qa.d.f12627e);
        l.e(findViewById10, "rootView.findViewById(R.id.fullscreen_button)");
        this.f15432n = (ImageView) findViewById10;
        View findViewById11 = inflate.findViewById(qa.d.f12624b);
        l.e(findViewById11, "rootView.findViewById(R.…ustom_action_left_button)");
        this.f15433o = (ImageView) findViewById11;
        View findViewById12 = inflate.findViewById(qa.d.f12625c);
        l.e(findViewById12, "rootView.findViewById(R.…stom_action_right_button)");
        this.f15434p = (ImageView) findViewById12;
        View findViewById13 = inflate.findViewById(qa.d.f12637o);
        l.e(findViewById13, "rootView.findViewById(R.id.youtube_player_seekbar)");
        this.f15435q = (YouTubePlayerSeekBar) findViewById13;
        this.f15436r = new za.b(findViewById2);
        this.f15440v = true;
        this.f15443y = new c();
        this.f15437s = new View.OnClickListener() { // from class: wa.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.g(g.this, view);
            }
        };
        this.f15438t = new View.OnClickListener() { // from class: wa.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.h(g.this, view);
            }
        };
        w();
    }

    public static final void A(g gVar, View view) {
        l.f(gVar, "this$0");
        gVar.f15438t.onClick(gVar.f15429k);
    }

    public static final void g(g gVar, View view) {
        l.f(gVar, "this$0");
        gVar.f15419a.m();
    }

    public static final void h(g gVar, View view) {
        l.f(gVar, "this$0");
        gVar.f15422d.a(gVar.f15429k);
    }

    public static final void x(g gVar, View view) {
        l.f(gVar, "this$0");
        gVar.f15436r.o();
    }

    public static final void y(g gVar, View view) {
        l.f(gVar, "this$0");
        gVar.B();
    }

    public static final void z(g gVar, View view) {
        l.f(gVar, "this$0");
        gVar.f15437s.onClick(gVar.f15432n);
    }

    public final void B() {
        if (this.f15439u) {
            this.f15420b.d();
        } else {
            this.f15420b.e();
        }
    }

    public final void C(boolean z10) {
        this.f15430l.setImageResource(z10 ? qa.c.f12621a : qa.c.f12622b);
    }

    public final void D(ra.d dVar) {
        int i10 = a.f15444a[dVar.ordinal()];
        if (i10 == 1) {
            this.f15439u = false;
        } else if (i10 == 2) {
            this.f15439u = false;
        } else if (i10 == 3) {
            this.f15439u = true;
        }
        C(!this.f15439u);
    }

    public final View v() {
        return this.f15421c;
    }

    public final void w() {
        this.f15420b.f(this.f15435q);
        this.f15420b.f(this.f15436r);
        this.f15420b.f(this.f15443y);
        this.f15435q.setYoutubePlayerSeekBarListener(new b());
        this.f15423e.setOnClickListener(new View.OnClickListener() { // from class: wa.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.x(g.this, view);
            }
        });
        this.f15430l.setOnClickListener(new View.OnClickListener() { // from class: wa.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.y(g.this, view);
            }
        });
        this.f15432n.setOnClickListener(new View.OnClickListener() { // from class: wa.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.z(g.this, view);
            }
        });
        this.f15429k.setOnClickListener(new View.OnClickListener() { // from class: wa.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.A(g.this, view);
            }
        });
    }
}
