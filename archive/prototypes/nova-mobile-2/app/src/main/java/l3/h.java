package l3;

/* compiled from: Mask.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public final a f10323a;

    /* renamed from: b, reason: collision with root package name */
    public final k3.h f10324b;

    /* renamed from: c, reason: collision with root package name */
    public final k3.d f10325c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f10326d;

    /* compiled from: Mask.java */
    /* loaded from: classes.dex */
    public enum a {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public h(a aVar, k3.h hVar, k3.d dVar, boolean z10) {
        this.f10323a = aVar;
        this.f10324b = hVar;
        this.f10325c = dVar;
        this.f10326d = z10;
    }

    public a a() {
        return this.f10323a;
    }

    public k3.h b() {
        return this.f10324b;
    }

    public k3.d c() {
        return this.f10325c;
    }

    public boolean d() {
        return this.f10326d;
    }
}
