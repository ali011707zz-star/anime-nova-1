package g9;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g9.f;

/* compiled from: MPPointF.java */
/* loaded from: classes.dex */
public class e extends f.a {

    /* renamed from: e, reason: collision with root package name */
    public static f<e> f7053e;

    /* renamed from: f, reason: collision with root package name */
    public static final Parcelable.Creator<e> f7054f;

    /* renamed from: c, reason: collision with root package name */
    public float f7055c;

    /* renamed from: d, reason: collision with root package name */
    public float f7056d;

    /* compiled from: MPPointF.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e createFromParcel(Parcel parcel) {
            e eVar = new e(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            eVar.e(parcel);
            return eVar;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public e[] newArray(int i10) {
            return new e[i10];
        }
    }

    static {
        f<e> a10 = f.a(32, new e(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        f7053e = a10;
        a10.g(0.5f);
        f7054f = new a();
    }

    public e() {
    }

    public static e b() {
        return f7053e.b();
    }

    public static e c(float f10, float f11) {
        e b10 = f7053e.b();
        b10.f7055c = f10;
        b10.f7056d = f11;
        return b10;
    }

    public static e d(e eVar) {
        e b10 = f7053e.b();
        b10.f7055c = eVar.f7055c;
        b10.f7056d = eVar.f7056d;
        return b10;
    }

    public static void f(e eVar) {
        f7053e.c(eVar);
    }

    @Override // g9.f.a
    public f.a a() {
        return new e(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    public void e(Parcel parcel) {
        this.f7055c = parcel.readFloat();
        this.f7056d = parcel.readFloat();
    }

    public e(float f10, float f11) {
        this.f7055c = f10;
        this.f7056d = f11;
    }
}
