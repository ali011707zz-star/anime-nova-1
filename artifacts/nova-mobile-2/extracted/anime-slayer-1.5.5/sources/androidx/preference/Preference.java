package androidx.preference;

import android.R;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.preference.e;
import com.google.android.gms.common.api.Api;
import g0.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import m1.j;
import m1.k;
import m1.l;
import m1.n;
import q0.b0;

/* loaded from: classes.dex */
public class Preference implements Comparable<Preference> {
    public Object A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public int L;
    public int M;
    public c N;
    public List<Preference> O;
    public PreferenceGroup P;
    public boolean Q;
    public boolean R;
    public f S;
    public g T;
    public final View.OnClickListener U;

    /* renamed from: f, reason: collision with root package name */
    public Context f2575f;

    /* renamed from: g, reason: collision with root package name */
    public androidx.preference.e f2576g;

    /* renamed from: h, reason: collision with root package name */
    public long f2577h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2578i;

    /* renamed from: j, reason: collision with root package name */
    public d f2579j;

    /* renamed from: k, reason: collision with root package name */
    public e f2580k;

    /* renamed from: l, reason: collision with root package name */
    public int f2581l;

    /* renamed from: m, reason: collision with root package name */
    public int f2582m;

    /* renamed from: n, reason: collision with root package name */
    public CharSequence f2583n;

    /* renamed from: o, reason: collision with root package name */
    public CharSequence f2584o;

    /* renamed from: p, reason: collision with root package name */
    public int f2585p;

    /* renamed from: q, reason: collision with root package name */
    public Drawable f2586q;

    /* renamed from: r, reason: collision with root package name */
    public String f2587r;

    /* renamed from: s, reason: collision with root package name */
    public Intent f2588s;

    /* renamed from: t, reason: collision with root package name */
    public String f2589t;

    /* renamed from: u, reason: collision with root package name */
    public Bundle f2590u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f2591v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f2592w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f2593x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f2594y;

    /* renamed from: z, reason: collision with root package name */
    public String f2595z;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Preference.this.b0(view);
        }
    }

    /* loaded from: classes.dex */
    public static class b extends AbsSavedState {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(Parcel parcel) {
            super(parcel);
        }

        public b(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(Preference preference);

        void b(Preference preference);

        void c(Preference preference);
    }

    /* loaded from: classes.dex */
    public interface d {
        boolean a(Preference preference, Object obj);
    }

    /* loaded from: classes.dex */
    public interface e {
        boolean a(Preference preference);
    }

    /* loaded from: classes.dex */
    public static class f implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {

        /* renamed from: f, reason: collision with root package name */
        public final Preference f2597f;

        public f(Preference preference) {
            this.f2597f = preference;
        }

        @Override // android.view.View.OnCreateContextMenuListener
        public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            CharSequence z10 = this.f2597f.z();
            if (!this.f2597f.E() || TextUtils.isEmpty(z10)) {
                return;
            }
            contextMenu.setHeaderTitle(z10);
            contextMenu.add(0, 0, 0, l.f10705a).setOnMenuItemClickListener(this);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            ClipboardManager clipboardManager = (ClipboardManager) this.f2597f.i().getSystemService("clipboard");
            CharSequence z10 = this.f2597f.z();
            clipboardManager.setPrimaryClip(ClipData.newPlainText("Preference", z10));
            Toast.makeText(this.f2597f.i(), this.f2597f.i().getString(l.f10708d, z10), 0).show();
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface g<T extends Preference> {
        CharSequence a(T t10);
    }

    public Preference(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f2581l = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f2582m = 0;
        this.f2591v = true;
        this.f2592w = true;
        this.f2594y = true;
        this.B = true;
        this.C = true;
        this.D = true;
        this.E = true;
        this.F = true;
        this.H = true;
        this.K = true;
        int i12 = k.f10702b;
        this.L = i12;
        this.U = new a();
        this.f2575f = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.f10771s0, i10, i11);
        this.f2585p = i.n(obtainStyledAttributes, n.Q0, n.f10774t0, 0);
        this.f2587r = i.o(obtainStyledAttributes, n.T0, n.f10792z0);
        this.f2583n = i.p(obtainStyledAttributes, n.f10717b1, n.f10786x0);
        this.f2584o = i.p(obtainStyledAttributes, n.f10713a1, n.A0);
        this.f2581l = i.d(obtainStyledAttributes, n.V0, n.B0, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        this.f2589t = i.o(obtainStyledAttributes, n.P0, n.G0);
        this.L = i.n(obtainStyledAttributes, n.U0, n.f10783w0, i12);
        this.M = i.n(obtainStyledAttributes, n.f10721c1, n.C0, 0);
        this.f2591v = i.b(obtainStyledAttributes, n.O0, n.f10780v0, true);
        this.f2592w = i.b(obtainStyledAttributes, n.X0, n.f10789y0, true);
        this.f2594y = i.b(obtainStyledAttributes, n.W0, n.f10777u0, true);
        this.f2595z = i.o(obtainStyledAttributes, n.M0, n.D0);
        int i13 = n.J0;
        this.E = i.b(obtainStyledAttributes, i13, i13, this.f2592w);
        int i14 = n.K0;
        this.F = i.b(obtainStyledAttributes, i14, i14, this.f2592w);
        int i15 = n.L0;
        if (obtainStyledAttributes.hasValue(i15)) {
            this.A = T(obtainStyledAttributes, i15);
        } else {
            int i16 = n.E0;
            if (obtainStyledAttributes.hasValue(i16)) {
                this.A = T(obtainStyledAttributes, i16);
            }
        }
        this.K = i.b(obtainStyledAttributes, n.Y0, n.F0, true);
        int i17 = n.Z0;
        boolean hasValue = obtainStyledAttributes.hasValue(i17);
        this.G = hasValue;
        if (hasValue) {
            this.H = i.b(obtainStyledAttributes, i17, n.H0, true);
        }
        this.I = i.b(obtainStyledAttributes, n.R0, n.I0, false);
        int i18 = n.S0;
        this.D = i.b(obtainStyledAttributes, i18, i18, true);
        int i19 = n.N0;
        this.J = i.b(obtainStyledAttributes, i19, i19, false);
        obtainStyledAttributes.recycle();
    }

    public final g A() {
        return this.T;
    }

    public void A0(CharSequence charSequence) {
        if ((charSequence != null || this.f2583n == null) && (charSequence == null || charSequence.equals(this.f2583n))) {
            return;
        }
        this.f2583n = charSequence;
        J();
    }

    public CharSequence B() {
        return this.f2583n;
    }

    public final void B0(boolean z10) {
        if (this.D != z10) {
            this.D = z10;
            c cVar = this.N;
            if (cVar != null) {
                cVar.c(this);
            }
        }
    }

    public final int C() {
        return this.M;
    }

    public boolean C0() {
        return !F();
    }

    public boolean D() {
        return !TextUtils.isEmpty(this.f2587r);
    }

    public boolean D0() {
        return this.f2576g != null && G() && D();
    }

    public boolean E() {
        return this.J;
    }

    public final void E0(SharedPreferences.Editor editor) {
        if (this.f2576g.s()) {
            editor.apply();
        }
    }

    public boolean F() {
        return this.f2591v && this.B && this.C;
    }

    public final void F0() {
        Preference h10;
        String str = this.f2595z;
        if (str == null || (h10 = h(str)) == null) {
            return;
        }
        h10.G0(this);
    }

    public boolean G() {
        return this.f2594y;
    }

    public final void G0(Preference preference) {
        List<Preference> list = this.O;
        if (list != null) {
            list.remove(preference);
        }
    }

    public boolean H() {
        return this.f2592w;
    }

    public final boolean I() {
        return this.D;
    }

    public void J() {
        c cVar = this.N;
        if (cVar != null) {
            cVar.b(this);
        }
    }

    public void K(boolean z10) {
        List<Preference> list = this.O;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).R(this, z10);
        }
    }

    public void L() {
        c cVar = this.N;
        if (cVar != null) {
            cVar.a(this);
        }
    }

    public void M() {
        g0();
    }

    public void N(androidx.preference.e eVar) {
        this.f2576g = eVar;
        if (!this.f2578i) {
            this.f2577h = eVar.g();
        }
        g();
    }

    public void O(androidx.preference.e eVar, long j10) {
        this.f2577h = j10;
        this.f2578i = true;
        try {
            N(eVar);
        } finally {
            this.f2578i = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void P(m1.f fVar) {
        Integer num;
        TextView textView;
        ImageView imageView;
        View a10;
        boolean E;
        View view = fVar.itemView;
        view.setOnClickListener(this.U);
        view.setId(this.f2582m);
        TextView textView2 = (TextView) fVar.a(R.id.summary);
        if (textView2 != null) {
            CharSequence z10 = z();
            if (!TextUtils.isEmpty(z10)) {
                textView2.setText(z10);
                textView2.setVisibility(0);
                num = Integer.valueOf(textView2.getCurrentTextColor());
                textView = (TextView) fVar.a(R.id.title);
                if (textView != null) {
                    CharSequence B = B();
                    if (!TextUtils.isEmpty(B)) {
                        textView.setText(B);
                        textView.setVisibility(0);
                        if (this.G) {
                            textView.setSingleLine(this.H);
                        }
                        if (!H() && F() && num != null) {
                            textView.setTextColor(num.intValue());
                        }
                    } else {
                        textView.setVisibility(8);
                    }
                }
                imageView = (ImageView) fVar.a(R.id.icon);
                if (imageView != null) {
                    int i10 = this.f2585p;
                    if (i10 != 0 || this.f2586q != null) {
                        if (this.f2586q == null) {
                            this.f2586q = f.a.b(this.f2575f, i10);
                        }
                        Drawable drawable = this.f2586q;
                        if (drawable != null) {
                            imageView.setImageDrawable(drawable);
                        }
                    }
                    if (this.f2586q != null) {
                        imageView.setVisibility(0);
                    } else {
                        imageView.setVisibility(this.I ? 4 : 8);
                    }
                }
                a10 = fVar.a(j.f10695a);
                if (a10 == null) {
                    a10 = fVar.a(R.id.icon_frame);
                }
                if (a10 != null) {
                    if (this.f2586q != null) {
                        a10.setVisibility(0);
                    } else {
                        a10.setVisibility(this.I ? 4 : 8);
                    }
                }
                if (!this.K) {
                    m0(view, F());
                } else {
                    m0(view, true);
                }
                boolean H = H();
                view.setFocusable(H);
                view.setClickable(H);
                fVar.d(this.E);
                fVar.e(this.F);
                E = E();
                if (E && this.S == null) {
                    this.S = new f(this);
                }
                view.setOnCreateContextMenuListener(!E ? this.S : null);
                view.setLongClickable(E);
                if (E || H) {
                }
                b0.x0(view, null);
                return;
            }
            textView2.setVisibility(8);
        }
        num = null;
        textView = (TextView) fVar.a(R.id.title);
        if (textView != null) {
        }
        imageView = (ImageView) fVar.a(R.id.icon);
        if (imageView != null) {
        }
        a10 = fVar.a(j.f10695a);
        if (a10 == null) {
        }
        if (a10 != null) {
        }
        if (!this.K) {
        }
        boolean H2 = H();
        view.setFocusable(H2);
        view.setClickable(H2);
        fVar.d(this.E);
        fVar.e(this.F);
        E = E();
        if (E) {
            this.S = new f(this);
        }
        view.setOnCreateContextMenuListener(!E ? this.S : null);
        view.setLongClickable(E);
        if (E) {
        }
    }

    public void Q() {
    }

    public void R(Preference preference, boolean z10) {
        if (this.B == z10) {
            this.B = !z10;
            K(C0());
            J();
        }
    }

    public void S() {
        F0();
        this.Q = true;
    }

    public Object T(TypedArray typedArray, int i10) {
        return null;
    }

    @Deprecated
    public void U(r0.c cVar) {
    }

    public void V(Preference preference, boolean z10) {
        if (this.C == z10) {
            this.C = !z10;
            K(C0());
            J();
        }
    }

    public void W(Parcelable parcelable) {
        this.R = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    public Parcelable X() {
        this.R = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void Y(Object obj) {
    }

    @Deprecated
    public void Z(boolean z10, Object obj) {
        Y(obj);
    }

    public void a(PreferenceGroup preferenceGroup) {
        if (preferenceGroup != null && this.P != null) {
            throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
        }
        this.P = preferenceGroup;
    }

    public void a0() {
        e.c i10;
        if (F() && H()) {
            Q();
            e eVar = this.f2580k;
            if (eVar == null || !eVar.a(this)) {
                androidx.preference.e x10 = x();
                if ((x10 == null || (i10 = x10.i()) == null || !i10.x(this)) && this.f2588s != null) {
                    i().startActivity(this.f2588s);
                }
            }
        }
    }

    public boolean b(Object obj) {
        d dVar = this.f2579j;
        return dVar == null || dVar.a(this, obj);
    }

    public void b0(View view) {
        a0();
    }

    public final void c() {
        this.Q = false;
    }

    public boolean c0(boolean z10) {
        if (!D0()) {
            return false;
        }
        if (z10 == s(!z10)) {
            return true;
        }
        w();
        SharedPreferences.Editor f10 = this.f2576g.f();
        f10.putBoolean(this.f2587r, z10);
        E0(f10);
        return true;
    }

    @Override // java.lang.Comparable
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public int compareTo(Preference preference) {
        int i10 = this.f2581l;
        int i11 = preference.f2581l;
        if (i10 != i11) {
            return i10 - i11;
        }
        CharSequence charSequence = this.f2583n;
        CharSequence charSequence2 = preference.f2583n;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.f2583n.toString());
    }

    public boolean d0(int i10) {
        if (!D0()) {
            return false;
        }
        if (i10 == t(i10 ^ (-1))) {
            return true;
        }
        w();
        SharedPreferences.Editor f10 = this.f2576g.f();
        f10.putInt(this.f2587r, i10);
        E0(f10);
        return true;
    }

    public void e(Bundle bundle) {
        Parcelable parcelable;
        if (!D() || (parcelable = bundle.getParcelable(this.f2587r)) == null) {
            return;
        }
        this.R = false;
        W(parcelable);
        if (!this.R) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    public boolean e0(String str) {
        if (!D0()) {
            return false;
        }
        if (TextUtils.equals(str, u(null))) {
            return true;
        }
        w();
        SharedPreferences.Editor f10 = this.f2576g.f();
        f10.putString(this.f2587r, str);
        E0(f10);
        return true;
    }

    public void f(Bundle bundle) {
        if (D()) {
            this.R = false;
            Parcelable X = X();
            if (!this.R) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            }
            if (X != null) {
                bundle.putParcelable(this.f2587r, X);
            }
        }
    }

    public boolean f0(Set<String> set) {
        if (!D0()) {
            return false;
        }
        if (set.equals(v(null))) {
            return true;
        }
        w();
        SharedPreferences.Editor f10 = this.f2576g.f();
        f10.putStringSet(this.f2587r, set);
        E0(f10);
        return true;
    }

    public final void g() {
        w();
        if (D0() && y().contains(this.f2587r)) {
            Z(true, null);
            return;
        }
        Object obj = this.A;
        if (obj != null) {
            Z(false, obj);
        }
    }

    public final void g0() {
        if (TextUtils.isEmpty(this.f2595z)) {
            return;
        }
        Preference h10 = h(this.f2595z);
        if (h10 != null) {
            h10.h0(this);
            return;
        }
        throw new IllegalStateException("Dependency \"" + this.f2595z + "\" not found for preference \"" + this.f2587r + "\" (title: \"" + ((Object) this.f2583n) + "\"");
    }

    public <T extends Preference> T h(String str) {
        androidx.preference.e eVar = this.f2576g;
        if (eVar == null) {
            return null;
        }
        return (T) eVar.b(str);
    }

    public final void h0(Preference preference) {
        if (this.O == null) {
            this.O = new ArrayList();
        }
        this.O.add(preference);
        preference.R(this, C0());
    }

    public Context i() {
        return this.f2575f;
    }

    public void i0() {
        if (!TextUtils.isEmpty(this.f2587r)) {
            this.f2593x = true;
            return;
        }
        throw new IllegalStateException("Preference does not have a key assigned.");
    }

    public Bundle j() {
        if (this.f2590u == null) {
            this.f2590u = new Bundle();
        }
        return this.f2590u;
    }

    public void j0(Bundle bundle) {
        e(bundle);
    }

    public StringBuilder k() {
        StringBuilder sb2 = new StringBuilder();
        CharSequence B = B();
        if (!TextUtils.isEmpty(B)) {
            sb2.append(B);
            sb2.append(' ');
        }
        CharSequence z10 = z();
        if (!TextUtils.isEmpty(z10)) {
            sb2.append(z10);
            sb2.append(' ');
        }
        if (sb2.length() > 0) {
            sb2.setLength(sb2.length() - 1);
        }
        return sb2;
    }

    public void k0(Bundle bundle) {
        f(bundle);
    }

    public String l() {
        return this.f2589t;
    }

    public void l0(Object obj) {
        this.A = obj;
    }

    public long m() {
        return this.f2577h;
    }

    public final void m0(View view, boolean z10) {
        view.setEnabled(z10);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                m0(viewGroup.getChildAt(childCount), z10);
            }
        }
    }

    public Intent n() {
        return this.f2588s;
    }

    public void n0(int i10) {
        o0(f.a.b(this.f2575f, i10));
        this.f2585p = i10;
    }

    public String o() {
        return this.f2587r;
    }

    public void o0(Drawable drawable) {
        if (this.f2586q != drawable) {
            this.f2586q = drawable;
            this.f2585p = 0;
            J();
        }
    }

    public final int p() {
        return this.L;
    }

    public void p0(boolean z10) {
        if (this.I != z10) {
            this.I = z10;
            J();
        }
    }

    public int q() {
        return this.f2581l;
    }

    public void q0(String str) {
        this.f2587r = str;
        if (!this.f2593x || D()) {
            return;
        }
        i0();
    }

    public PreferenceGroup r() {
        return this.P;
    }

    public void r0(int i10) {
        this.L = i10;
    }

    public boolean s(boolean z10) {
        if (!D0()) {
            return z10;
        }
        w();
        return this.f2576g.m().getBoolean(this.f2587r, z10);
    }

    public final void s0(c cVar) {
        this.N = cVar;
    }

    public int t(int i10) {
        if (!D0()) {
            return i10;
        }
        w();
        return this.f2576g.m().getInt(this.f2587r, i10);
    }

    public void t0(d dVar) {
        this.f2579j = dVar;
    }

    public String toString() {
        return k().toString();
    }

    public String u(String str) {
        if (!D0()) {
            return str;
        }
        w();
        return this.f2576g.m().getString(this.f2587r, str);
    }

    public void u0(e eVar) {
        this.f2580k = eVar;
    }

    public Set<String> v(Set<String> set) {
        if (!D0()) {
            return set;
        }
        w();
        return this.f2576g.m().getStringSet(this.f2587r, set);
    }

    public void v0(int i10) {
        if (i10 != this.f2581l) {
            this.f2581l = i10;
            L();
        }
    }

    public m1.d w() {
        androidx.preference.e eVar = this.f2576g;
        if (eVar != null) {
            return eVar.k();
        }
        return null;
    }

    public void w0(int i10) {
        x0(this.f2575f.getString(i10));
    }

    public androidx.preference.e x() {
        return this.f2576g;
    }

    public void x0(CharSequence charSequence) {
        if (A() == null) {
            if (TextUtils.equals(this.f2584o, charSequence)) {
                return;
            }
            this.f2584o = charSequence;
            J();
            return;
        }
        throw new IllegalStateException("Preference already has a SummaryProvider set.");
    }

    public SharedPreferences y() {
        if (this.f2576g == null) {
            return null;
        }
        w();
        return this.f2576g.m();
    }

    public final void y0(g gVar) {
        this.T = gVar;
        J();
    }

    public CharSequence z() {
        if (A() != null) {
            return A().a(this);
        }
        return this.f2584o;
    }

    public void z0(int i10) {
        A0(this.f2575f.getString(i10));
    }

    public Preference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, m1.g.f10688i, R.attr.preferenceStyle));
    }

    public Preference(Context context) {
        this(context, null);
    }
}
