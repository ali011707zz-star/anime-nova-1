package e3;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: PerformanceTracker.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6140a = false;

    /* renamed from: b, reason: collision with root package name */
    public final Set<b> f6141b = new s.b();

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, q3.f> f6142c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final Comparator<p0.e<String, Float>> f6143d = new a();

    /* compiled from: PerformanceTracker.java */
    /* loaded from: classes.dex */
    public class a implements Comparator<p0.e<String, Float>> {
        public a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(p0.e<String, Float> eVar, p0.e<String, Float> eVar2) {
            float floatValue = eVar.f11991b.floatValue();
            float floatValue2 = eVar2.f11991b.floatValue();
            if (floatValue2 > floatValue) {
                return 1;
            }
            return floatValue > floatValue2 ? -1 : 0;
        }
    }

    /* compiled from: PerformanceTracker.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(float f10);
    }

    public void a(String str, float f10) {
        if (this.f6140a) {
            q3.f fVar = this.f6142c.get(str);
            if (fVar == null) {
                fVar = new q3.f();
                this.f6142c.put(str, fVar);
            }
            fVar.a(f10);
            if (str.equals("__container")) {
                Iterator<b> it2 = this.f6141b.iterator();
                while (it2.hasNext()) {
                    it2.next().a(f10);
                }
            }
        }
    }

    public void b(boolean z10) {
        this.f6140a = z10;
    }
}
