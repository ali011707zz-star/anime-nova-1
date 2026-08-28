package o1;

import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Callable;

/* compiled from: InvalidationLiveDataContainer.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public final Set<LiveData> f11625a = Collections.newSetFromMap(new IdentityHashMap());

    /* renamed from: b, reason: collision with root package name */
    public final p0 f11626b;

    public u(p0 p0Var) {
        this.f11626b = p0Var;
    }

    public <T> LiveData<T> a(String[] strArr, boolean z10, Callable<T> callable) {
        return new androidx.room.e(this.f11626b, this, z10, callable, strArr);
    }

    public void b(LiveData liveData) {
        this.f11625a.add(liveData);
    }

    public void c(LiveData liveData) {
        this.f11625a.remove(liveData);
    }
}
