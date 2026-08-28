package d2;

import java.util.List;

/* compiled from: InputMerger.java */
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5575a = l.f("InputMerger");

    public static j a(String str) {
        try {
            return (j) Class.forName(str).newInstance();
        } catch (Exception e10) {
            l.c().b(f5575a, "Trouble instantiating + " + str, e10);
            return null;
        }
    }

    public abstract androidx.work.a b(List<androidx.work.a> list);
}
