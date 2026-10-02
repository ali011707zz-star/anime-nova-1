package androidx.preference;

import android.R;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m1.f;
import m1.n;
import q0.b0;

/* compiled from: PreferenceGroupAdapter.java */
/* loaded from: classes.dex */
public class d extends RecyclerView.h<f> implements Preference.c {

    /* renamed from: f, reason: collision with root package name */
    public PreferenceGroup f2651f;

    /* renamed from: g, reason: collision with root package name */
    public List<Preference> f2652g;

    /* renamed from: h, reason: collision with root package name */
    public List<Preference> f2653h;

    /* renamed from: i, reason: collision with root package name */
    public List<c> f2654i;

    /* renamed from: k, reason: collision with root package name */
    public Runnable f2656k = new a();

    /* renamed from: j, reason: collision with root package name */
    public Handler f2655j = new Handler();

    /* compiled from: PreferenceGroupAdapter.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.l();
        }
    }

    /* compiled from: PreferenceGroupAdapter.java */
    /* loaded from: classes.dex */
    public class b implements Preference.e {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ PreferenceGroup f2658a;

        public b(PreferenceGroup preferenceGroup) {
            this.f2658a = preferenceGroup;
        }

        @Override // androidx.preference.Preference.e
        public boolean a(Preference preference) {
            this.f2658a.P0(Api.BaseClientBuilder.API_PRIORITY_OTHER);
            d.this.a(preference);
            PreferenceGroup.b K0 = this.f2658a.K0();
            if (K0 == null) {
                return true;
            }
            K0.a();
            return true;
        }
    }

    /* compiled from: PreferenceGroupAdapter.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public int f2660a;

        /* renamed from: b, reason: collision with root package name */
        public int f2661b;

        /* renamed from: c, reason: collision with root package name */
        public String f2662c;

        public c(Preference preference) {
            this.f2662c = preference.getClass().getName();
            this.f2660a = preference.p();
            this.f2661b = preference.C();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f2660a == cVar.f2660a && this.f2661b == cVar.f2661b && TextUtils.equals(this.f2662c, cVar.f2662c);
        }

        public int hashCode() {
            return ((((527 + this.f2660a) * 31) + this.f2661b) * 31) + this.f2662c.hashCode();
        }
    }

    public d(PreferenceGroup preferenceGroup) {
        this.f2651f = preferenceGroup;
        this.f2651f.s0(this);
        this.f2652g = new ArrayList();
        this.f2653h = new ArrayList();
        this.f2654i = new ArrayList();
        PreferenceGroup preferenceGroup2 = this.f2651f;
        if (preferenceGroup2 instanceof PreferenceScreen) {
            setHasStableIds(((PreferenceScreen) preferenceGroup2).S0());
        } else {
            setHasStableIds(true);
        }
        l();
    }

    @Override // androidx.preference.Preference.c
    public void a(Preference preference) {
        this.f2655j.removeCallbacks(this.f2656k);
        this.f2655j.post(this.f2656k);
    }

    @Override // androidx.preference.Preference.c
    public void b(Preference preference) {
        int indexOf = this.f2653h.indexOf(preference);
        if (indexOf != -1) {
            notifyItemChanged(indexOf, preference);
        }
    }

    @Override // androidx.preference.Preference.c
    public void c(Preference preference) {
        a(preference);
    }

    public final m1.a e(PreferenceGroup preferenceGroup, List<Preference> list) {
        m1.a aVar = new m1.a(preferenceGroup.i(), list, preferenceGroup.m());
        aVar.u0(new b(preferenceGroup));
        return aVar;
    }

    public final List<Preference> f(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int M0 = preferenceGroup.M0();
        int i10 = 0;
        for (int i11 = 0; i11 < M0; i11++) {
            Preference L0 = preferenceGroup.L0(i11);
            if (L0.I()) {
                if (i(preferenceGroup) && i10 >= preferenceGroup.J0()) {
                    arrayList2.add(L0);
                } else {
                    arrayList.add(L0);
                }
                if (L0 instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) L0;
                    if (!preferenceGroup2.N0()) {
                        continue;
                    } else {
                        if (i(preferenceGroup) && i(preferenceGroup2)) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        for (Preference preference : f(preferenceGroup2)) {
                            if (i(preferenceGroup) && i10 >= preferenceGroup.J0()) {
                                arrayList2.add(preference);
                            } else {
                                arrayList.add(preference);
                            }
                            i10++;
                        }
                    }
                } else {
                    i10++;
                }
            }
        }
        if (i(preferenceGroup) && i10 > preferenceGroup.J0()) {
            arrayList.add(e(preferenceGroup, arrayList2));
        }
        return arrayList;
    }

    public final void g(List<Preference> list, PreferenceGroup preferenceGroup) {
        preferenceGroup.R0();
        int M0 = preferenceGroup.M0();
        for (int i10 = 0; i10 < M0; i10++) {
            Preference L0 = preferenceGroup.L0(i10);
            list.add(L0);
            c cVar = new c(L0);
            if (!this.f2654i.contains(cVar)) {
                this.f2654i.add(cVar);
            }
            if (L0 instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) L0;
                if (preferenceGroup2.N0()) {
                    g(list, preferenceGroup2);
                }
            }
            L0.s0(this);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f2653h.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public long getItemId(int i10) {
        if (hasStableIds()) {
            return h(i10).m();
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        c cVar = new c(h(i10));
        int indexOf = this.f2654i.indexOf(cVar);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.f2654i.size();
        this.f2654i.add(cVar);
        return size;
    }

    public Preference h(int i10) {
        if (i10 < 0 || i10 >= getItemCount()) {
            return null;
        }
        return this.f2653h.get(i10);
    }

    public final boolean i(PreferenceGroup preferenceGroup) {
        return preferenceGroup.J0() != Integer.MAX_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(f fVar, int i10) {
        h(i10).P(fVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public f onCreateViewHolder(ViewGroup viewGroup, int i10) {
        c cVar = this.f2654i.get(i10);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, n.f10761p);
        Drawable drawable = obtainStyledAttributes.getDrawable(n.f10764q);
        if (drawable == null) {
            drawable = f.a.b(viewGroup.getContext(), R.drawable.list_selector_background);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(cVar.f2660a, viewGroup, false);
        if (inflate.getBackground() == null) {
            b0.x0(inflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.widget_frame);
        if (viewGroup2 != null) {
            int i11 = cVar.f2661b;
            if (i11 != 0) {
                from.inflate(i11, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new f(inflate);
    }

    public void l() {
        Iterator<Preference> it2 = this.f2652g.iterator();
        while (it2.hasNext()) {
            it2.next().s0(null);
        }
        ArrayList arrayList = new ArrayList(this.f2652g.size());
        this.f2652g = arrayList;
        g(arrayList, this.f2651f);
        this.f2653h = f(this.f2651f);
        e x10 = this.f2651f.x();
        if (x10 != null) {
            x10.j();
        }
        notifyDataSetChanged();
        Iterator<Preference> it3 = this.f2652g.iterator();
        while (it3.hasNext()) {
            it3.next().c();
        }
    }
}
