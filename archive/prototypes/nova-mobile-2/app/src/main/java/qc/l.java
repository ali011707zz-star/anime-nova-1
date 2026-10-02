package qc;

/* compiled from: Appendable.kt */
/* loaded from: classes2.dex */
public class l {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void a(Appendable appendable, T t10, ic.l<? super T, ? extends CharSequence> lVar) {
        jc.l.f(appendable, "<this>");
        if (lVar != null) {
            appendable.append(lVar.invoke(t10));
            return;
        }
        if (t10 == 0 ? true : t10 instanceof CharSequence) {
            appendable.append((CharSequence) t10);
        } else if (t10 instanceof Character) {
            appendable.append(((Character) t10).charValue());
        } else {
            appendable.append(String.valueOf(t10));
        }
    }
}
