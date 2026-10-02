package wc;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlinx.coroutines.internal.MainDispatcherFactory;
import rc.n2;

/* compiled from: MainDispatchers.kt */
/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f15537a = true;

    public static final u a(Throwable th, String str) {
        if (f15537a) {
            return new u(th, str);
        }
        if (th != null) {
            throw th;
        }
        c();
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ u b(Throwable th, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    public static final Void c() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final n2 d(MainDispatcherFactory mainDispatcherFactory, List<? extends MainDispatcherFactory> list) {
        try {
            return mainDispatcherFactory.createDispatcher(list);
        } catch (Throwable th) {
            return a(th, mainDispatcherFactory.hintOnError());
        }
    }
}
