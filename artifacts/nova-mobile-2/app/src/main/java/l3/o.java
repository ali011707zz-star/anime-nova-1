package l3;

import java.util.Arrays;
import java.util.List;

/* compiled from: ShapeGroup.java */
/* loaded from: classes.dex */
public class o implements c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10374a;

    /* renamed from: b, reason: collision with root package name */
    public final List<c> f10375b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10376c;

    public o(String str, List<c> list, boolean z10) {
        this.f10374a = str;
        this.f10375b = list;
        this.f10376c = z10;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new g3.d(fVar, aVar, this);
    }

    public List<c> b() {
        return this.f10375b;
    }

    public String c() {
        return this.f10374a;
    }

    public boolean d() {
        return this.f10376c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f10374a + "' Shapes: " + Arrays.toString(this.f10375b.toArray()) + '}';
    }
}
