package za;

import android.animation.Animator;
import android.os.Handler;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import jc.g;
import jc.l;
import ra.f;
import sa.d;

/* compiled from: FadeViewHelper.kt */
/* loaded from: classes.dex */
public final class b implements d {

    /* renamed from: n, reason: collision with root package name */
    public static final a f17442n = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final View f17443f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17444g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17445h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17446i;

    /* renamed from: j, reason: collision with root package name */
    public Runnable f17447j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f17448k;

    /* renamed from: l, reason: collision with root package name */
    public long f17449l;

    /* renamed from: m, reason: collision with root package name */
    public long f17450m;

    /* compiled from: FadeViewHelper.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: FadeViewHelper.kt */
    /* renamed from: za.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class C0446b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f17451a;

        static {
            int[] iArr = new int[ra.d.values().length];
            iArr[ra.d.ENDED.ordinal()] = 1;
            iArr[ra.d.PAUSED.ordinal()] = 2;
            iArr[ra.d.PLAYING.ordinal()] = 3;
            iArr[ra.d.UNSTARTED.ordinal()] = 4;
            iArr[ra.d.VIDEO_CUED.ordinal()] = 5;
            iArr[ra.d.BUFFERING.ordinal()] = 6;
            iArr[ra.d.UNKNOWN.ordinal()] = 7;
            f17451a = iArr;
        }
    }

    /* compiled from: FadeViewHelper.kt */
    /* loaded from: classes.dex */
    public static final class c implements Animator.AnimatorListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f17452a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ b f17453b;

        public c(float f10, b bVar) {
            this.f17452a = f10;
            this.f17453b = bVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            l.f(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.f(animator, "animator");
            if (this.f17452a == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f17453b.n().setVisibility(8);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            l.f(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            l.f(animator, "animator");
            if (this.f17452a == 1.0f) {
                this.f17453b.n().setVisibility(0);
            }
        }
    }

    public b(View view) {
        l.f(view, "targetView");
        this.f17443f = view;
        this.f17446i = true;
        this.f17447j = new Runnable() { // from class: za.a
            @Override // java.lang.Runnable
            public final void run() {
                b.m(b.this);
            }
        };
        this.f17449l = 300L;
        this.f17450m = 3000L;
    }

    public static final void m(b bVar) {
        l.f(bVar, "this$0");
        bVar.l(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    @Override // sa.d
    public void a(f fVar, float f10) {
        l.f(fVar, "youTubePlayer");
    }

    @Override // sa.d
    public void b(f fVar, String str) {
        l.f(fVar, "youTubePlayer");
        l.f(str, "videoId");
    }

    @Override // sa.d
    public void c(f fVar, ra.b bVar) {
        l.f(fVar, "youTubePlayer");
        l.f(bVar, "playbackRate");
    }

    @Override // sa.d
    public void d(f fVar) {
        l.f(fVar, "youTubePlayer");
    }

    @Override // sa.d
    public void e(f fVar) {
        l.f(fVar, "youTubePlayer");
    }

    @Override // sa.d
    public void f(f fVar, float f10) {
        l.f(fVar, "youTubePlayer");
    }

    @Override // sa.d
    public void g(f fVar, ra.c cVar) {
        l.f(fVar, "youTubePlayer");
        l.f(cVar, "error");
    }

    @Override // sa.d
    public void h(f fVar, float f10) {
        l.f(fVar, "youTubePlayer");
    }

    @Override // sa.d
    public void i(f fVar, ra.d dVar) {
        l.f(fVar, "youTubePlayer");
        l.f(dVar, "state");
        p(dVar);
        switch (C0446b.f17451a[dVar.ordinal()]) {
            case 1:
                l(1.0f);
                return;
            case 2:
            case 3:
            case 5:
                this.f17445h = true;
                if (dVar == ra.d.PLAYING) {
                    Handler handler = this.f17443f.getHandler();
                    if (handler == null) {
                        return;
                    }
                    handler.postDelayed(this.f17447j, this.f17450m);
                    return;
                }
                Handler handler2 = this.f17443f.getHandler();
                if (handler2 == null) {
                    return;
                }
                handler2.removeCallbacks(this.f17447j);
                return;
            case 4:
            case 6:
                l(1.0f);
                this.f17445h = false;
                return;
            case 7:
                l(1.0f);
                return;
            default:
                return;
        }
    }

    @Override // sa.d
    public void j(f fVar, ra.a aVar) {
        l.f(fVar, "youTubePlayer");
        l.f(aVar, "playbackQuality");
    }

    public final void l(float f10) {
        if (!this.f17445h || this.f17448k) {
            return;
        }
        this.f17446i = !(f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        if ((f10 == 1.0f) && this.f17444g) {
            Handler handler = this.f17443f.getHandler();
            if (handler != null) {
                handler.postDelayed(this.f17447j, this.f17450m);
            }
        } else {
            Handler handler2 = this.f17443f.getHandler();
            if (handler2 != null) {
                handler2.removeCallbacks(this.f17447j);
            }
        }
        this.f17443f.animate().alpha(f10).setDuration(this.f17449l).setListener(new c(f10, this)).start();
    }

    public final View n() {
        return this.f17443f;
    }

    public final void o() {
        l(this.f17446i ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : 1.0f);
    }

    public final void p(ra.d dVar) {
        int i10 = C0446b.f17451a[dVar.ordinal()];
        if (i10 == 1) {
            this.f17444g = false;
        } else if (i10 == 2) {
            this.f17444g = false;
        } else {
            if (i10 != 3) {
                return;
            }
            this.f17444g = true;
        }
    }
}
