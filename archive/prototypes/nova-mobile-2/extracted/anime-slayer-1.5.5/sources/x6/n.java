package x6;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.v;
import androidx.viewpager.widget.ViewPager;
import com.anslayer.R;
import com.anslayer.ui.main.MainActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.google.android.material.tabs.TabLayout;
import j4.z1;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.o;
import jc.y;

/* compiled from: SeasonsFragment.kt */
/* loaded from: classes.dex */
public final class n extends Fragment {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f16112k = {y.e(new o(n.class, "binding", "getBinding()Lcom/anslayer/databinding/SeasonsFragmentBinding;", 0))};

    /* renamed from: i, reason: collision with root package name */
    public a f16116i;

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f16113f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f16114g = vb.f.a(d.f16121f);

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f16115h = vb.f.a(e.f16122f);

    /* renamed from: j, reason: collision with root package name */
    public final vb.e f16117j = vb.f.a(new c());

    /* compiled from: SeasonsFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends v {

        /* renamed from: a, reason: collision with root package name */
        public final o4.f f16118a;

        /* renamed from: b, reason: collision with root package name */
        public final List<String> f16119b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Fragment fragment, o4.f fVar) {
            super(fragment.getChildFragmentManager(), 1);
            jc.l.f(fragment, "fragment");
            jc.l.f(fVar, "info");
            this.f16118a = fVar;
            List l10 = wb.l.l(Integer.valueOf(R.string.season_prev), Integer.valueOf(R.string.season_current), Integer.valueOf(R.string.season_next), Integer.valueOf(R.string.season_old));
            ArrayList arrayList = new ArrayList(wb.m.q(l10, 10));
            Iterator it2 = l10.iterator();
            while (it2.hasNext()) {
                arrayList.add(fragment.getResources().getString(((Number) it2.next()).intValue()));
            }
            this.f16119b = arrayList;
        }

        public final o4.f a() {
            return this.f16118a;
        }

        @Override // b2.a
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String getPageTitle(int i10) {
            String str = this.f16119b.get(i10);
            jc.l.e(str, "tabTitles[position]");
            return str;
        }

        @Override // b2.a
        public int getCount() {
            return this.f16119b.size();
        }

        @Override // androidx.fragment.app.v
        public Fragment getItem(int i10) {
            if (i10 == 0) {
                k kVar = new k();
                kVar.setArguments(m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("anime_release_years", Integer.valueOf(a().c().b())), vb.n.a("anime_season", a().c().a())).toString()), vb.n.a("current_season", a().c().c())));
                return kVar;
            }
            if (i10 == 1) {
                k kVar2 = new k();
                kVar2.setArguments(m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("anime_release_years", Integer.valueOf(a().a().b())), vb.n.a("anime_season", a().a().a())).toString()), vb.n.a("current_season", a().a().c())));
                return kVar2;
            }
            if (i10 != 2) {
                i iVar = new i();
                iVar.setArguments(m0.b.a(vb.n.a("next_season_name", a().b().a())));
                return iVar;
            }
            k kVar3 = new k();
            kVar3.setArguments(m0.b.a(vb.n.a("request_param", com.github.salomonbrys.kotson.a.b(vb.n.a("anime_release_years", Integer.valueOf(a().b().b())), vb.n.a("anime_season", a().b().a())).toString()), vb.n.a("current_season", a().b().c())));
            return kVar3;
        }
    }

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class b extends oa.a<o4.f> {
    }

    /* compiled from: SeasonsFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<o4.f> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o4.f invoke() {
            return n.this.F();
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f16121f = new d();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public d() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f16122f = new e();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public e() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public final o4.f F() {
        Type b10;
        try {
            String o10 = I().o();
            jc.l.c(o10);
            ja.f H = H();
            Type type = new b().getType();
            jc.l.b(type, "object : TypeToken<T>() {} .type");
            if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                b10 = ((ParameterizedType) type).getRawType();
                jc.l.b(b10, "type.rawType");
            } else {
                b10 = com.github.salomonbrys.kotson.c.b(type);
            }
            Object l10 = H.l(o10, b10);
            jc.l.b(l10, "fromJson(json, typeToken<T>())");
            return (o4.f) l10;
        } catch (Exception unused) {
            return null;
        }
    }

    public final z1 G() {
        return (z1) this.f16113f.f(this, f16112k[0]);
    }

    public final ja.f H() {
        return (ja.f) this.f16115h.getValue();
    }

    public final f4.d I() {
        return (f4.d) this.f16114g.getValue();
    }

    public final o4.f J() {
        return (o4.f) this.f16117j.getValue();
    }

    public final void K(z1 z1Var) {
        jc.l.f(z1Var, "<set-?>");
        this.f16113f.a(this, f16112k[0], z1Var);
    }

    public final void L() {
        a aVar = this.f16116i;
        if (aVar == null) {
            return;
        }
        int currentItem = G().f8873b.getCurrentItem();
        M();
        androidx.fragment.app.e activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
        G().f8873b.setAdapter(aVar);
        G().f8873b.setCurrentItem(currentItem);
    }

    public final void M() {
        q4.a aVar;
        f4.d I = I();
        if (I().H()) {
            aVar = q4.a.GRID;
        } else {
            aVar = q4.a.LIST;
        }
        I.c0(aVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        jc.l.f(menu, "menu");
        jc.l.f(menuInflater, "inflater");
        MenuItem findItem = menu.findItem(R.id.action_display_mode);
        if (findItem == null) {
            return;
        }
        findItem.setIcon(I().H() ? R.drawable.ic_view_module_white_24dp : R.drawable.ic_list_grey_600_24dp);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        z1 c10 = z1.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        K(c10);
        return G().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f16116i = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_display_mode) {
            L();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        j4.d c10;
        TabLayout tabLayout;
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        if (J() != null) {
            ViewPager viewPager = G().f8873b;
            jc.l.e(viewPager, "binding.pager");
            viewPager.setVisibility(0);
            o4.f J = J();
            jc.l.c(J);
            this.f16116i = new a(this, J);
            G().f8873b.setAdapter(this.f16116i);
            G().f8873b.setCurrentItem(1);
            G().f8873b.setOffscreenPageLimit(3);
            androidx.fragment.app.e activity = getActivity();
            MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
            if (mainActivity == null || (c10 = mainActivity.c()) == null || (tabLayout = c10.f8226d) == null) {
                return;
            }
            tabLayout.setupWithViewPager(G().f8873b);
        }
    }
}
