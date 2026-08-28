package g3;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CompoundTrimPathContent.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public List<s> f6783a = new ArrayList();

    public void a(s sVar) {
        this.f6783a.add(sVar);
    }

    public void b(Path path) {
        for (int size = this.f6783a.size() - 1; size >= 0; size--) {
            q3.h.b(path, this.f6783a.get(size));
        }
    }
}
