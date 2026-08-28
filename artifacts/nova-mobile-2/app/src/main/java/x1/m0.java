package x1;

import android.os.IBinder;

/* compiled from: WindowIdApi14.java */
/* loaded from: classes.dex */
public class m0 implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f15785a;

    public m0(IBinder iBinder) {
        this.f15785a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof m0) && ((m0) obj).f15785a.equals(this.f15785a);
    }

    public int hashCode() {
        return this.f15785a.hashCode();
    }
}
