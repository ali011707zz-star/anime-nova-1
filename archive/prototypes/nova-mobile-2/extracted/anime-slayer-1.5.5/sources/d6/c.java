package d6;

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
import com.twitter.sdk.android.core.identity.AuthHandler;
import g6.k;
import ic.q;
import j4.w2;
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
import vb.p;
import wb.i;
import wb.m;

/* compiled from: UserListPagerFragment.kt */
/* loaded from: classes.dex */
public final class c extends Fragment {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ g<Object>[] f5671j = {y.e(new o(c.class, "binding", "getBinding()Lcom/anslayer/databinding/UserListPagerFragmentBinding;", 0))};

    /* renamed from: h, reason: collision with root package name */
    public a f5674h;

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f5672f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final e f5673g = f.a(d.f5680f);

    /* renamed from: i, reason: collision with root package name */
    public final e f5675i = f.a(new b());

    /* compiled from: UserListPagerFragment.kt */
    /* loaded from: classes.dex */
    public final class a extends v {

        /* renamed from: a, reason: collision with root package name */
        public final List<String> f5676a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f5677b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, Fragment fragment) {
            super(fragment.getChildFragmentManager(), 1);
            l.f(cVar, "this$0");
            l.f(fragment, "fragment");
            this.f5677b = cVar;
            List l10 = wb.l.l(Integer.valueOf(R.string.watched), Integer.valueOf(R.string.plan_to_watch), Integer.valueOf(R.string.currently_watching), Integer.valueOf(R.string.on_hold), Integer.valueOf(R.string.dropped));
            ArrayList arrayList = new ArrayList(m.q(l10, 10));
            Iterator it2 = l10.iterator();
            while (it2.hasNext()) {
                arrayList.add(fragment.getResources().getString(((Number) it2.next()).intValue()));
            }
            this.f5676a = arrayList;
        }

        @Override // b2.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String getPageTitle(int i10) {
            String str = this.f5676a.get(i10);
            l.e(str, "tabTitles[position]");
            return str;
        }

        @Override // b2.a
        public int getCount() {
            return this.f5676a.size();
        }

        @Override // androidx.fragment.app.v
        public Fragment getItem(int i10) {
            if (i10 == 0) {
                k kVar = new k();
                kVar.setArguments(m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", "watched"), n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(this.f5677b.J().D())), n.a("_order_by", "latest_first")).toString()), n.a("list_type", "watched")));
                return kVar;
            }
            if (i10 == 1) {
                k kVar2 = new k();
                kVar2.setArguments(m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", "plan_to_watch"), n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(this.f5677b.J().D())), n.a("_order_by", "latest_first")).toString()), n.a("list_type", "plan_to_watch")));
                return kVar2;
            }
            if (i10 == 2) {
                k kVar3 = new k();
                kVar3.setArguments(m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", "watching"), n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(this.f5677b.J().D())), n.a("_order_by", "latest_first")).toString()), n.a("list_type", "watching")));
                return kVar3;
            }
            if (i10 != 3) {
                k kVar4 = new k();
                kVar4.setArguments(m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", "dropped"), n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(this.f5677b.J().D())), n.a("_order_by", "latest_first")).toString()), n.a("list_type", "dropped")));
                return kVar4;
            }
            k kVar5 = new k();
            kVar5.setArguments(m0.b.a(n.a("request_param", com.github.salomonbrys.kotson.a.b(n.a("list_type", "on_hold"), n.a(AuthHandler.EXTRA_USER_ID, Long.valueOf(this.f5677b.J().D())), n.a("_order_by", "latest_first")).toString()), n.a("list_type", "on_hold")));
            return kVar5;
        }
    }

    /* compiled from: UserListPagerFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<w4.e> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final w4.e invoke() {
            return c.this.K().N().get();
        }
    }

    /* compiled from: UserListPagerFragment.kt */
    /* renamed from: d6.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0104c extends jc.m implements q<s2.c, Integer, CharSequence, p> {
        public C0104c() {
            super(3);
        }

        public final void a(s2.c cVar, int i10, CharSequence charSequence) {
            l.f(cVar, "$noName_0");
            l.f(charSequence, "$noName_2");
            c.this.K().h0(y3.a.f16424a.d()[i10]);
            if (c.this.f5674h != null) {
                int currentItem = c.this.I().f8789b.getCurrentItem();
                c.this.I().f8789b.setAdapter(c.this.f5674h);
                c.this.I().f8789b.setCurrentItem(currentItem);
            }
        }

        @Override // ic.q
        public /* bridge */ /* synthetic */ p i(s2.c cVar, Integer num, CharSequence charSequence) {
            a(cVar, num.intValue(), charSequence);
            return p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f5680f = new d();

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

    public final w2 I() {
        return (w2) this.f5672f.f(this, f5671j[0]);
    }

    public final w4.e J() {
        return (w4.e) this.f5675i.getValue();
    }

    public final f4.d K() {
        return (f4.d) this.f5673g.getValue();
    }

    public final void L(w2 w2Var) {
        this.f5672f.a(this, f5671j[0], w2Var);
    }

    public final void M() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        String D = K().D();
        if (D == null) {
            D = "latest_first";
        }
        int r10 = i.r(y3.a.f16424a.d(), D);
        s2.c cVar = new s2.c(activity, null, 2, null);
        s2.c.y(cVar, Integer.valueOf(R.string.action_sort), null, 2, null);
        s2.c.v(cVar, Integer.valueOf(R.string.text_ok), null, null, 6, null);
        b3.b.b(cVar, Integer.valueOf(R.array.user_sort), null, null, r10, false, new C0104c(), 22, null);
        cVar.show();
    }

    public final void N() {
        q4.a aVar;
        a aVar2 = this.f5674h;
        if (aVar2 == null) {
            return;
        }
        int currentItem = I().f8789b.getCurrentItem();
        f4.d K = K();
        if (K().H()) {
            aVar = q4.a.GRID;
        } else {
            aVar = q4.a.LIST;
        }
        K.c0(aVar);
        androidx.fragment.app.e activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
        I().f8789b.setAdapter(aVar2);
        I().f8789b.setCurrentItem(currentItem);
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
        menuInflater.inflate(R.menu.user_list, menu);
        MenuItem findItem = menu.findItem(R.id.action_display_mode);
        if (findItem == null) {
            return;
        }
        findItem.setIcon(K().H() ? R.drawable.ic_view_module_white_24dp : R.drawable.ic_list_grey_600_24dp);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.f(layoutInflater, "inflater");
        w2 c10 = w2.c(layoutInflater);
        l.e(c10, "inflate(inflater)");
        L(c10);
        return I().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f5674h = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.f(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_display_mode) {
            N();
        } else if (itemId == R.id.action_sort_toggle) {
            M();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        j4.d c10;
        TabLayout tabLayout;
        l.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f5674h = new a(this, this);
        I().f8789b.setAdapter(this.f5674h);
        I().f8789b.setOffscreenPageLimit(4);
        I().f8789b.setCurrentItem(2);
        androidx.fragment.app.e activity = getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity == null || (c10 = mainActivity.c()) == null || (tabLayout = c10.f8226d) == null) {
            return;
        }
        tabLayout.setupWithViewPager(I().f8789b);
    }
}
