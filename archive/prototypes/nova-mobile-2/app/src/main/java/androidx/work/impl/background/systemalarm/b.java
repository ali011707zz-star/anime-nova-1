package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.d;
import d2.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m2.p;

/* compiled from: ConstraintsCommandHandler.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: e, reason: collision with root package name */
    public static final String f3341e = l.f("ConstraintsCmdHandler");

    /* renamed from: a, reason: collision with root package name */
    public final Context f3342a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3343b;

    /* renamed from: c, reason: collision with root package name */
    public final d f3344c;

    /* renamed from: d, reason: collision with root package name */
    public final i2.d f3345d;

    public b(Context context, int i10, d dVar) {
        this.f3342a = context;
        this.f3343b = i10;
        this.f3344c = dVar;
        this.f3345d = new i2.d(context, dVar.f(), null);
    }

    public void a() {
        List<p> s10 = this.f3344c.g().w().O().s();
        ConstraintProxy.a(this.f3342a, s10);
        this.f3345d.d(s10);
        ArrayList arrayList = new ArrayList(s10.size());
        long currentTimeMillis = System.currentTimeMillis();
        for (p pVar : s10) {
            String str = pVar.f10827a;
            if (currentTimeMillis >= pVar.a() && (!pVar.b() || this.f3345d.c(str))) {
                arrayList.add(pVar);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str2 = ((p) it2.next()).f10827a;
            Intent c10 = a.c(this.f3342a, str2);
            l.c().a(f3341e, String.format("Creating a delay_met command for workSpec with id (%s)", str2), new Throwable[0]);
            d dVar = this.f3344c;
            dVar.k(new d.b(dVar, c10, this.f3343b));
        }
        this.f3345d.e();
    }
}
