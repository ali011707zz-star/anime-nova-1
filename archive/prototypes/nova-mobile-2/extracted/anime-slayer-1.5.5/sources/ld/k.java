package ld;

import java.io.Serializable;
import java.util.Comparator;

/* compiled from: TimeUnitComparator.java */
/* loaded from: classes2.dex */
public class k implements Comparator<id.e>, Serializable {
    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(id.e eVar, id.e eVar2) {
        if (eVar.b() < eVar2.b()) {
            return -1;
        }
        return eVar.b() > eVar2.b() ? 1 : 0;
    }
}
