package x1;

import android.view.ViewGroup;

/* compiled from: Scene.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup f15783a;

    /* renamed from: b, reason: collision with root package name */
    public Runnable f15784b;

    public static m b(ViewGroup viewGroup) {
        return (m) viewGroup.getTag(k.f15760c);
    }

    public static void c(ViewGroup viewGroup, m mVar) {
        viewGroup.setTag(k.f15760c, mVar);
    }

    public void a() {
        Runnable runnable;
        if (b(this.f15783a) != this || (runnable = this.f15784b) == null) {
            return;
        }
        runnable.run();
    }
}
