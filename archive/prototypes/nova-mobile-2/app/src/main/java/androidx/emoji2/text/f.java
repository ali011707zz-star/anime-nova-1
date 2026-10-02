package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;

/* compiled from: EmojiMetadata.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: d, reason: collision with root package name */
    public static final ThreadLocal<z0.a> f1957d = new ThreadLocal<>();

    /* renamed from: a, reason: collision with root package name */
    public final int f1958a;

    /* renamed from: b, reason: collision with root package name */
    public final l f1959b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f1960c = 0;

    public f(l lVar, int i10) {
        this.f1959b = lVar;
        this.f1958a = i10;
    }

    public void a(Canvas canvas, float f10, float f11, Paint paint) {
        Typeface g10 = this.f1959b.g();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(g10);
        canvas.drawText(this.f1959b.c(), this.f1958a * 2, 2, f10, f11, paint);
        paint.setTypeface(typeface);
    }

    public int b(int i10) {
        return g().h(i10);
    }

    public int c() {
        return g().i();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int d() {
        return this.f1960c;
    }

    public short e() {
        return g().k();
    }

    public int f() {
        return g().l();
    }

    public final z0.a g() {
        ThreadLocal<z0.a> threadLocal = f1957d;
        z0.a aVar = threadLocal.get();
        if (aVar == null) {
            aVar = new z0.a();
            threadLocal.set(aVar);
        }
        this.f1959b.d().j(aVar, this.f1958a);
        return aVar;
    }

    public short h() {
        return g().m();
    }

    public short i() {
        return g().n();
    }

    public boolean j() {
        return g().j();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void k(boolean z10) {
        this.f1960c = z10 ? 2 : 1;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(", id:");
        sb2.append(Integer.toHexString(f()));
        sb2.append(", codepoints:");
        int c10 = c();
        for (int i10 = 0; i10 < c10; i10++) {
            sb2.append(Integer.toHexString(b(i10)));
            sb2.append(" ");
        }
        return sb2.toString();
    }
}
