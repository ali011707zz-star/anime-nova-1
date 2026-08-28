package x1;

import android.view.View;
import android.view.WindowId;

/* compiled from: WindowIdApi18.java */
/* loaded from: classes.dex */
public class n0 implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final WindowId f15797a;

    public n0(View view) {
        this.f15797a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof n0) && ((n0) obj).f15797a.equals(this.f15797a);
    }

    public int hashCode() {
        return this.f15797a.hashCode();
    }
}
