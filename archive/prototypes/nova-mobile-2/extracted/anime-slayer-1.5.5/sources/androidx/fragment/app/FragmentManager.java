package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.e;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.f;
import androidx.fragment.app.x;
import androidx.fragment.app.y;
import androidx.lifecycle.k;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class FragmentManager {
    public static boolean O = false;
    public static boolean P = true;
    public androidx.activity.result.c<androidx.activity.result.e> A;
    public androidx.activity.result.c<String[]> B;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public ArrayList<androidx.fragment.app.a> I;
    public ArrayList<Boolean> J;
    public ArrayList<Fragment> K;
    public ArrayList<r> L;
    public androidx.fragment.app.q M;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2055b;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList<androidx.fragment.app.a> f2057d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList<Fragment> f2058e;

    /* renamed from: g, reason: collision with root package name */
    public OnBackPressedDispatcher f2060g;

    /* renamed from: l, reason: collision with root package name */
    public ArrayList<o> f2065l;

    /* renamed from: r, reason: collision with root package name */
    public androidx.fragment.app.j<?> f2071r;

    /* renamed from: s, reason: collision with root package name */
    public androidx.fragment.app.g f2072s;

    /* renamed from: t, reason: collision with root package name */
    public Fragment f2073t;

    /* renamed from: u, reason: collision with root package name */
    public Fragment f2074u;

    /* renamed from: z, reason: collision with root package name */
    public androidx.activity.result.c<Intent> f2079z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList<p> f2054a = new ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public final w f2056c = new w();

    /* renamed from: f, reason: collision with root package name */
    public final androidx.fragment.app.m f2059f = new androidx.fragment.app.m(this);

    /* renamed from: h, reason: collision with root package name */
    public final androidx.activity.b f2061h = new c(false);

    /* renamed from: i, reason: collision with root package name */
    public final AtomicInteger f2062i = new AtomicInteger();

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, Bundle> f2063j = Collections.synchronizedMap(new HashMap());

    /* renamed from: k, reason: collision with root package name */
    public final Map<String, n> f2064k = Collections.synchronizedMap(new HashMap());

    /* renamed from: m, reason: collision with root package name */
    public Map<Fragment, HashSet<m0.c>> f2066m = Collections.synchronizedMap(new HashMap());

    /* renamed from: n, reason: collision with root package name */
    public final y.g f2067n = new d();

    /* renamed from: o, reason: collision with root package name */
    public final androidx.fragment.app.n f2068o = new androidx.fragment.app.n(this);

    /* renamed from: p, reason: collision with root package name */
    public final CopyOnWriteArrayList<androidx.fragment.app.r> f2069p = new CopyOnWriteArrayList<>();

    /* renamed from: q, reason: collision with root package name */
    public int f2070q = -1;

    /* renamed from: v, reason: collision with root package name */
    public androidx.fragment.app.i f2075v = null;

    /* renamed from: w, reason: collision with root package name */
    public androidx.fragment.app.i f2076w = new e();

    /* renamed from: x, reason: collision with root package name */
    public f0 f2077x = null;

    /* renamed from: y, reason: collision with root package name */
    public f0 f2078y = new f();
    public ArrayDeque<m> C = new ArrayDeque<>();
    public Runnable N = new g();

    /* loaded from: classes.dex */
    public class a implements androidx.activity.result.b<androidx.activity.result.a> {
        public a() {
        }

        @Override // androidx.activity.result.b
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.activity.result.a aVar) {
            m pollFirst = FragmentManager.this.C.pollFirst();
            if (pollFirst == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("No IntentSenders were started for ");
                sb2.append(this);
                return;
            }
            String str = pollFirst.f2098f;
            int i10 = pollFirst.f2099g;
            Fragment i11 = FragmentManager.this.f2056c.i(str);
            if (i11 == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Intent Sender result delivered for unknown Fragment ");
                sb3.append(str);
                return;
            }
            i11.onActivityResult(i10, aVar.c(), aVar.a());
        }
    }

    /* loaded from: classes.dex */
    public class b implements androidx.activity.result.b<Map<String, Boolean>> {
        public b() {
        }

        @Override // androidx.activity.result.b
        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Map<String, Boolean> map) {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                iArr[i10] = ((Boolean) arrayList.get(i10)).booleanValue() ? 0 : -1;
            }
            m pollFirst = FragmentManager.this.C.pollFirst();
            if (pollFirst == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("No permissions were requested for ");
                sb2.append(this);
                return;
            }
            String str = pollFirst.f2098f;
            int i11 = pollFirst.f2099g;
            Fragment i12 = FragmentManager.this.f2056c.i(str);
            if (i12 == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Permission request result delivered for unknown Fragment ");
                sb3.append(str);
                return;
            }
            i12.onRequestPermissionsResult(i11, strArr, iArr);
        }
    }

    /* loaded from: classes.dex */
    public class c extends androidx.activity.b {
        public c(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.b
        public void b() {
            FragmentManager.this.C0();
        }
    }

    /* loaded from: classes.dex */
    public class d implements y.g {
        public d() {
        }

        @Override // androidx.fragment.app.y.g
        public void a(Fragment fragment, m0.c cVar) {
            FragmentManager.this.f(fragment, cVar);
        }

        @Override // androidx.fragment.app.y.g
        public void b(Fragment fragment, m0.c cVar) {
            if (cVar.b()) {
                return;
            }
            FragmentManager.this.d1(fragment, cVar);
        }
    }

    /* loaded from: classes.dex */
    public class e extends androidx.fragment.app.i {
        public e() {
        }

        @Override // androidx.fragment.app.i
        public Fragment a(ClassLoader classLoader, String str) {
            return FragmentManager.this.u0().b(FragmentManager.this.u0().f(), str, null);
        }
    }

    /* loaded from: classes.dex */
    public class f implements f0 {
        public f() {
        }

        @Override // androidx.fragment.app.f0
        public e0 a(ViewGroup viewGroup) {
            return new androidx.fragment.app.c(viewGroup);
        }
    }

    /* loaded from: classes.dex */
    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.b0(true);
        }
    }

    /* loaded from: classes.dex */
    public class h extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f2091a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f2092b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Fragment f2093c;

        public h(ViewGroup viewGroup, View view, Fragment fragment) {
            this.f2091a = viewGroup;
            this.f2092b = view;
            this.f2093c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2091a.endViewTransition(this.f2092b);
            animator.removeListener(this);
            Fragment fragment = this.f2093c;
            View view = fragment.mView;
            if (view == null || !fragment.mHidden) {
                return;
            }
            view.setVisibility(8);
        }
    }

    /* loaded from: classes.dex */
    public class i implements androidx.fragment.app.r {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f2095f;

        public i(Fragment fragment) {
            this.f2095f = fragment;
        }

        @Override // androidx.fragment.app.r
        public void a(FragmentManager fragmentManager, Fragment fragment) {
            this.f2095f.onAttachFragment(fragment);
        }
    }

    /* loaded from: classes.dex */
    public class j implements androidx.activity.result.b<androidx.activity.result.a> {
        public j() {
        }

        @Override // androidx.activity.result.b
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.activity.result.a aVar) {
            m pollFirst = FragmentManager.this.C.pollFirst();
            if (pollFirst == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("No Activities were started for result for ");
                sb2.append(this);
                return;
            }
            String str = pollFirst.f2098f;
            int i10 = pollFirst.f2099g;
            Fragment i11 = FragmentManager.this.f2056c.i(str);
            if (i11 == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Activity result delivered for unknown Fragment ");
                sb3.append(str);
                return;
            }
            i11.onActivityResult(i10, aVar.c(), aVar.a());
        }
    }

    /* loaded from: classes.dex */
    public static class k extends c.a<androidx.activity.result.e, androidx.activity.result.a> {
        @Override // c.a
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Intent a(Context context, androidx.activity.result.e eVar) {
            Bundle bundleExtra;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent a10 = eVar.a();
            if (a10 != null && (bundleExtra = a10.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                a10.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (a10.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    eVar = new e.b(eVar.f()).b(null).c(eVar.e(), eVar.c()).a();
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", eVar);
            if (FragmentManager.G0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("CreateIntent created the following intent: ");
                sb2.append(intent);
            }
            return intent;
        }

        @Override // c.a
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public androidx.activity.result.a c(int i10, Intent intent) {
            return new androidx.activity.result.a(i10, intent);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class l {
    }

    /* loaded from: classes.dex */
    public static class n implements s {

        /* renamed from: a, reason: collision with root package name */
        public final androidx.lifecycle.k f2100a;

        /* renamed from: b, reason: collision with root package name */
        public final s f2101b;

        /* renamed from: c, reason: collision with root package name */
        public final androidx.lifecycle.n f2102c;

        public n(androidx.lifecycle.k kVar, s sVar, androidx.lifecycle.n nVar) {
            this.f2100a = kVar;
            this.f2101b = sVar;
            this.f2102c = nVar;
        }

        @Override // androidx.fragment.app.s
        public void a(String str, Bundle bundle) {
            this.f2101b.a(str, bundle);
        }

        public boolean b(k.c cVar) {
            return this.f2100a.b().a(cVar);
        }

        public void c() {
            this.f2100a.c(this.f2102c);
        }
    }

    /* loaded from: classes.dex */
    public interface o {
        void a();
    }

    /* loaded from: classes.dex */
    public interface p {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* loaded from: classes.dex */
    public class q implements p {

        /* renamed from: a, reason: collision with root package name */
        public final String f2103a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2104b;

        /* renamed from: c, reason: collision with root package name */
        public final int f2105c;

        public q(String str, int i10, int i11) {
            this.f2103a = str;
            this.f2104b = i10;
            this.f2105c = i11;
        }

        @Override // androidx.fragment.app.FragmentManager.p
        public boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = FragmentManager.this.f2074u;
            if (fragment == null || this.f2104b >= 0 || this.f2103a != null || !fragment.getChildFragmentManager().Y0()) {
                return FragmentManager.this.a1(arrayList, arrayList2, this.f2103a, this.f2104b, this.f2105c);
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class r implements Fragment.k {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f2107a;

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.a f2108b;

        /* renamed from: c, reason: collision with root package name */
        public int f2109c;

        public r(androidx.fragment.app.a aVar, boolean z10) {
            this.f2107a = z10;
            this.f2108b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.k
        public void a() {
            int i10 = this.f2109c - 1;
            this.f2109c = i10;
            if (i10 != 0) {
                return;
            }
            this.f2108b.f2110t.m1();
        }

        @Override // androidx.fragment.app.Fragment.k
        public void b() {
            this.f2109c++;
        }

        public void c() {
            androidx.fragment.app.a aVar = this.f2108b;
            aVar.f2110t.u(aVar, this.f2107a, false, false);
        }

        public void d() {
            boolean z10 = this.f2109c > 0;
            for (Fragment fragment : this.f2108b.f2110t.t0()) {
                fragment.setOnStartEnterTransitionListener(null);
                if (z10 && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            androidx.fragment.app.a aVar = this.f2108b;
            aVar.f2110t.u(aVar, this.f2107a, !z10, true);
        }

        public boolean e() {
            return this.f2109c == 0;
        }
    }

    public static Fragment A0(View view) {
        Object tag = view.getTag(c1.b.f3634a);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    public static boolean G0(int i10) {
        return O || Log.isLoggable("FragmentManager", i10);
    }

    public static void d0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i10, int i11) {
        while (i10 < i11) {
            androidx.fragment.app.a aVar = arrayList.get(i10);
            if (arrayList2.get(i10).booleanValue()) {
                aVar.v(-1);
                aVar.A(i10 == i11 + (-1));
            } else {
                aVar.v(1);
                aVar.z();
            }
            i10++;
        }
    }

    public static int j1(int i10) {
        if (i10 == 4097) {
            return 8194;
        }
        if (i10 != 4099) {
            return i10 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    public void A() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(0);
    }

    public void B(Configuration configuration) {
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public m0 B0(Fragment fragment) {
        return this.M.g(fragment);
    }

    public boolean C(MenuItem menuItem) {
        if (this.f2070q < 1) {
            return false;
        }
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void C0() {
        b0(true);
        if (this.f2061h.c()) {
            Y0();
        } else {
            this.f2060g.c();
        }
    }

    public void D() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(1);
    }

    public void D0(Fragment fragment) {
        if (G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("hide: ");
            sb2.append(fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        s1(fragment);
    }

    public boolean E(Menu menu, MenuInflater menuInflater) {
        if (this.f2070q < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z10 = false;
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null && I0(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z10 = true;
            }
        }
        if (this.f2058e != null) {
            for (int i10 = 0; i10 < this.f2058e.size(); i10++) {
                Fragment fragment2 = this.f2058e.get(i10);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f2058e = arrayList;
        return z10;
    }

    public void E0(Fragment fragment) {
        if (fragment.mAdded && H0(fragment)) {
            this.D = true;
        }
    }

    public void F() {
        this.G = true;
        b0(true);
        Y();
        T(-1);
        this.f2071r = null;
        this.f2072s = null;
        this.f2073t = null;
        if (this.f2060g != null) {
            this.f2061h.d();
            this.f2060g = null;
        }
        androidx.activity.result.c<Intent> cVar = this.f2079z;
        if (cVar != null) {
            cVar.c();
            this.A.c();
            this.B.c();
        }
    }

    public boolean F0() {
        return this.G;
    }

    public void G() {
        T(1);
    }

    public void H() {
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    public final boolean H0(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.o();
    }

    public void I(boolean z10) {
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z10);
            }
        }
    }

    public boolean I0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    public void J(Fragment fragment) {
        Iterator<androidx.fragment.app.r> it2 = this.f2069p.iterator();
        while (it2.hasNext()) {
            it2.next().a(this, fragment);
        }
    }

    public boolean J0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.y0()) && J0(fragmentManager.f2073t);
    }

    public boolean K(MenuItem menuItem) {
        if (this.f2070q < 1) {
            return false;
        }
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean K0(int i10) {
        return this.f2070q >= i10;
    }

    public void L(Menu menu) {
        if (this.f2070q < 1) {
            return;
        }
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public boolean L0() {
        return this.E || this.F;
    }

    public final void M(Fragment fragment) {
        if (fragment == null || !fragment.equals(g0(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    public void M0(Fragment fragment, String[] strArr, int i10) {
        if (this.B != null) {
            this.C.addLast(new m(fragment.mWho, i10));
            this.B.a(strArr);
            return;
        }
        this.f2071r.k(fragment, strArr, i10);
    }

    public void N() {
        T(5);
    }

    public void N0(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10, Bundle bundle) {
        if (this.f2079z != null) {
            this.C.addLast(new m(fragment.mWho, i10));
            if (intent != null && bundle != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            }
            this.f2079z.a(intent);
            return;
        }
        this.f2071r.n(fragment, intent, i10, bundle);
    }

    public void O(boolean z10) {
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z10);
            }
        }
    }

    public void O0(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        Intent intent2;
        if (this.A != null) {
            if (bundle != null) {
                if (intent == null) {
                    intent2 = new Intent();
                    intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
                } else {
                    intent2 = intent;
                }
                if (G0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("ActivityOptions ");
                    sb2.append(bundle);
                    sb2.append(" were added to fillInIntent ");
                    sb2.append(intent2);
                    sb2.append(" for fragment ");
                    sb2.append(fragment);
                }
                intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            } else {
                intent2 = intent;
            }
            androidx.activity.result.e a10 = new e.b(intentSender).b(intent2).c(i12, i11).a();
            this.C.addLast(new m(fragment.mWho, i10));
            if (G0(2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Fragment ");
                sb3.append(fragment);
                sb3.append("is launching an IntentSender for result ");
            }
            this.A.a(a10);
            return;
        }
        this.f2071r.o(fragment, intentSender, i10, intent, i11, i12, i13, bundle);
    }

    public boolean P(Menu menu) {
        boolean z10 = false;
        if (this.f2070q < 1) {
            return false;
        }
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null && I0(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z10 = true;
            }
        }
        return z10;
    }

    public final void P0(s.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            Fragment h10 = bVar.h(i10);
            if (!h10.mAdded) {
                View requireView = h10.requireView();
                h10.mPostponedAlpha = requireView.getAlpha();
                requireView.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
        }
    }

    public void Q() {
        w1();
        M(this.f2074u);
    }

    public void Q0(Fragment fragment) {
        if (!this.f2056c.c(fragment.mWho)) {
            if (G0(3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Ignoring moving ");
                sb2.append(fragment);
                sb2.append(" to state ");
                sb2.append(this.f2070q);
                sb2.append("since it is not added to ");
                sb2.append(this);
                return;
            }
            return;
        }
        S0(fragment);
        View view = fragment.mView;
        if (view != null && fragment.mIsNewlyAdded && fragment.mContainer != null) {
            float f10 = fragment.mPostponedAlpha;
            if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                view.setAlpha(f10);
            }
            fragment.mPostponedAlpha = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            fragment.mIsNewlyAdded = false;
            f.d c10 = androidx.fragment.app.f.c(this.f2071r.f(), fragment, true, fragment.getPopDirection());
            if (c10 != null) {
                Animation animation = c10.f2237a;
                if (animation != null) {
                    fragment.mView.startAnimation(animation);
                } else {
                    c10.f2238b.setTarget(fragment.mView);
                    c10.f2238b.start();
                }
            }
        }
        if (fragment.mHiddenChanged) {
            v(fragment);
        }
    }

    public void R() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(7);
    }

    public void R0(int i10, boolean z10) {
        androidx.fragment.app.j<?> jVar;
        if (this.f2071r == null && i10 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z10 || i10 != this.f2070q) {
            this.f2070q = i10;
            if (P) {
                this.f2056c.r();
            } else {
                Iterator<Fragment> it2 = this.f2056c.n().iterator();
                while (it2.hasNext()) {
                    Q0(it2.next());
                }
                for (u uVar : this.f2056c.k()) {
                    Fragment k10 = uVar.k();
                    if (!k10.mIsNewlyAdded) {
                        Q0(k10);
                    }
                    if (k10.mRemoving && !k10.isInBackStack()) {
                        this.f2056c.q(uVar);
                    }
                }
            }
            u1();
            if (this.D && (jVar = this.f2071r) != null && this.f2070q == 7) {
                jVar.p();
                this.D = false;
            }
        }
    }

    public void S() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(5);
    }

    public void S0(Fragment fragment) {
        T0(fragment, this.f2070q);
    }

    public final void T(int i10) {
        try {
            this.f2055b = true;
            this.f2056c.d(i10);
            R0(i10, false);
            if (P) {
                Iterator<e0> it2 = s().iterator();
                while (it2.hasNext()) {
                    it2.next().j();
                }
            }
            this.f2055b = false;
            b0(true);
        } catch (Throwable th) {
            this.f2055b = false;
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
    
        if (r2 != 5) goto L101;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void T0(Fragment fragment, int i10) {
        ViewGroup viewGroup;
        u m10 = this.f2056c.m(fragment.mWho);
        int i11 = 1;
        if (m10 == null) {
            m10 = new u(this.f2068o, this.f2056c, fragment);
            m10.u(1);
        }
        if (fragment.mFromLayout && fragment.mInLayout && fragment.mState == 2) {
            i10 = Math.max(i10, 2);
        }
        int min = Math.min(i10, m10.d());
        int i12 = fragment.mState;
        if (i12 <= min) {
            if (i12 < min && !this.f2066m.isEmpty()) {
                n(fragment);
            }
            int i13 = fragment.mState;
            if (i13 != -1) {
                if (i13 != 0) {
                    if (i13 != 1) {
                        if (i13 != 2) {
                            if (i13 != 4) {
                            }
                            if (min > 4) {
                                m10.v();
                            }
                            if (min > 5) {
                                m10.p();
                            }
                        }
                        if (min > 2) {
                            m10.a();
                        }
                        if (min > 4) {
                        }
                        if (min > 5) {
                        }
                    }
                    if (min > -1) {
                        m10.j();
                    }
                    if (min > 1) {
                        m10.f();
                    }
                    if (min > 2) {
                    }
                    if (min > 4) {
                    }
                    if (min > 5) {
                    }
                }
            } else if (min > -1) {
                m10.c();
            }
            if (min > 0) {
                m10.e();
            }
            if (min > -1) {
            }
            if (min > 1) {
            }
            if (min > 2) {
            }
            if (min > 4) {
            }
            if (min > 5) {
            }
        } else if (i12 > min) {
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 4) {
                            if (i12 != 5) {
                                if (i12 == 7) {
                                    if (min < 7) {
                                        m10.n();
                                    }
                                }
                            }
                            if (min < 5) {
                                m10.w();
                            }
                        }
                        if (min < 4) {
                            if (G0(3)) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("movefrom ACTIVITY_CREATED: ");
                                sb2.append(fragment);
                            }
                            if (fragment.mView != null && this.f2071r.l(fragment) && fragment.mSavedViewState == null) {
                                m10.t();
                            }
                        }
                    }
                    if (min < 2) {
                        f.d dVar = null;
                        View view = fragment.mView;
                        if (view != null && (viewGroup = fragment.mContainer) != null) {
                            viewGroup.endViewTransition(view);
                            fragment.mView.clearAnimation();
                            if (!fragment.isRemovingParent()) {
                                if (this.f2070q > -1 && !this.G && fragment.mView.getVisibility() == 0 && fragment.mPostponedAlpha >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                    dVar = androidx.fragment.app.f.c(this.f2071r.f(), fragment, false, fragment.getPopDirection());
                                }
                                fragment.mPostponedAlpha = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                ViewGroup viewGroup2 = fragment.mContainer;
                                View view2 = fragment.mView;
                                if (dVar != null) {
                                    androidx.fragment.app.f.a(fragment, dVar, this.f2067n);
                                }
                                viewGroup2.removeView(view2);
                                if (G0(2)) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("Removing view ");
                                    sb3.append(view2);
                                    sb3.append(" for fragment ");
                                    sb3.append(fragment);
                                    sb3.append(" from container ");
                                    sb3.append(viewGroup2);
                                }
                                if (viewGroup2 != fragment.mContainer) {
                                    return;
                                }
                            }
                        }
                        if (this.f2066m.get(fragment) == null) {
                            m10.h();
                        }
                    }
                }
                if (min < 1) {
                    if (this.f2066m.get(fragment) == null) {
                        m10.g();
                    }
                    if (i11 < 0) {
                        m10.i();
                    }
                    min = i11;
                }
            }
            i11 = min;
            if (i11 < 0) {
            }
            min = i11;
        }
        if (fragment.mState != min) {
            if (G0(3)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("moveToState: Fragment state for ");
                sb4.append(fragment);
                sb4.append(" not updated inline; expected state ");
                sb4.append(min);
                sb4.append(" found ");
                sb4.append(fragment.mState);
            }
            fragment.mState = min;
        }
    }

    public void U() {
        this.F = true;
        this.M.j(true);
        T(4);
    }

    public void U0() {
        if (this.f2071r == null) {
            return;
        }
        this.E = false;
        this.F = false;
        this.M.j(false);
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public void V() {
        T(2);
    }

    public void V0(FragmentContainerView fragmentContainerView) {
        View view;
        for (u uVar : this.f2056c.k()) {
            Fragment k10 = uVar.k();
            if (k10.mContainerId == fragmentContainerView.getId() && (view = k10.mView) != null && view.getParent() == null) {
                k10.mContainer = fragmentContainerView;
                uVar.b();
            }
        }
    }

    public final void W() {
        if (this.H) {
            this.H = false;
            u1();
        }
    }

    public void W0(u uVar) {
        Fragment k10 = uVar.k();
        if (k10.mDeferStart) {
            if (this.f2055b) {
                this.H = true;
                return;
            }
            k10.mDeferStart = false;
            if (P) {
                uVar.m();
            } else {
                S0(k10);
            }
        }
    }

    public void X(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f2056c.e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f2058e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i10 = 0; i10 < size2; i10++) {
                Fragment fragment = this.f2058e.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<androidx.fragment.app.a> arrayList2 = this.f2057d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i11 = 0; i11 < size; i11++) {
                androidx.fragment.app.a aVar = this.f2057d.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.x(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f2062i.get());
        synchronized (this.f2054a) {
            int size3 = this.f2054a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i12 = 0; i12 < size3; i12++) {
                    p pVar = this.f2054a.get(i12);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i12);
                    printWriter.print(": ");
                    printWriter.println(pVar);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f2071r);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f2072s);
        if (this.f2073t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f2073t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f2070q);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.E);
        printWriter.print(" mStopped=");
        printWriter.print(this.F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.G);
        if (this.D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.D);
        }
    }

    public void X0(int i10, int i11) {
        if (i10 >= 0) {
            Z(new q(null, i10, i11), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i10);
    }

    public final void Y() {
        if (P) {
            Iterator<e0> it2 = s().iterator();
            while (it2.hasNext()) {
                it2.next().j();
            }
        } else {
            if (this.f2066m.isEmpty()) {
                return;
            }
            for (Fragment fragment : this.f2066m.keySet()) {
                n(fragment);
                S0(fragment);
            }
        }
    }

    public boolean Y0() {
        return Z0(null, -1, 0);
    }

    public void Z(p pVar, boolean z10) {
        if (!z10) {
            if (this.f2071r == null) {
                if (this.G) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            p();
        }
        synchronized (this.f2054a) {
            if (this.f2071r == null) {
                if (!z10) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.f2054a.add(pVar);
                m1();
            }
        }
    }

    public final boolean Z0(String str, int i10, int i11) {
        b0(false);
        a0(true);
        Fragment fragment = this.f2074u;
        if (fragment != null && i10 < 0 && str == null && fragment.getChildFragmentManager().Y0()) {
            return true;
        }
        boolean a12 = a1(this.I, this.J, str, i10, i11);
        if (a12) {
            this.f2055b = true;
            try {
                f1(this.I, this.J);
            } finally {
                q();
            }
        }
        w1();
        W();
        this.f2056c.b();
        return a12;
    }

    public final void a0(boolean z10) {
        if (!this.f2055b) {
            if (this.f2071r == null) {
                if (this.G) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            if (Looper.myLooper() == this.f2071r.g().getLooper()) {
                if (!z10) {
                    p();
                }
                if (this.I == null) {
                    this.I = new ArrayList<>();
                    this.J = new ArrayList<>();
                }
                this.f2055b = true;
                try {
                    f0(null, null);
                    return;
                } finally {
                    this.f2055b = false;
                }
            }
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    public boolean a1(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i10, int i11) {
        int i12;
        ArrayList<androidx.fragment.app.a> arrayList3 = this.f2057d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i10 < 0 && (i11 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f2057d.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            if (str != null || i10 >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    androidx.fragment.app.a aVar = this.f2057d.get(size2);
                    if ((str != null && str.equals(aVar.C())) || (i10 >= 0 && i10 == aVar.f2112v)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i11 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        androidx.fragment.app.a aVar2 = this.f2057d.get(size2);
                        if (str == null || !str.equals(aVar2.C())) {
                            if (i10 < 0 || i10 != aVar2.f2112v) {
                                break;
                            }
                        }
                    }
                }
                i12 = size2;
            } else {
                i12 = -1;
            }
            if (i12 == this.f2057d.size() - 1) {
                return false;
            }
            for (int size3 = this.f2057d.size() - 1; size3 > i12; size3--) {
                arrayList.add(this.f2057d.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    public boolean b0(boolean z10) {
        a0(z10);
        boolean z11 = false;
        while (l0(this.I, this.J)) {
            this.f2055b = true;
            try {
                f1(this.I, this.J);
                q();
                z11 = true;
            } catch (Throwable th) {
                q();
                throw th;
            }
        }
        w1();
        W();
        this.f2056c.b();
        return z11;
    }

    public final int b1(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i10, int i11, s.b<Fragment> bVar) {
        int i12 = i11;
        for (int i13 = i11 - 1; i13 >= i10; i13--) {
            androidx.fragment.app.a aVar = arrayList.get(i13);
            boolean booleanValue = arrayList2.get(i13).booleanValue();
            if (aVar.G() && !aVar.E(arrayList, i13 + 1, i11)) {
                if (this.L == null) {
                    this.L = new ArrayList<>();
                }
                r rVar = new r(aVar, booleanValue);
                this.L.add(rVar);
                aVar.I(rVar);
                if (booleanValue) {
                    aVar.z();
                } else {
                    aVar.A(false);
                }
                i12--;
                if (i13 != i12) {
                    arrayList.remove(i13);
                    arrayList.add(i12, aVar);
                }
                d(bVar);
            }
        }
        return i12;
    }

    public void c0(p pVar, boolean z10) {
        if (z10 && (this.f2071r == null || this.G)) {
            return;
        }
        a0(z10);
        if (pVar.a(this.I, this.J)) {
            this.f2055b = true;
            try {
                f1(this.I, this.J);
            } finally {
                q();
            }
        }
        w1();
        W();
        this.f2056c.b();
    }

    public void c1(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            v1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.mWho);
    }

    public final void d(s.b<Fragment> bVar) {
        int i10 = this.f2070q;
        if (i10 < 1) {
            return;
        }
        int min = Math.min(i10, 5);
        for (Fragment fragment : this.f2056c.n()) {
            if (fragment.mState < min) {
                T0(fragment, min);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    bVar.add(fragment);
                }
            }
        }
    }

    public void d1(Fragment fragment, m0.c cVar) {
        HashSet<m0.c> hashSet = this.f2066m.get(fragment);
        if (hashSet != null && hashSet.remove(cVar) && hashSet.isEmpty()) {
            this.f2066m.remove(fragment);
            if (fragment.mState < 5) {
                x(fragment);
                S0(fragment);
            }
        }
    }

    public void e(androidx.fragment.app.a aVar) {
        if (this.f2057d == null) {
            this.f2057d = new ArrayList<>();
        }
        this.f2057d.add(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:96:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0143  */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i10, int i11) {
        ?? r12;
        boolean z10;
        int i12;
        int i13;
        ArrayList<Boolean> arrayList3;
        int i14;
        int i15;
        ArrayList<Boolean> arrayList4;
        int i16;
        boolean z11;
        int i17;
        boolean z12 = arrayList.get(i10).f2316r;
        ArrayList<Fragment> arrayList5 = this.K;
        if (arrayList5 == null) {
            this.K = new ArrayList<>();
        } else {
            arrayList5.clear();
        }
        this.K.addAll(this.f2056c.n());
        Fragment y02 = y0();
        boolean z13 = false;
        for (int i18 = i10; i18 < i11; i18++) {
            androidx.fragment.app.a aVar = arrayList.get(i18);
            if (!arrayList2.get(i18).booleanValue()) {
                y02 = aVar.B(this.K, y02);
            } else {
                y02 = aVar.J(this.K, y02);
            }
            z13 = z13 || aVar.f2307i;
        }
        this.K.clear();
        if (!z12 && this.f2070q >= 1) {
            if (!P) {
                r12 = 1;
                y.B(this.f2071r.f(), this.f2072s, arrayList, arrayList2, i10, i11, false, this.f2067n);
                d0(arrayList, arrayList2, i10, i11);
                if (P) {
                    if (z12) {
                        s.b bVar = new s.b();
                        d(bVar);
                        i14 = 1;
                        z10 = z12;
                        i12 = i11;
                        i13 = i10;
                        arrayList3 = arrayList2;
                        i15 = b1(arrayList, arrayList2, i10, i11, bVar);
                        P0(bVar);
                    } else {
                        z10 = z12;
                        i12 = i11;
                        i13 = i10;
                        arrayList3 = arrayList2;
                        i14 = 1;
                        i15 = i12;
                    }
                    if (i15 == i13 || !z10) {
                        arrayList4 = arrayList3;
                        i16 = i12;
                    } else {
                        if (this.f2070q >= i14) {
                            arrayList4 = arrayList3;
                            int i19 = i15;
                            i16 = i12;
                            z11 = true;
                            y.B(this.f2071r.f(), this.f2072s, arrayList, arrayList2, i10, i19, true, this.f2067n);
                        } else {
                            arrayList4 = arrayList3;
                            i16 = i12;
                            z11 = true;
                        }
                        R0(this.f2070q, z11);
                    }
                } else {
                    boolean booleanValue = arrayList2.get(i11 - 1).booleanValue();
                    for (int i20 = i10; i20 < i11; i20++) {
                        androidx.fragment.app.a aVar2 = arrayList.get(i20);
                        if (booleanValue) {
                            for (int size = aVar2.f2301c.size() - r12; size >= 0; size--) {
                                Fragment fragment = aVar2.f2301c.get(size).f2319b;
                                if (fragment != null) {
                                    w(fragment).m();
                                }
                            }
                        } else {
                            Iterator<x.a> it2 = aVar2.f2301c.iterator();
                            while (it2.hasNext()) {
                                Fragment fragment2 = it2.next().f2319b;
                                if (fragment2 != null) {
                                    w(fragment2).m();
                                }
                            }
                        }
                    }
                    R0(this.f2070q, r12);
                    for (e0 e0Var : t(arrayList, i10, i11)) {
                        e0Var.r(booleanValue);
                        e0Var.p();
                        e0Var.g();
                    }
                    i16 = i11;
                    arrayList4 = arrayList2;
                }
                for (i17 = i10; i17 < i16; i17++) {
                    androidx.fragment.app.a aVar3 = arrayList.get(i17);
                    if (arrayList4.get(i17).booleanValue() && aVar3.f2112v >= 0) {
                        aVar3.f2112v = -1;
                    }
                    aVar3.H();
                }
                if (z13) {
                    return;
                }
                h1();
                return;
            }
            for (int i21 = i10; i21 < i11; i21++) {
                Iterator<x.a> it3 = arrayList.get(i21).f2301c.iterator();
                while (it3.hasNext()) {
                    Fragment fragment3 = it3.next().f2319b;
                    if (fragment3 != null && fragment3.mFragmentManager != null) {
                        this.f2056c.p(w(fragment3));
                    }
                }
            }
        }
        r12 = 1;
        d0(arrayList, arrayList2, i10, i11);
        if (P) {
        }
        while (i17 < i16) {
        }
        if (z13) {
        }
    }

    public void e1(Fragment fragment) {
        if (G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("remove: ");
            sb2.append(fragment);
            sb2.append(" nesting=");
            sb2.append(fragment.mBackStackNesting);
        }
        boolean z10 = !fragment.isInBackStack();
        if (!fragment.mDetached || z10) {
            this.f2056c.s(fragment);
            if (H0(fragment)) {
                this.D = true;
            }
            fragment.mRemoving = true;
            s1(fragment);
        }
    }

    public void f(Fragment fragment, m0.c cVar) {
        if (this.f2066m.get(fragment) == null) {
            this.f2066m.put(fragment, new HashSet<>());
        }
        this.f2066m.get(fragment).add(cVar);
    }

    public final void f0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        int indexOf;
        int indexOf2;
        ArrayList<r> arrayList3 = this.L;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i10 = 0;
        while (i10 < size) {
            r rVar = this.L.get(i10);
            if (arrayList != null && !rVar.f2107a && (indexOf2 = arrayList.indexOf(rVar.f2108b)) != -1 && arrayList2 != null && arrayList2.get(indexOf2).booleanValue()) {
                this.L.remove(i10);
                i10--;
                size--;
                rVar.c();
            } else if (rVar.e() || (arrayList != null && rVar.f2108b.E(arrayList, 0, arrayList.size()))) {
                this.L.remove(i10);
                i10--;
                size--;
                if (arrayList != null && !rVar.f2107a && (indexOf = arrayList.indexOf(rVar.f2108b)) != -1 && arrayList2 != null && arrayList2.get(indexOf).booleanValue()) {
                    rVar.c();
                } else {
                    rVar.d();
                }
            }
            i10++;
        }
    }

    public final void f1(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() == arrayList2.size()) {
            f0(arrayList, arrayList2);
            int size = arrayList.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                if (!arrayList.get(i10).f2316r) {
                    if (i11 != i10) {
                        e0(arrayList, arrayList2, i11, i10);
                    }
                    i11 = i10 + 1;
                    if (arrayList2.get(i10).booleanValue()) {
                        while (i11 < size && arrayList2.get(i11).booleanValue() && !arrayList.get(i11).f2316r) {
                            i11++;
                        }
                    }
                    e0(arrayList, arrayList2, i10, i11);
                    i10 = i11 - 1;
                }
                i10++;
            }
            if (i11 != size) {
                e0(arrayList, arrayList2, i11, size);
                return;
            }
            return;
        }
        throw new IllegalStateException("Internal error with the back stack records");
    }

    public u g(Fragment fragment) {
        if (G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("add: ");
            sb2.append(fragment);
        }
        u w10 = w(fragment);
        fragment.mFragmentManager = this;
        this.f2056c.p(w10);
        if (!fragment.mDetached) {
            this.f2056c.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (H0(fragment)) {
                this.D = true;
            }
        }
        return w10;
    }

    public Fragment g0(String str) {
        return this.f2056c.f(str);
    }

    public void g1(Fragment fragment) {
        this.M.i(fragment);
    }

    public void h(androidx.fragment.app.r rVar) {
        this.f2069p.add(rVar);
    }

    public Fragment h0(int i10) {
        return this.f2056c.g(i10);
    }

    public final void h1() {
        if (this.f2065l != null) {
            for (int i10 = 0; i10 < this.f2065l.size(); i10++) {
                this.f2065l.get(i10).a();
            }
        }
    }

    public void i(Fragment fragment) {
        this.M.a(fragment);
    }

    public Fragment i0(String str) {
        return this.f2056c.h(str);
    }

    public void i1(Parcelable parcelable) {
        u uVar;
        if (parcelable == null) {
            return;
        }
        androidx.fragment.app.p pVar = (androidx.fragment.app.p) parcelable;
        if (pVar.f2259f == null) {
            return;
        }
        this.f2056c.t();
        Iterator<t> it2 = pVar.f2259f.iterator();
        while (it2.hasNext()) {
            t next = it2.next();
            if (next != null) {
                Fragment c10 = this.M.c(next.f2276g);
                if (c10 != null) {
                    if (G0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("restoreSaveState: re-attaching retained ");
                        sb2.append(c10);
                    }
                    uVar = new u(this.f2068o, this.f2056c, c10, next);
                } else {
                    uVar = new u(this.f2068o, this.f2056c, this.f2071r.f().getClassLoader(), r0(), next);
                }
                Fragment k10 = uVar.k();
                k10.mFragmentManager = this;
                if (G0(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("restoreSaveState: active (");
                    sb3.append(k10.mWho);
                    sb3.append("): ");
                    sb3.append(k10);
                }
                uVar.o(this.f2071r.f().getClassLoader());
                this.f2056c.p(uVar);
                uVar.u(this.f2070q);
            }
        }
        for (Fragment fragment : this.M.f()) {
            if (!this.f2056c.c(fragment.mWho)) {
                if (G0(2)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Discarding retained Fragment ");
                    sb4.append(fragment);
                    sb4.append(" that was not found in the set of active Fragments ");
                    sb4.append(pVar.f2259f);
                }
                this.M.i(fragment);
                fragment.mFragmentManager = this;
                u uVar2 = new u(this.f2068o, this.f2056c, fragment);
                uVar2.u(1);
                uVar2.m();
                fragment.mRemoving = true;
                uVar2.m();
            }
        }
        this.f2056c.u(pVar.f2260g);
        if (pVar.f2261h != null) {
            this.f2057d = new ArrayList<>(pVar.f2261h.length);
            int i10 = 0;
            while (true) {
                androidx.fragment.app.b[] bVarArr = pVar.f2261h;
                if (i10 >= bVarArr.length) {
                    break;
                }
                androidx.fragment.app.a a10 = bVarArr[i10].a(this);
                if (G0(2)) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("restoreAllState: back stack #");
                    sb5.append(i10);
                    sb5.append(" (index ");
                    sb5.append(a10.f2112v);
                    sb5.append("): ");
                    sb5.append(a10);
                    PrintWriter printWriter = new PrintWriter(new d0("FragmentManager"));
                    a10.y("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2057d.add(a10);
                i10++;
            }
        } else {
            this.f2057d = null;
        }
        this.f2062i.set(pVar.f2262i);
        String str = pVar.f2263j;
        if (str != null) {
            Fragment g02 = g0(str);
            this.f2074u = g02;
            M(g02);
        }
        ArrayList<String> arrayList = pVar.f2264k;
        if (arrayList != null) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                Bundle bundle = pVar.f2265l.get(i11);
                bundle.setClassLoader(this.f2071r.f().getClassLoader());
                this.f2063j.put(arrayList.get(i11), bundle);
            }
        }
        this.C = new ArrayDeque<>(pVar.f2266m);
    }

    public int j() {
        return this.f2062i.getAndIncrement();
    }

    public Fragment j0(String str) {
        return this.f2056c.i(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SyntheticAccessor"})
    public void k(androidx.fragment.app.j<?> jVar, androidx.fragment.app.g gVar, Fragment fragment) {
        String str;
        if (this.f2071r == null) {
            this.f2071r = jVar;
            this.f2072s = gVar;
            this.f2073t = fragment;
            if (fragment != null) {
                h(new i(fragment));
            } else if (jVar instanceof androidx.fragment.app.r) {
                h((androidx.fragment.app.r) jVar);
            }
            if (this.f2073t != null) {
                w1();
            }
            if (jVar instanceof androidx.activity.c) {
                androidx.activity.c cVar = (androidx.activity.c) jVar;
                OnBackPressedDispatcher onBackPressedDispatcher = cVar.getOnBackPressedDispatcher();
                this.f2060g = onBackPressedDispatcher;
                androidx.lifecycle.q qVar = cVar;
                if (fragment != null) {
                    qVar = fragment;
                }
                onBackPressedDispatcher.a(qVar, this.f2061h);
            }
            if (fragment != null) {
                this.M = fragment.mFragmentManager.n0(fragment);
            } else if (jVar instanceof n0) {
                this.M = androidx.fragment.app.q.e(((n0) jVar).getViewModelStore());
            } else {
                this.M = new androidx.fragment.app.q(false);
            }
            this.M.j(L0());
            this.f2056c.x(this.M);
            Object obj = this.f2071r;
            if (obj instanceof androidx.activity.result.d) {
                ActivityResultRegistry activityResultRegistry = ((androidx.activity.result.d) obj).getActivityResultRegistry();
                if (fragment != null) {
                    str = fragment.mWho + ":";
                } else {
                    str = "";
                }
                String str2 = "FragmentManager:" + str;
                this.f2079z = activityResultRegistry.j(str2 + "StartActivityForResult", new c.c(), new j());
                this.A = activityResultRegistry.j(str2 + "StartIntentSenderForResult", new k(), new a());
                this.B = activityResultRegistry.j(str2 + "RequestPermissions", new c.b(), new b());
                return;
            }
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    public final void k0() {
        if (P) {
            Iterator<e0> it2 = s().iterator();
            while (it2.hasNext()) {
                it2.next().k();
            }
        } else if (this.L != null) {
            while (!this.L.isEmpty()) {
                this.L.remove(0).d();
            }
        }
    }

    public Parcelable k1() {
        int size;
        k0();
        Y();
        b0(true);
        this.E = true;
        this.M.j(true);
        ArrayList<t> v10 = this.f2056c.v();
        androidx.fragment.app.b[] bVarArr = null;
        if (v10.isEmpty()) {
            G0(2);
            return null;
        }
        ArrayList<String> w10 = this.f2056c.w();
        ArrayList<androidx.fragment.app.a> arrayList = this.f2057d;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            bVarArr = new androidx.fragment.app.b[size];
            for (int i10 = 0; i10 < size; i10++) {
                bVarArr[i10] = new androidx.fragment.app.b(this.f2057d.get(i10));
                if (G0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("saveAllState: adding back stack #");
                    sb2.append(i10);
                    sb2.append(": ");
                    sb2.append(this.f2057d.get(i10));
                }
            }
        }
        androidx.fragment.app.p pVar = new androidx.fragment.app.p();
        pVar.f2259f = v10;
        pVar.f2260g = w10;
        pVar.f2261h = bVarArr;
        pVar.f2262i = this.f2062i.get();
        Fragment fragment = this.f2074u;
        if (fragment != null) {
            pVar.f2263j = fragment.mWho;
        }
        pVar.f2264k.addAll(this.f2063j.keySet());
        pVar.f2265l.addAll(this.f2063j.values());
        pVar.f2266m = new ArrayList<>(this.C);
        return pVar;
    }

    public void l(Fragment fragment) {
        if (G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("attach: ");
            sb2.append(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f2056c.a(fragment);
            if (G0(2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("add from attach: ");
                sb3.append(fragment);
            }
            if (H0(fragment)) {
                this.D = true;
            }
        }
    }

    public final boolean l0(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.f2054a) {
            if (this.f2054a.isEmpty()) {
                return false;
            }
            int size = this.f2054a.size();
            boolean z10 = false;
            for (int i10 = 0; i10 < size; i10++) {
                z10 |= this.f2054a.get(i10).a(arrayList, arrayList2);
            }
            this.f2054a.clear();
            this.f2071r.g().removeCallbacks(this.N);
            return z10;
        }
    }

    public Fragment.l l1(Fragment fragment) {
        u m10 = this.f2056c.m(fragment.mWho);
        if (m10 == null || !m10.k().equals(fragment)) {
            v1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        return m10.r();
    }

    public x m() {
        return new androidx.fragment.app.a(this);
    }

    public int m0() {
        ArrayList<androidx.fragment.app.a> arrayList = this.f2057d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public void m1() {
        synchronized (this.f2054a) {
            ArrayList<r> arrayList = this.L;
            boolean z10 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            boolean z11 = this.f2054a.size() == 1;
            if (z10 || z11) {
                this.f2071r.g().removeCallbacks(this.N);
                this.f2071r.g().post(this.N);
                w1();
            }
        }
    }

    public final void n(Fragment fragment) {
        HashSet<m0.c> hashSet = this.f2066m.get(fragment);
        if (hashSet != null) {
            Iterator<m0.c> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
            hashSet.clear();
            x(fragment);
            this.f2066m.remove(fragment);
        }
    }

    public final androidx.fragment.app.q n0(Fragment fragment) {
        return this.M.d(fragment);
    }

    public void n1(Fragment fragment, boolean z10) {
        ViewGroup q02 = q0(fragment);
        if (q02 == null || !(q02 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) q02).setDrawDisappearingViewsLast(!z10);
    }

    public boolean o() {
        boolean z10 = false;
        for (Fragment fragment : this.f2056c.l()) {
            if (fragment != null) {
                z10 = H0(fragment);
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    public androidx.fragment.app.g o0() {
        return this.f2072s;
    }

    public final void o1(String str, Bundle bundle) {
        n nVar = this.f2064k.get(str);
        if (nVar != null && nVar.b(k.c.STARTED)) {
            nVar.a(str, bundle);
        } else {
            this.f2063j.put(str, bundle);
        }
    }

    public final void p() {
        if (L0()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    public Fragment p0(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment g02 = g0(string);
        if (g02 == null) {
            v1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return g02;
    }

    @SuppressLint({"SyntheticAccessor"})
    public final void p1(final String str, androidx.lifecycle.q qVar, final s sVar) {
        final androidx.lifecycle.k lifecycle = qVar.getLifecycle();
        if (lifecycle.b() == k.c.DESTROYED) {
            return;
        }
        androidx.lifecycle.n nVar = new androidx.lifecycle.n() { // from class: androidx.fragment.app.FragmentManager.6
            @Override // androidx.lifecycle.n
            public void e(androidx.lifecycle.q qVar2, k.b bVar) {
                Bundle bundle;
                if (bVar == k.b.ON_START && (bundle = (Bundle) FragmentManager.this.f2063j.get(str)) != null) {
                    sVar.a(str, bundle);
                    FragmentManager.this.r(str);
                }
                if (bVar == k.b.ON_DESTROY) {
                    lifecycle.c(this);
                    FragmentManager.this.f2064k.remove(str);
                }
            }
        };
        lifecycle.a(nVar);
        n put = this.f2064k.put(str, new n(lifecycle, sVar, nVar));
        if (put != null) {
            put.c();
        }
    }

    public final void q() {
        this.f2055b = false;
        this.J.clear();
        this.I.clear();
    }

    public final ViewGroup q0(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.f2072s.d()) {
            View c10 = this.f2072s.c(fragment.mContainerId);
            if (c10 instanceof ViewGroup) {
                return (ViewGroup) c10;
            }
        }
        return null;
    }

    public void q1(Fragment fragment, k.c cVar) {
        if (fragment.equals(g0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = cVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void r(String str) {
        this.f2063j.remove(str);
    }

    public androidx.fragment.app.i r0() {
        androidx.fragment.app.i iVar = this.f2075v;
        if (iVar != null) {
            return iVar;
        }
        Fragment fragment = this.f2073t;
        if (fragment != null) {
            return fragment.mFragmentManager.r0();
        }
        return this.f2076w;
    }

    public void r1(Fragment fragment) {
        if (fragment != null && (!fragment.equals(g0(fragment.mWho)) || (fragment.mHost != null && fragment.mFragmentManager != this))) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        Fragment fragment2 = this.f2074u;
        this.f2074u = fragment;
        M(fragment2);
        M(this.f2074u);
    }

    public final Set<e0> s() {
        HashSet hashSet = new HashSet();
        Iterator<u> it2 = this.f2056c.k().iterator();
        while (it2.hasNext()) {
            ViewGroup viewGroup = it2.next().k().mContainer;
            if (viewGroup != null) {
                hashSet.add(e0.o(viewGroup, z0()));
            }
        }
        return hashSet;
    }

    public w s0() {
        return this.f2056c;
    }

    public final void s1(Fragment fragment) {
        ViewGroup q02 = q0(fragment);
        if (q02 == null || fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() <= 0) {
            return;
        }
        int i10 = c1.b.f3636c;
        if (q02.getTag(i10) == null) {
            q02.setTag(i10, fragment);
        }
        ((Fragment) q02.getTag(i10)).setPopDirection(fragment.getPopDirection());
    }

    public final Set<e0> t(ArrayList<androidx.fragment.app.a> arrayList, int i10, int i11) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i10 < i11) {
            Iterator<x.a> it2 = arrayList.get(i10).f2301c.iterator();
            while (it2.hasNext()) {
                Fragment fragment = it2.next().f2319b;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(e0.n(viewGroup, this));
                }
            }
            i10++;
        }
        return hashSet;
    }

    public List<Fragment> t0() {
        return this.f2056c.n();
    }

    public void t1(Fragment fragment) {
        if (G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("show: ");
            sb2.append(fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        Fragment fragment = this.f2073t;
        if (fragment != null) {
            sb2.append(fragment.getClass().getSimpleName());
            sb2.append("{");
            sb2.append(Integer.toHexString(System.identityHashCode(this.f2073t)));
            sb2.append("}");
        } else {
            androidx.fragment.app.j<?> jVar = this.f2071r;
            if (jVar != null) {
                sb2.append(jVar.getClass().getSimpleName());
                sb2.append("{");
                sb2.append(Integer.toHexString(System.identityHashCode(this.f2071r)));
                sb2.append("}");
            } else {
                sb2.append("null");
            }
        }
        sb2.append("}}");
        return sb2.toString();
    }

    public void u(androidx.fragment.app.a aVar, boolean z10, boolean z11, boolean z12) {
        if (z10) {
            aVar.A(z12);
        } else {
            aVar.z();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z10));
        if (z11 && this.f2070q >= 1) {
            y.B(this.f2071r.f(), this.f2072s, arrayList, arrayList2, 0, 1, true, this.f2067n);
        }
        if (z12) {
            R0(this.f2070q, true);
        }
        for (Fragment fragment : this.f2056c.l()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && aVar.D(fragment.mContainerId)) {
                float f10 = fragment.mPostponedAlpha;
                if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    fragment.mView.setAlpha(f10);
                }
                if (z12) {
                    fragment.mPostponedAlpha = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    public androidx.fragment.app.j<?> u0() {
        return this.f2071r;
    }

    public final void u1() {
        Iterator<u> it2 = this.f2056c.k().iterator();
        while (it2.hasNext()) {
            W0(it2.next());
        }
    }

    public final void v(Fragment fragment) {
        Animator animator;
        if (fragment.mView != null) {
            f.d c10 = androidx.fragment.app.f.c(this.f2071r.f(), fragment, !fragment.mHidden, fragment.getPopDirection());
            if (c10 != null && (animator = c10.f2238b) != null) {
                animator.setTarget(fragment.mView);
                if (fragment.mHidden) {
                    if (fragment.isHideReplaced()) {
                        fragment.setHideReplaced(false);
                    } else {
                        ViewGroup viewGroup = fragment.mContainer;
                        View view = fragment.mView;
                        viewGroup.startViewTransition(view);
                        c10.f2238b.addListener(new h(viewGroup, view, fragment));
                    }
                } else {
                    fragment.mView.setVisibility(0);
                }
                c10.f2238b.start();
            } else {
                if (c10 != null) {
                    fragment.mView.startAnimation(c10.f2237a);
                    c10.f2237a.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            }
        }
        E0(fragment);
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    public LayoutInflater.Factory2 v0() {
        return this.f2059f;
    }

    public final void v1(RuntimeException runtimeException) {
        runtimeException.getMessage();
        PrintWriter printWriter = new PrintWriter(new d0("FragmentManager"));
        androidx.fragment.app.j<?> jVar = this.f2071r;
        try {
            if (jVar != null) {
                jVar.h("  ", null, printWriter, new String[0]);
            } else {
                X("  ", null, printWriter, new String[0]);
            }
            throw runtimeException;
        } catch (Exception unused) {
            throw runtimeException;
        }
    }

    public u w(Fragment fragment) {
        u m10 = this.f2056c.m(fragment.mWho);
        if (m10 != null) {
            return m10;
        }
        u uVar = new u(this.f2068o, this.f2056c, fragment);
        uVar.o(this.f2071r.f().getClassLoader());
        uVar.u(this.f2070q);
        return uVar;
    }

    public androidx.fragment.app.n w0() {
        return this.f2068o;
    }

    public final void w1() {
        synchronized (this.f2054a) {
            if (!this.f2054a.isEmpty()) {
                this.f2061h.f(true);
            } else {
                this.f2061h.f(m0() > 0 && J0(this.f2073t));
            }
        }
    }

    public final void x(Fragment fragment) {
        fragment.performDestroyView();
        this.f2068o.n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.o(null);
        fragment.mInLayout = false;
    }

    public Fragment x0() {
        return this.f2073t;
    }

    public void y(Fragment fragment) {
        if (G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("detach: ");
            sb2.append(fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (G0(2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("remove from detach: ");
                sb3.append(fragment);
            }
            this.f2056c.s(fragment);
            if (H0(fragment)) {
                this.D = true;
            }
            s1(fragment);
        }
    }

    public Fragment y0() {
        return this.f2074u;
    }

    public void z() {
        this.E = false;
        this.F = false;
        this.M.j(false);
        T(4);
    }

    public f0 z0() {
        f0 f0Var = this.f2077x;
        if (f0Var != null) {
            return f0Var;
        }
        Fragment fragment = this.f2073t;
        if (fragment != null) {
            return fragment.mFragmentManager.z0();
        }
        return this.f2078y;
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class m implements Parcelable {
        public static final Parcelable.Creator<m> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public String f2098f;

        /* renamed from: g, reason: collision with root package name */
        public int f2099g;

        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<m> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public m createFromParcel(Parcel parcel) {
                return new m(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public m[] newArray(int i10) {
                return new m[i10];
            }
        }

        public m(String str, int i10) {
            this.f2098f = str;
            this.f2099g = i10;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f2098f);
            parcel.writeInt(this.f2099g);
        }

        public m(Parcel parcel) {
            this.f2098f = parcel.readString();
            this.f2099g = parcel.readInt();
        }
    }
}
