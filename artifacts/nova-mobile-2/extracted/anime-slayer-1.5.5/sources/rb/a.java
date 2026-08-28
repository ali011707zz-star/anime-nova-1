package rb;

import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: ChangeLog.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public LinkedList<c> f13209a = new LinkedList<>();

    /* renamed from: b, reason: collision with root package name */
    public boolean f13210b;

    public void a(c cVar) {
        if (cVar != null) {
            if (this.f13209a == null) {
                this.f13209a = new LinkedList<>();
            }
            this.f13209a.add(cVar);
        }
    }

    public LinkedList<c> b() {
        return this.f13209a;
    }

    public void c(boolean z10) {
        this.f13210b = z10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bulletedList=" + this.f13210b);
        sb2.append("\n");
        LinkedList<c> linkedList = this.f13209a;
        if (linkedList != null) {
            Iterator<c> it2 = linkedList.iterator();
            while (it2.hasNext()) {
                c next = it2.next();
                sb2.append("row=[");
                sb2.append(next.toString());
                sb2.append("]\n");
            }
        } else {
            sb2.append("rows:none");
        }
        return sb2.toString();
    }
}
