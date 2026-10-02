package b5;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.e;
import androidx.fragment.app.v;
import c5.i;
import com.anslayer.R;
import h5.g;
import i5.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.l;
import wb.m;

/* compiled from: SeriesViewPager.kt */
/* loaded from: classes.dex */
public final class c extends v {

    /* renamed from: a, reason: collision with root package name */
    public final e f3511a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3512b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3513c;

    /* renamed from: d, reason: collision with root package name */
    public final Bundle f3514d;

    /* renamed from: e, reason: collision with root package name */
    public final List<String> f3515e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar, boolean z10, boolean z11) {
        super(eVar.getSupportFragmentManager());
        l.f(eVar, "context");
        this.f3511a = eVar;
        this.f3512b = z10;
        this.f3513c = z11;
        this.f3514d = new Bundle();
        Integer valueOf = Integer.valueOf(R.string.label_characters_staff);
        Integer valueOf2 = Integer.valueOf(R.string.label_stats);
        Integer valueOf3 = Integer.valueOf(R.string.label_details);
        List l10 = (z10 || z11) ? wb.l.l(valueOf3, valueOf2, valueOf) : wb.l.l(valueOf3, Integer.valueOf(R.string.label_episodes), valueOf2, valueOf);
        ArrayList arrayList = new ArrayList(m.q(l10, 10));
        Iterator it2 = l10.iterator();
        while (it2.hasNext()) {
            arrayList.add(getContext().getResources().getString(((Number) it2.next()).intValue()));
        }
        this.f3515e = arrayList;
    }

    public final Bundle getBundle() {
        return this.f3514d;
    }

    public final e getContext() {
        return this.f3511a;
    }

    @Override // b2.a
    public int getCount() {
        return this.f3515e.size();
    }

    @Override // androidx.fragment.app.v
    public Fragment getItem(int i10) {
        if (this.f3512b || this.f3513c) {
            if (i10 == 0) {
                return x.B.newInstance(this.f3514d);
            }
            if (i10 != 1) {
                return i.f3685m.newInstance(this.f3514d);
            }
            j5.b bVar = new j5.b();
            Bundle bundle = getBundle();
            bundle.putBoolean("not_yet_released", this.f3512b);
            bVar.setArguments(bundle);
            return bVar;
        }
        if (i10 == 0) {
            return x.B.newInstance(this.f3514d);
        }
        if (i10 == 1) {
            return g.f7290x.newInstance(this.f3514d);
        }
        if (i10 != 2) {
            return i.f3685m.newInstance(this.f3514d);
        }
        j5.b bVar2 = new j5.b();
        bVar2.setArguments(getBundle());
        return bVar2;
    }

    @Override // b2.a
    public CharSequence getPageTitle(int i10) {
        String str = this.f3515e.get(i10);
        l.e(str, "tabTitles[position]");
        return str;
    }
}
