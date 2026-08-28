package b;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: ContextAwareHelper.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Set<b> f3421a = new CopyOnWriteArraySet();

    /* renamed from: b, reason: collision with root package name */
    public volatile Context f3422b;

    public void a(b bVar) {
        if (this.f3422b != null) {
            bVar.a(this.f3422b);
        }
        this.f3421a.add(bVar);
    }

    public void b() {
        this.f3422b = null;
    }

    public void c(Context context) {
        this.f3422b = context;
        Iterator<b> it2 = this.f3421a.iterator();
        while (it2.hasNext()) {
            it2.next().a(context);
        }
    }

    public Context d() {
        return this.f3422b;
    }

    public void e(b bVar) {
        this.f3421a.remove(bVar);
    }
}
