package a0;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: SharedValues.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public SparseIntArray f316a = new SparseIntArray();

    /* renamed from: b, reason: collision with root package name */
    public HashMap<Integer, HashSet<WeakReference<a>>> f317b = new HashMap<>();

    /* compiled from: SharedValues.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    public void a(int i10, a aVar) {
        HashSet<WeakReference<a>> hashSet = this.f317b.get(Integer.valueOf(i10));
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.f317b.put(Integer.valueOf(i10), hashSet);
        }
        hashSet.add(new WeakReference<>(aVar));
    }
}
