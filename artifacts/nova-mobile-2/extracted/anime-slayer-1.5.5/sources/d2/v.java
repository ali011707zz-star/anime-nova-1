package d2;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* compiled from: WorkManager.java */
@SuppressLint({"AddedAbstractMethod"})
/* loaded from: classes.dex */
public abstract class v {
    public static v i(Context context) {
        return e2.i.r(context);
    }

    public static void k(Context context, b bVar) {
        e2.i.k(context, bVar);
    }

    public final t a(n nVar) {
        return b(Collections.singletonList(nVar));
    }

    public abstract t b(List<n> list);

    public abstract o c(String str);

    public final o d(w wVar) {
        return e(Collections.singletonList(wVar));
    }

    public abstract o e(List<? extends w> list);

    public abstract o f(String str, e eVar, p pVar);

    public o g(String str, f fVar, n nVar) {
        return h(str, fVar, Collections.singletonList(nVar));
    }

    public abstract o h(String str, f fVar, List<n> list);

    public abstract LiveData<u> j(UUID uuid);
}
