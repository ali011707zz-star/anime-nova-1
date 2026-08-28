package e7;

import jc.l;
import vb.p;

/* compiled from: AnyExentions.kt */
/* loaded from: classes.dex */
public final class a {
    public static final void a(Object obj, ic.a<p> aVar) {
        l.f(obj, "<this>");
        l.f(aVar, "unit");
        try {
            aVar.invoke();
        } catch (Exception e10) {
            e10.printStackTrace();
            if (e10.getMessage() == null) {
                return;
            }
            obj.toString();
        }
    }
}
