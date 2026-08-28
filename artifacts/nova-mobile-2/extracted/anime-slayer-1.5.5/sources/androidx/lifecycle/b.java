package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;

/* compiled from: AndroidViewModel.java */
/* loaded from: classes.dex */
public class b extends i0 {

    /* renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public Application f2450a;

    public b(Application application) {
        this.f2450a = application;
    }

    public <T extends Application> T a() {
        return (T) this.f2450a;
    }
}
