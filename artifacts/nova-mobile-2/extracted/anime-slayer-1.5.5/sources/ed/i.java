package ed;

import java.util.ArrayList;
import java.util.List;

/* compiled from: PendingPost.java */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: d, reason: collision with root package name */
    public static final List<i> f6344d = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public Object f6345a;

    /* renamed from: b, reason: collision with root package name */
    public p f6346b;

    /* renamed from: c, reason: collision with root package name */
    public i f6347c;

    public i(Object obj, p pVar) {
        this.f6345a = obj;
        this.f6346b = pVar;
    }

    public static i a(p pVar, Object obj) {
        List<i> list = f6344d;
        synchronized (list) {
            int size = list.size();
            if (size > 0) {
                i remove = list.remove(size - 1);
                remove.f6345a = obj;
                remove.f6346b = pVar;
                remove.f6347c = null;
                return remove;
            }
            return new i(obj, pVar);
        }
    }

    public static void b(i iVar) {
        iVar.f6345a = null;
        iVar.f6346b = null;
        iVar.f6347c = null;
        List<i> list = f6344d;
        synchronized (list) {
            if (list.size() < 10000) {
                list.add(iVar);
            }
        }
    }
}
