package androidx.lifecycle;

import androidx.lifecycle.k;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements n {

    /* renamed from: f, reason: collision with root package name */
    public final i f2386f;

    /* renamed from: g, reason: collision with root package name */
    public final n f2387g;

    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2388a;

        static {
            int[] iArr = new int[k.b.values().length];
            f2388a = iArr;
            try {
                iArr[k.b.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2388a[k.b.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2388a[k.b.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2388a[k.b.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2388a[k.b.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2388a[k.b.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2388a[k.b.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public FullLifecycleObserverAdapter(i iVar, n nVar) {
        this.f2386f = iVar;
        this.f2387g = nVar;
    }

    @Override // androidx.lifecycle.n
    public void e(q qVar, k.b bVar) {
        switch (a.f2388a[bVar.ordinal()]) {
            case 1:
                this.f2386f.d(qVar);
                break;
            case 2:
                this.f2386f.h(qVar);
                break;
            case 3:
                this.f2386f.b(qVar);
                break;
            case 4:
                this.f2386f.g(qVar);
                break;
            case 5:
                this.f2386f.i(qVar);
                break;
            case 6:
                this.f2386f.c(qVar);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        n nVar = this.f2387g;
        if (nVar != null) {
            nVar.e(qVar, bVar);
        }
    }
}
