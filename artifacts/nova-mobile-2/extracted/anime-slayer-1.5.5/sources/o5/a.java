package o5;

import a2.a;
import android.os.Bundle;
import androidx.appcompat.app.e;
import androidx.lifecycle.l;
import androidx.lifecycle.r;
import com.anslayer.R;
import jc.m;
import vb.f;

/* compiled from: BaseActivity.kt */
/* loaded from: classes.dex */
public abstract class a<VB extends a2.a> extends e {

    /* renamed from: g, reason: collision with root package name */
    public VB f11744g;

    /* renamed from: i, reason: collision with root package name */
    public int f11746i;

    /* renamed from: f, reason: collision with root package name */
    public final l f11743f = r.a(this);

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f11745h = f.a(d.f11752f);

    /* renamed from: j, reason: collision with root package name */
    public final vb.e f11747j = f.a(new b(this));

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f11748k = f.a(new c(this));

    /* compiled from: BaseActivity.kt */
    /* renamed from: o5.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class C0290a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11749a;

        static {
            int[] iArr = new int[f4.a.values().length];
            iArr[f4.a.GRAY.ordinal()] = 1;
            iArr[f4.a.AMOLED.ordinal()] = 2;
            f11749a = iArr;
        }
    }

    /* compiled from: BaseActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<Integer> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ a<VB> f11750f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(a<VB> aVar) {
            super(0);
            this.f11750f = aVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // ic.a
        public final Integer invoke() {
            return Integer.valueOf(this.f11750f.d());
        }
    }

    /* compiled from: BaseActivity.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<Integer> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ a<VB> f11751f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(a<VB> aVar) {
            super(0);
            this.f11751f = aVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // ic.a
        public final Integer invoke() {
            this.f11751f.k(0);
            return Integer.valueOf(R.style.Theme_Anime_Light);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f11752f = new d();

        /* compiled from: TypeInfo.kt */
        /* renamed from: o5.a$d$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0291a extends zd.a<f4.d> {
        }

        public d() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new C0291a().getType());
        }
    }

    public final VB c() {
        VB vb2 = this.f11744g;
        if (vb2 != null) {
            return vb2;
        }
        jc.l.v("binding");
        return null;
    }

    public final int d() {
        int i10 = C0290a.f11749a[g().j0().get().ordinal()];
        if (i10 == 1) {
            this.f11746i = 1;
            return R.style.Theme_Anime_DarkGray;
        }
        if (i10 != 2) {
            this.f11746i = 3;
            return R.style.Theme_Anime_DarkBlue;
        }
        this.f11746i = 2;
        return R.style.Theme_Anime_Amoled;
    }

    public final int e() {
        return ((Number) this.f11747j.getValue()).intValue();
    }

    public final int f() {
        return ((Number) this.f11748k.getValue()).intValue();
    }

    public final f4.d g() {
        return (f4.d) this.f11745h.getValue();
    }

    public final l h() {
        return this.f11743f;
    }

    public final boolean i() {
        f4.c cVar = g().k0().get();
        return cVar == f4.c.DARK || (cVar == f4.c.SYSTEM && (getResources().getConfiguration().uiMode & 48) == 32);
    }

    public final void j(VB vb2) {
        jc.l.f(vb2, "<set-?>");
        this.f11744g = vb2;
    }

    public final void k(int i10) {
        this.f11746i = i10;
    }

    public final boolean l() {
        f4.a aVar = g().j0().get();
        int i10 = 2;
        if (i()) {
            int i11 = C0290a.f11749a[aVar.ordinal()];
            if (i11 == 1) {
                i10 = 1;
            } else if (i11 != 2) {
                i10 = 3;
            }
        } else {
            i10 = 0;
        }
        return i10 != this.f11746i;
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTheme(i() ? e() : f());
        super.onCreate(bundle);
    }
}
