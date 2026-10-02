package ua;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import jc.l;

/* compiled from: FullScreenHelper.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final View f14498a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14499b;

    /* renamed from: c, reason: collision with root package name */
    public final Set<sa.c> f14500c;

    public a(View view) {
        l.f(view, "targetView");
        this.f14498a = view;
        this.f14500c = new LinkedHashSet();
    }

    public final boolean a(sa.c cVar) {
        l.f(cVar, "fullScreenListener");
        return this.f14500c.add(cVar);
    }

    public final void b() {
        if (this.f14499b) {
            return;
        }
        this.f14499b = true;
        ViewGroup.LayoutParams layoutParams = this.f14498a.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        this.f14498a.setLayoutParams(layoutParams);
        Iterator<sa.c> it2 = this.f14500c.iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
    }

    public final void c() {
        if (this.f14499b) {
            this.f14499b = false;
            ViewGroup.LayoutParams layoutParams = this.f14498a.getLayoutParams();
            layoutParams.height = -2;
            layoutParams.width = -1;
            this.f14498a.setLayoutParams(layoutParams);
            Iterator<sa.c> it2 = this.f14500c.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
        }
    }

    public final boolean d() {
        return this.f14499b;
    }

    public final void e() {
        if (this.f14499b) {
            c();
        } else {
            b();
        }
    }
}
