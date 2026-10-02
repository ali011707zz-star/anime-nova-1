package l3;

import android.graphics.Paint;
import java.util.List;

/* compiled from: ShapeStroke.java */
/* loaded from: classes.dex */
public class q implements l3.c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10381a;

    /* renamed from: b, reason: collision with root package name */
    public final k3.b f10382b;

    /* renamed from: c, reason: collision with root package name */
    public final List<k3.b> f10383c;

    /* renamed from: d, reason: collision with root package name */
    public final k3.a f10384d;

    /* renamed from: e, reason: collision with root package name */
    public final k3.d f10385e;

    /* renamed from: f, reason: collision with root package name */
    public final k3.b f10386f;

    /* renamed from: g, reason: collision with root package name */
    public final b f10387g;

    /* renamed from: h, reason: collision with root package name */
    public final c f10388h;

    /* renamed from: i, reason: collision with root package name */
    public final float f10389i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f10390j;

    /* compiled from: ShapeStroke.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10391a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f10392b;

        static {
            int[] iArr = new int[c.values().length];
            f10392b = iArr;
            try {
                iArr[c.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10392b[c.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10392b[c.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[b.values().length];
            f10391a = iArr2;
            try {
                iArr2[b.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10391a[b.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f10391a[b.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* compiled from: ShapeStroke.java */
    /* loaded from: classes.dex */
    public enum b {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap a() {
            int i10 = a.f10391a[ordinal()];
            if (i10 == 1) {
                return Paint.Cap.BUTT;
            }
            if (i10 != 2) {
                return Paint.Cap.SQUARE;
            }
            return Paint.Cap.ROUND;
        }
    }

    /* compiled from: ShapeStroke.java */
    /* loaded from: classes.dex */
    public enum c {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join a() {
            int i10 = a.f10392b[ordinal()];
            if (i10 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i10 == 2) {
                return Paint.Join.MITER;
            }
            if (i10 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public q(String str, k3.b bVar, List<k3.b> list, k3.a aVar, k3.d dVar, k3.b bVar2, b bVar3, c cVar, float f10, boolean z10) {
        this.f10381a = str;
        this.f10382b = bVar;
        this.f10383c = list;
        this.f10384d = aVar;
        this.f10385e = dVar;
        this.f10386f = bVar2;
        this.f10387g = bVar3;
        this.f10388h = cVar;
        this.f10389i = f10;
        this.f10390j = z10;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new g3.r(fVar, aVar, this);
    }

    public b b() {
        return this.f10387g;
    }

    public k3.a c() {
        return this.f10384d;
    }

    public k3.b d() {
        return this.f10382b;
    }

    public c e() {
        return this.f10388h;
    }

    public List<k3.b> f() {
        return this.f10383c;
    }

    public float g() {
        return this.f10389i;
    }

    public String h() {
        return this.f10381a;
    }

    public k3.d i() {
        return this.f10385e;
    }

    public k3.b j() {
        return this.f10386f;
    }

    public boolean k() {
        return this.f10390j;
    }
}
