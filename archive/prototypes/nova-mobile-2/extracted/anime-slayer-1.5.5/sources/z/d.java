package z;

import android.content.Context;
import android.util.AttributeSet;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: Key.java */
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: f, reason: collision with root package name */
    public static int f16863f = -1;

    /* renamed from: a, reason: collision with root package name */
    public int f16864a;

    /* renamed from: b, reason: collision with root package name */
    public int f16865b;

    /* renamed from: c, reason: collision with root package name */
    public String f16866c;

    /* renamed from: d, reason: collision with root package name */
    public int f16867d;

    /* renamed from: e, reason: collision with root package name */
    public HashMap<String, androidx.constraintlayout.widget.a> f16868e;

    public d() {
        int i10 = f16863f;
        this.f16864a = i10;
        this.f16865b = i10;
        this.f16866c = null;
    }

    public abstract void a(HashMap<String, y.c> hashMap);

    @Override // 
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public abstract d clone();

    public d c(d dVar) {
        this.f16864a = dVar.f16864a;
        this.f16865b = dVar.f16865b;
        this.f16866c = dVar.f16866c;
        this.f16867d = dVar.f16867d;
        this.f16868e = dVar.f16868e;
        return this;
    }

    public abstract void d(HashSet<String> hashSet);

    public abstract void e(Context context, AttributeSet attributeSet);

    public void f(HashMap<String, Integer> hashMap) {
    }

    public d g(int i10) {
        this.f16865b = i10;
        return this;
    }
}
