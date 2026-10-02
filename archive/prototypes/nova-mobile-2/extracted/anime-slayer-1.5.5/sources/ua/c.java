package ua;

import jc.l;
import ra.f;

/* compiled from: PlaybackResumer.kt */
/* loaded from: classes.dex */
public final class c extends sa.a {

    /* renamed from: f, reason: collision with root package name */
    public boolean f14505f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14506g;

    /* renamed from: h, reason: collision with root package name */
    public ra.c f14507h;

    /* renamed from: i, reason: collision with root package name */
    public String f14508i;

    /* renamed from: j, reason: collision with root package name */
    public float f14509j;

    /* compiled from: PlaybackResumer.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14510a;

        static {
            int[] iArr = new int[ra.d.values().length];
            iArr[ra.d.ENDED.ordinal()] = 1;
            iArr[ra.d.PAUSED.ordinal()] = 2;
            iArr[ra.d.PLAYING.ordinal()] = 3;
            f14510a = iArr;
        }
    }

    @Override // sa.a, sa.d
    public void a(f fVar, float f10) {
        l.f(fVar, "youTubePlayer");
        this.f14509j = f10;
    }

    @Override // sa.a, sa.d
    public void b(f fVar, String str) {
        l.f(fVar, "youTubePlayer");
        l.f(str, "videoId");
        this.f14508i = str;
    }

    @Override // sa.a, sa.d
    public void g(f fVar, ra.c cVar) {
        l.f(fVar, "youTubePlayer");
        l.f(cVar, "error");
        if (cVar == ra.c.HTML_5_PLAYER) {
            this.f14507h = cVar;
        }
    }

    @Override // sa.a, sa.d
    public void i(f fVar, ra.d dVar) {
        l.f(fVar, "youTubePlayer");
        l.f(dVar, "state");
        int i10 = a.f14510a[dVar.ordinal()];
        if (i10 == 1) {
            this.f14506g = false;
        } else if (i10 == 2) {
            this.f14506g = false;
        } else {
            if (i10 != 3) {
                return;
            }
            this.f14506g = true;
        }
    }

    public final void k() {
        this.f14505f = true;
    }

    public final void l() {
        this.f14505f = false;
    }

    public final void m(f fVar) {
        l.f(fVar, "youTubePlayer");
        String str = this.f14508i;
        if (str != null) {
            boolean z10 = this.f14506g;
            if (z10 && this.f14507h == ra.c.HTML_5_PLAYER) {
                e.b(fVar, this.f14505f, str, this.f14509j);
            } else if (!z10 && this.f14507h == ra.c.HTML_5_PLAYER) {
                fVar.h(str, this.f14509j);
            }
        }
        this.f14507h = null;
    }
}
