package r6;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.v;
import com.anslayer.R;
import com.anslayer.ui.main.MainActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.google.android.material.tabs.TabLayout;
import f4.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.l;
import jc.o;
import jc.y;
import oc.g;
import vb.e;
import vb.f;
import vb.n;
import wb.m;

/* compiled from: MyAnimeListRankingFragment.kt */
/* loaded from: classes.dex */
public final class b extends Fragment {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ g<Object>[] f12873i = {y.e(new o(b.class, "binding", "getBinding()Lcom/anslayer/databinding/AnimelistRankingFragmentBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f12874f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final e f12875g = f.a(C0319b.f12878f);

    /* renamed from: h, reason: collision with root package name */
    public a f12876h;

    /* compiled from: MyAnimeListRankingFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends v {

        /* renamed from: a, reason: collision with root package name */
        public final List<String> f12877a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Fragment fragment) {
            super(fragment.getChildFragmentManager(), 1);
            l.f(fragment, "fragment");
            List l10 = wb.l.l(Integer.valueOf(R.string.nav_top_anime), Integer.valueOf(R.string.nav_top_currently_airing), Integer.valueOf(R.string.nav_top_series), Integer.valueOf(R.string.nav_top_movies));
            ArrayList arrayList = new ArrayList(m.q(l10, 10));
            Iterator it2 = l10.iterator();
            while (it2.hasNext()) {
                arrayList.add(fragment.getResources().getString(((Number) it2.next()).intValue()));
            }
            this.f12877a = arrayList;
        }

        @Override // b2.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String getPageTitle(int i10) {
            String str = this.f12877a.get(i10);
            l.e(str, "tabTitles[position]");
            return str;
        }

        @Override // b2.a
        public int getCount() {
            return this.f12877a.size();
        }

        @Override // androidx.fragment.app.v
        public Fragment getItem(int i10) {
            if (i10 == 0) {
                g6.f fVar = new g6.f();
                fVar.setArguments(m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", "top_anime_mal"), n.a("_order_by", "latest_first")).toString())));
                return fVar;
            }
            if (i10 == 1) {
                g6.f fVar2 = new g6.f();
                fVar2.setArguments(m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", "top_currently_airing_mal"), n.a("_order_by", "latest_first")).toString())));
                return fVar2;
            }
            if (i10 != 2) {
                g6.f fVar3 = new g6.f();
                fVar3.setArguments(m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", "top_movie_mal"), n.a("_order_by", "latest_first")).toString())));
                return fVar3;
            }
            g6.f fVar4 = new g6.f();
            fVar4.setArguments(m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", "top_tv_mal"), n.a("_order_by", "latest_first")).toString())));
            return fVar4;
        }
    }

    /* compiled from: Injekt.kt */
    /* renamed from: r6.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0319b extends jc.m implements ic.a<d> {

        /* renamed from: f, reason: collision with root package name */
        public static final C0319b f12878f = new C0319b();

        /* compiled from: TypeInfo.kt */
        /* renamed from: r6.b$b$a */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<d> {
        }

        public C0319b() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public final j4.v E() {
        return (j4.v) this.f12874f.f(this, f12873i[0]);
    }

    public final d F() {
        return (d) this.f12875g.getValue();
    }

    public final void G(j4.v vVar) {
        this.f12874f.a(this, f12873i[0], vVar);
    }

    public final void H() {
        q4.a aVar;
        a aVar2 = this.f12876h;
        if (aVar2 == null) {
            return;
        }
        int currentItem = E().f8760b.getCurrentItem();
        d F = F();
        if (F().H()) {
            aVar = q4.a.GRID;
        } else {
            aVar = q4.a.LIST;
        }
        F.c0(aVar);
        androidx.fragment.app.e activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
        E().f8760b.setAdapter(aVar2);
        E().f8760b.setCurrentItem(currentItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        l.f(menu, "menu");
        l.f(menuInflater, "inflater");
        MenuItem findItem = menu.findItem(R.id.action_display_mode);
        if (findItem == null) {
            return;
        }
        findItem.setIcon(F().H() ? R.drawable.ic_view_module_white_24dp : R.drawable.ic_list_grey_600_24dp);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.f(layoutInflater, "inflater");
        j4.v c10 = j4.v.c(layoutInflater);
        l.e(c10, "inflate(inflater)");
        G(c10);
        return E().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f12876h = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_display_mode) {
            H();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        j4.d c10;
        TabLayout tabLayout;
        l.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f12876h = new a(this);
        E().f8760b.setAdapter(this.f12876h);
        E().f8760b.setOffscreenPageLimit(3);
        androidx.fragment.app.e activity = getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity == null || (c10 = mainActivity.c()) == null || (tabLayout = c10.f8226d) == null) {
            return;
        }
        tabLayout.setupWithViewPager(E().f8760b);
    }
}
