package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.b;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.b0;
import androidx.appcompat.widget.b1;
import androidx.appcompat.widget.c1;
import androidx.appcompat.widget.f0;
import androidx.appcompat.widget.v0;
import androidx.lifecycle.k;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g0.h;
import j.b;
import j.f;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import q0.f;
import q0.g0;
import q0.i0;
import q0.m0;

/* compiled from: AppCompatDelegateImpl.java */
/* loaded from: classes.dex */
public class g extends androidx.appcompat.app.f implements e.a, LayoutInflater.Factory2 {

    /* renamed from: g0, reason: collision with root package name */
    public static final s.g<String, Integer> f819g0 = new s.g<>();

    /* renamed from: h0, reason: collision with root package name */
    public static final boolean f820h0;

    /* renamed from: i0, reason: collision with root package name */
    public static final int[] f821i0;

    /* renamed from: j0, reason: collision with root package name */
    public static final boolean f822j0;

    /* renamed from: k0, reason: collision with root package name */
    public static final boolean f823k0;

    /* renamed from: l0, reason: collision with root package name */
    public static boolean f824l0;
    public ViewGroup A;
    public TextView B;
    public View C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public v[] L;
    public v M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public Configuration R;
    public int S;
    public int T;
    public boolean U;
    public boolean V;
    public r W;
    public r X;
    public boolean Y;
    public int Z;

    /* renamed from: a0, reason: collision with root package name */
    public final Runnable f825a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f826b0;

    /* renamed from: c0, reason: collision with root package name */
    public Rect f827c0;

    /* renamed from: d0, reason: collision with root package name */
    public Rect f828d0;

    /* renamed from: e0, reason: collision with root package name */
    public e.d f829e0;

    /* renamed from: f0, reason: collision with root package name */
    public e.e f830f0;

    /* renamed from: i, reason: collision with root package name */
    public final Object f831i;

    /* renamed from: j, reason: collision with root package name */
    public final Context f832j;

    /* renamed from: k, reason: collision with root package name */
    public Window f833k;

    /* renamed from: l, reason: collision with root package name */
    public p f834l;

    /* renamed from: m, reason: collision with root package name */
    public final e.a f835m;

    /* renamed from: n, reason: collision with root package name */
    public androidx.appcompat.app.a f836n;

    /* renamed from: o, reason: collision with root package name */
    public MenuInflater f837o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f838p;

    /* renamed from: q, reason: collision with root package name */
    public b0 f839q;

    /* renamed from: r, reason: collision with root package name */
    public j f840r;

    /* renamed from: s, reason: collision with root package name */
    public w f841s;

    /* renamed from: t, reason: collision with root package name */
    public j.b f842t;

    /* renamed from: u, reason: collision with root package name */
    public ActionBarContextView f843u;

    /* renamed from: v, reason: collision with root package name */
    public PopupWindow f844v;

    /* renamed from: w, reason: collision with root package name */
    public Runnable f845w;

    /* renamed from: x, reason: collision with root package name */
    public g0 f846x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f847y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f848z;

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class a implements Thread.UncaughtExceptionHandler {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Thread.UncaughtExceptionHandler f849a;

        public a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f849a = uncaughtExceptionHandler;
        }

        public final boolean a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains("drawable") || message.contains("Drawable");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (a(th)) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                notFoundException.initCause(th.getCause());
                notFoundException.setStackTrace(th.getStackTrace());
                this.f849a.uncaughtException(thread, notFoundException);
                return;
            }
            this.f849a.uncaughtException(thread, th);
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            if ((gVar.Z & 1) != 0) {
                gVar.W(0);
            }
            g gVar2 = g.this;
            if ((gVar2.Z & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0) {
                gVar2.W(108);
            }
            g gVar3 = g.this;
            gVar3.Y = false;
            gVar3.Z = 0;
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class c implements q0.u {
        public c() {
        }

        @Override // q0.u
        public m0 onApplyWindowInsets(View view, m0 m0Var) {
            int l10 = m0Var.l();
            int M0 = g.this.M0(m0Var, null);
            if (l10 != M0) {
                m0Var = m0Var.q(m0Var.j(), M0, m0Var.k(), m0Var.i());
            }
            return q0.b0.f0(view, m0Var);
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class d implements f0.a {
        public d() {
        }

        @Override // androidx.appcompat.widget.f0.a
        public void a(Rect rect) {
            rect.top = g.this.M0(null, rect);
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class e implements ContentFrameLayout.a {
        public e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            g.this.U();
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class f implements Runnable {

        /* compiled from: AppCompatDelegateImpl.java */
        /* loaded from: classes.dex */
        public class a extends i0 {
            public a() {
            }

            @Override // q0.h0
            public void b(View view) {
                g.this.f843u.setAlpha(1.0f);
                g.this.f846x.f(null);
                g.this.f846x = null;
            }

            @Override // q0.i0, q0.h0
            public void c(View view) {
                g.this.f843u.setVisibility(0);
            }
        }

        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            gVar.f844v.showAtLocation(gVar.f843u, 55, 0, 0);
            g.this.X();
            if (g.this.F0()) {
                g.this.f843u.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                g gVar2 = g.this;
                gVar2.f846x = q0.b0.e(gVar2.f843u).a(1.0f);
                g.this.f846x.f(new a());
                return;
            }
            g.this.f843u.setAlpha(1.0f);
            g.this.f843u.setVisibility(0);
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* renamed from: androidx.appcompat.app.g$g, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0027g extends i0 {
        public C0027g() {
        }

        @Override // q0.h0
        public void b(View view) {
            g.this.f843u.setAlpha(1.0f);
            g.this.f846x.f(null);
            g.this.f846x = null;
        }

        @Override // q0.i0, q0.h0
        public void c(View view) {
            g.this.f843u.setVisibility(0);
            if (g.this.f843u.getParent() instanceof View) {
                q0.b0.q0((View) g.this.f843u.getParent());
            }
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class h implements b.InterfaceC0026b {
        public h() {
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public void a(Drawable drawable, int i10) {
            androidx.appcompat.app.a l10 = g.this.l();
            if (l10 != null) {
                l10.v(drawable);
                l10.u(i10);
            }
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public boolean b() {
            androidx.appcompat.app.a l10 = g.this.l();
            return (l10 == null || (l10.j() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public Drawable c() {
            v0 u10 = v0.u(e(), null, new int[]{d.a.E});
            Drawable g10 = u10.g(0);
            u10.w();
            return g10;
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public void d(int i10) {
            androidx.appcompat.app.a l10 = g.this.l();
            if (l10 != null) {
                l10.u(i10);
            }
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public Context e() {
            return g.this.c0();
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public interface i {
        boolean a(int i10);

        View onCreatePanelView(int i10);
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public final class j implements i.a {
        public j() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public boolean a(androidx.appcompat.view.menu.e eVar) {
            Window.Callback h02 = g.this.h0();
            if (h02 == null) {
                return true;
            }
            h02.onMenuOpened(108, eVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.i.a
        public void onCloseMenu(androidx.appcompat.view.menu.e eVar, boolean z10) {
            g.this.N(eVar);
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class k implements b.a {

        /* renamed from: a, reason: collision with root package name */
        public b.a f859a;

        /* compiled from: AppCompatDelegateImpl.java */
        /* loaded from: classes.dex */
        public class a extends i0 {
            public a() {
            }

            @Override // q0.h0
            public void b(View view) {
                g.this.f843u.setVisibility(8);
                g gVar = g.this;
                PopupWindow popupWindow = gVar.f844v;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (gVar.f843u.getParent() instanceof View) {
                    q0.b0.q0((View) g.this.f843u.getParent());
                }
                g.this.f843u.k();
                g.this.f846x.f(null);
                g gVar2 = g.this;
                gVar2.f846x = null;
                q0.b0.q0(gVar2.A);
            }
        }

        public k(b.a aVar) {
            this.f859a = aVar;
        }

        @Override // j.b.a
        public boolean a(j.b bVar, MenuItem menuItem) {
            return this.f859a.a(bVar, menuItem);
        }

        @Override // j.b.a
        public boolean b(j.b bVar, Menu menu) {
            return this.f859a.b(bVar, menu);
        }

        @Override // j.b.a
        public void c(j.b bVar) {
            this.f859a.c(bVar);
            g gVar = g.this;
            if (gVar.f844v != null) {
                gVar.f833k.getDecorView().removeCallbacks(g.this.f845w);
            }
            g gVar2 = g.this;
            if (gVar2.f843u != null) {
                gVar2.X();
                g gVar3 = g.this;
                gVar3.f846x = q0.b0.e(gVar3.f843u).a(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                g.this.f846x.f(new a());
            }
            g gVar4 = g.this;
            e.a aVar = gVar4.f835m;
            if (aVar != null) {
                aVar.onSupportActionModeFinished(gVar4.f842t);
            }
            g gVar5 = g.this;
            gVar5.f842t = null;
            q0.b0.q0(gVar5.A);
        }

        @Override // j.b.a
        public boolean d(j.b bVar, Menu menu) {
            q0.b0.q0(g.this.A);
            return this.f859a.d(bVar, menu);
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public static class l {
        public static Context a(Context context, Configuration configuration) {
            return context.createConfigurationContext(configuration);
        }

        public static void b(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i10 = configuration.densityDpi;
            int i11 = configuration2.densityDpi;
            if (i10 != i11) {
                configuration3.densityDpi = i11;
            }
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public static class m {
        public static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public static class n {
        public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public static class o {
        public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i10 = configuration.colorMode & 3;
            int i11 = configuration2.colorMode;
            if (i10 != (i11 & 3)) {
                configuration3.colorMode |= i11 & 3;
            }
            int i12 = configuration.colorMode & 12;
            int i13 = configuration2.colorMode;
            if (i12 != (i13 & 12)) {
                configuration3.colorMode |= i13 & 12;
            }
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class q extends r {

        /* renamed from: c, reason: collision with root package name */
        public final PowerManager f864c;

        public q(Context context) {
            super();
            this.f864c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.g.r
        public IntentFilter b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.g.r
        public int c() {
            return (Build.VERSION.SDK_INT < 21 || !m.a(this.f864c)) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.g.r
        public void d() {
            g.this.H();
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public abstract class r {

        /* renamed from: a, reason: collision with root package name */
        public BroadcastReceiver f866a;

        /* compiled from: AppCompatDelegateImpl.java */
        /* loaded from: classes.dex */
        public class a extends BroadcastReceiver {
            public a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                r.this.d();
            }
        }

        public r() {
        }

        public void a() {
            BroadcastReceiver broadcastReceiver = this.f866a;
            if (broadcastReceiver != null) {
                try {
                    g.this.f832j.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f866a = null;
            }
        }

        public abstract IntentFilter b();

        public abstract int c();

        public abstract void d();

        public void e() {
            a();
            IntentFilter b10 = b();
            if (b10 == null || b10.countActions() == 0) {
                return;
            }
            if (this.f866a == null) {
                this.f866a = new a();
            }
            g.this.f832j.registerReceiver(this.f866a, b10);
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class s extends r {

        /* renamed from: c, reason: collision with root package name */
        public final e.h f869c;

        public s(e.h hVar) {
            super();
            this.f869c = hVar;
        }

        @Override // androidx.appcompat.app.g.r
        public IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.g.r
        public int c() {
            return this.f869c.d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.g.r
        public void d() {
            g.this.H();
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public static class t {
        public static void a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class u extends ContentFrameLayout {
        public u(Context context) {
            super(context);
        }

        public final boolean c(int i10, int i11) {
            return i10 < -5 || i11 < -5 || i10 > getWidth() + 5 || i11 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return g.this.V(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && c((int) motionEvent.getX(), (int) motionEvent.getY())) {
                g.this.P(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i10) {
            setBackgroundDrawable(f.a.b(getContext(), i10));
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public static final class v {

        /* renamed from: a, reason: collision with root package name */
        public int f872a;

        /* renamed from: b, reason: collision with root package name */
        public int f873b;

        /* renamed from: c, reason: collision with root package name */
        public int f874c;

        /* renamed from: d, reason: collision with root package name */
        public int f875d;

        /* renamed from: e, reason: collision with root package name */
        public int f876e;

        /* renamed from: f, reason: collision with root package name */
        public int f877f;

        /* renamed from: g, reason: collision with root package name */
        public ViewGroup f878g;

        /* renamed from: h, reason: collision with root package name */
        public View f879h;

        /* renamed from: i, reason: collision with root package name */
        public View f880i;

        /* renamed from: j, reason: collision with root package name */
        public androidx.appcompat.view.menu.e f881j;

        /* renamed from: k, reason: collision with root package name */
        public androidx.appcompat.view.menu.c f882k;

        /* renamed from: l, reason: collision with root package name */
        public Context f883l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f884m;

        /* renamed from: n, reason: collision with root package name */
        public boolean f885n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f886o;

        /* renamed from: p, reason: collision with root package name */
        public boolean f887p;

        /* renamed from: q, reason: collision with root package name */
        public boolean f888q = false;

        /* renamed from: r, reason: collision with root package name */
        public boolean f889r;

        /* renamed from: s, reason: collision with root package name */
        public Bundle f890s;

        public v(int i10) {
            this.f872a = i10;
        }

        public androidx.appcompat.view.menu.j a(i.a aVar) {
            if (this.f881j == null) {
                return null;
            }
            if (this.f882k == null) {
                androidx.appcompat.view.menu.c cVar = new androidx.appcompat.view.menu.c(this.f883l, d.g.f5293j);
                this.f882k = cVar;
                cVar.setCallback(aVar);
                this.f881j.addMenuPresenter(this.f882k);
            }
            return this.f882k.b(this.f878g);
        }

        public boolean b() {
            if (this.f879h == null) {
                return false;
            }
            return this.f880i != null || this.f882k.a().getCount() > 0;
        }

        public void c(androidx.appcompat.view.menu.e eVar) {
            androidx.appcompat.view.menu.c cVar;
            androidx.appcompat.view.menu.e eVar2 = this.f881j;
            if (eVar == eVar2) {
                return;
            }
            if (eVar2 != null) {
                eVar2.removeMenuPresenter(this.f882k);
            }
            this.f881j = eVar;
            if (eVar == null || (cVar = this.f882k) == null) {
                return;
            }
            eVar.addMenuPresenter(cVar);
        }

        public void d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(d.a.f5182a, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                newTheme.applyStyle(i10, true);
            }
            newTheme.resolveAttribute(d.a.I, typedValue, true);
            int i11 = typedValue.resourceId;
            if (i11 != 0) {
                newTheme.applyStyle(i11, true);
            } else {
                newTheme.applyStyle(d.i.f5321d, true);
            }
            j.d dVar = new j.d(context, 0);
            dVar.getTheme().setTo(newTheme);
            this.f883l = dVar;
            TypedArray obtainStyledAttributes = dVar.obtainStyledAttributes(d.j.f5447y0);
            this.f873b = obtainStyledAttributes.getResourceId(d.j.B0, 0);
            this.f877f = obtainStyledAttributes.getResourceId(d.j.A0, 0);
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public final class w implements i.a {
        public w() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public boolean a(androidx.appcompat.view.menu.e eVar) {
            Window.Callback h02;
            if (eVar != eVar.getRootMenu()) {
                return true;
            }
            g gVar = g.this;
            if (!gVar.F || (h02 = gVar.h0()) == null || g.this.Q) {
                return true;
            }
            h02.onMenuOpened(108, eVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.i.a
        public void onCloseMenu(androidx.appcompat.view.menu.e eVar, boolean z10) {
            androidx.appcompat.view.menu.e rootMenu = eVar.getRootMenu();
            boolean z11 = rootMenu != eVar;
            g gVar = g.this;
            if (z11) {
                eVar = rootMenu;
            }
            v a02 = gVar.a0(eVar);
            if (a02 != null) {
                if (z11) {
                    g.this.M(a02.f872a, a02, rootMenu);
                    g.this.Q(a02, true);
                } else {
                    g.this.Q(a02, z10);
                }
            }
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        boolean z10 = i10 < 21;
        f820h0 = z10;
        f821i0 = new int[]{R.attr.windowBackground};
        f822j0 = !"robolectric".equals(Build.FINGERPRINT);
        f823k0 = i10 >= 17;
        if (!z10 || f824l0) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new a(Thread.getDefaultUncaughtExceptionHandler()));
        f824l0 = true;
    }

    public g(Activity activity, e.a aVar) {
        this(activity, null, aVar, activity);
    }

    public static Configuration b0(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f10 = configuration.fontScale;
            float f11 = configuration2.fontScale;
            if (f10 != f11) {
                configuration3.fontScale = f11;
            }
            int i10 = configuration.mcc;
            int i11 = configuration2.mcc;
            if (i10 != i11) {
                configuration3.mcc = i11;
            }
            int i12 = configuration.mnc;
            int i13 = configuration2.mnc;
            if (i12 != i13) {
                configuration3.mnc = i13;
            }
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 24) {
                n.a(configuration, configuration2, configuration3);
            } else if (!p0.d.a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i15 = configuration.touchscreen;
            int i16 = configuration2.touchscreen;
            if (i15 != i16) {
                configuration3.touchscreen = i16;
            }
            int i17 = configuration.keyboard;
            int i18 = configuration2.keyboard;
            if (i17 != i18) {
                configuration3.keyboard = i18;
            }
            int i19 = configuration.keyboardHidden;
            int i20 = configuration2.keyboardHidden;
            if (i19 != i20) {
                configuration3.keyboardHidden = i20;
            }
            int i21 = configuration.navigation;
            int i22 = configuration2.navigation;
            if (i21 != i22) {
                configuration3.navigation = i22;
            }
            int i23 = configuration.navigationHidden;
            int i24 = configuration2.navigationHidden;
            if (i23 != i24) {
                configuration3.navigationHidden = i24;
            }
            int i25 = configuration.orientation;
            int i26 = configuration2.orientation;
            if (i25 != i26) {
                configuration3.orientation = i26;
            }
            int i27 = configuration.screenLayout & 15;
            int i28 = configuration2.screenLayout;
            if (i27 != (i28 & 15)) {
                configuration3.screenLayout |= i28 & 15;
            }
            int i29 = configuration.screenLayout & 192;
            int i30 = configuration2.screenLayout;
            if (i29 != (i30 & 192)) {
                configuration3.screenLayout |= i30 & 192;
            }
            int i31 = configuration.screenLayout & 48;
            int i32 = configuration2.screenLayout;
            if (i31 != (i32 & 48)) {
                configuration3.screenLayout |= i32 & 48;
            }
            int i33 = configuration.screenLayout & 768;
            int i34 = configuration2.screenLayout;
            if (i33 != (i34 & 768)) {
                configuration3.screenLayout |= i34 & 768;
            }
            if (i14 >= 26) {
                o.a(configuration, configuration2, configuration3);
            }
            int i35 = configuration.uiMode & 15;
            int i36 = configuration2.uiMode;
            if (i35 != (i36 & 15)) {
                configuration3.uiMode |= i36 & 15;
            }
            int i37 = configuration.uiMode & 48;
            int i38 = configuration2.uiMode;
            if (i37 != (i38 & 48)) {
                configuration3.uiMode |= i38 & 48;
            }
            int i39 = configuration.screenWidthDp;
            int i40 = configuration2.screenWidthDp;
            if (i39 != i40) {
                configuration3.screenWidthDp = i40;
            }
            int i41 = configuration.screenHeightDp;
            int i42 = configuration2.screenHeightDp;
            if (i41 != i42) {
                configuration3.screenHeightDp = i42;
            }
            int i43 = configuration.smallestScreenWidthDp;
            int i44 = configuration2.smallestScreenWidthDp;
            if (i43 != i44) {
                configuration3.smallestScreenWidthDp = i44;
            }
            if (i14 >= 17) {
                l.b(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    @Override // androidx.appcompat.app.f
    public void A(int i10) {
        Y();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f832j).inflate(i10, viewGroup);
        this.f834l.a().onContentChanged();
    }

    public final androidx.appcompat.app.a A0() {
        return this.f836n;
    }

    @Override // androidx.appcompat.app.f
    public void B(View view) {
        Y();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f834l.a().onContentChanged();
    }

    public final boolean B0(v vVar, int i10, KeyEvent keyEvent, int i11) {
        androidx.appcompat.view.menu.e eVar;
        boolean z10 = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((vVar.f884m || C0(vVar, keyEvent)) && (eVar = vVar.f881j) != null) {
            z10 = eVar.performShortcut(i10, keyEvent, i11);
        }
        if (z10 && (i11 & 1) == 0 && this.f839q == null) {
            Q(vVar, true);
        }
        return z10;
    }

    @Override // androidx.appcompat.app.f
    public void C(View view, ViewGroup.LayoutParams layoutParams) {
        Y();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f834l.a().onContentChanged();
    }

    public final boolean C0(v vVar, KeyEvent keyEvent) {
        b0 b0Var;
        b0 b0Var2;
        b0 b0Var3;
        if (this.Q) {
            return false;
        }
        if (vVar.f884m) {
            return true;
        }
        v vVar2 = this.M;
        if (vVar2 != null && vVar2 != vVar) {
            Q(vVar2, false);
        }
        Window.Callback h02 = h0();
        if (h02 != null) {
            vVar.f880i = h02.onCreatePanelView(vVar.f872a);
        }
        int i10 = vVar.f872a;
        boolean z10 = i10 == 0 || i10 == 108;
        if (z10 && (b0Var3 = this.f839q) != null) {
            b0Var3.c();
        }
        if (vVar.f880i == null && (!z10 || !(A0() instanceof androidx.appcompat.app.h))) {
            androidx.appcompat.view.menu.e eVar = vVar.f881j;
            if (eVar == null || vVar.f889r) {
                if (eVar == null && (!l0(vVar) || vVar.f881j == null)) {
                    return false;
                }
                if (z10 && this.f839q != null) {
                    if (this.f840r == null) {
                        this.f840r = new j();
                    }
                    this.f839q.a(vVar.f881j, this.f840r);
                }
                vVar.f881j.stopDispatchingItemsChanged();
                if (!h02.onCreatePanelMenu(vVar.f872a, vVar.f881j)) {
                    vVar.c(null);
                    if (z10 && (b0Var = this.f839q) != null) {
                        b0Var.a(null, this.f840r);
                    }
                    return false;
                }
                vVar.f889r = false;
            }
            vVar.f881j.stopDispatchingItemsChanged();
            Bundle bundle = vVar.f890s;
            if (bundle != null) {
                vVar.f881j.restoreActionViewStates(bundle);
                vVar.f890s = null;
            }
            if (!h02.onPreparePanel(0, vVar.f880i, vVar.f881j)) {
                if (z10 && (b0Var2 = this.f839q) != null) {
                    b0Var2.a(null, this.f840r);
                }
                vVar.f881j.startDispatchingItemsChanged();
                return false;
            }
            boolean z11 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            vVar.f887p = z11;
            vVar.f881j.setQwertyMode(z11);
            vVar.f881j.startDispatchingItemsChanged();
        }
        vVar.f884m = true;
        vVar.f885n = false;
        this.M = vVar;
        return true;
    }

    @Override // androidx.appcompat.app.f
    public void D(Toolbar toolbar) {
        if (this.f831i instanceof Activity) {
            androidx.appcompat.app.a l10 = l();
            if (!(l10 instanceof androidx.appcompat.app.i)) {
                this.f837o = null;
                if (l10 != null) {
                    l10.n();
                }
                this.f836n = null;
                if (toolbar != null) {
                    androidx.appcompat.app.h hVar = new androidx.appcompat.app.h(toolbar, g0(), this.f834l);
                    this.f836n = hVar;
                    this.f834l.b(hVar.f894c);
                } else {
                    this.f834l.b(null);
                }
                n();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    public final void D0(boolean z10) {
        b0 b0Var = this.f839q;
        if (b0Var != null && b0Var.g() && (!ViewConfiguration.get(this.f832j).hasPermanentMenuKey() || this.f839q.d())) {
            Window.Callback h02 = h0();
            if (this.f839q.b() && z10) {
                this.f839q.e();
                if (this.Q) {
                    return;
                }
                h02.onPanelClosed(108, f0(0, true).f881j);
                return;
            }
            if (h02 == null || this.Q) {
                return;
            }
            if (this.Y && (this.Z & 1) != 0) {
                this.f833k.getDecorView().removeCallbacks(this.f825a0);
                this.f825a0.run();
            }
            v f02 = f0(0, true);
            androidx.appcompat.view.menu.e eVar = f02.f881j;
            if (eVar == null || f02.f889r || !h02.onPreparePanel(0, f02.f880i, eVar)) {
                return;
            }
            h02.onMenuOpened(108, f02.f881j);
            this.f839q.f();
            return;
        }
        v f03 = f0(0, true);
        f03.f888q = true;
        Q(f03, false);
        z0(f03, null);
    }

    @Override // androidx.appcompat.app.f
    public void E(int i10) {
        this.T = i10;
    }

    public final int E0(int i10) {
        if (i10 == 8) {
            return 108;
        }
        if (i10 == 9) {
            return 109;
        }
        return i10;
    }

    @Override // androidx.appcompat.app.f
    public final void F(CharSequence charSequence) {
        this.f838p = charSequence;
        b0 b0Var = this.f839q;
        if (b0Var != null) {
            b0Var.setWindowTitle(charSequence);
            return;
        }
        if (A0() != null) {
            A0().y(charSequence);
            return;
        }
        TextView textView = this.B;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public final boolean F0() {
        ViewGroup viewGroup;
        return this.f848z && (viewGroup = this.A) != null && q0.b0.X(viewGroup);
    }

    @Override // androidx.appcompat.app.f
    public j.b G(b.a aVar) {
        e.a aVar2;
        if (aVar != null) {
            j.b bVar = this.f842t;
            if (bVar != null) {
                bVar.a();
            }
            k kVar = new k(aVar);
            androidx.appcompat.app.a l10 = l();
            if (l10 != null) {
                j.b z10 = l10.z(kVar);
                this.f842t = z10;
                if (z10 != null && (aVar2 = this.f835m) != null) {
                    aVar2.onSupportActionModeStarted(z10);
                }
            }
            if (this.f842t == null) {
                this.f842t = H0(kVar);
            }
            return this.f842t;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    public final boolean G0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f833k.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || q0.b0.W((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    public boolean H() {
        return I(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j.b H0(b.a aVar) {
        j.b bVar;
        Context context;
        j.b bVar2;
        e.a aVar2;
        X();
        j.b bVar3 = this.f842t;
        if (bVar3 != null) {
            bVar3.a();
        }
        if (!(aVar instanceof k)) {
            aVar = new k(aVar);
        }
        e.a aVar3 = this.f835m;
        if (aVar3 != null && !this.Q) {
            try {
                bVar = aVar3.onWindowStartingSupportActionMode(aVar);
            } catch (AbstractMethodError unused) {
            }
            if (bVar == null) {
                this.f842t = bVar;
            } else {
                if (this.f843u == null) {
                    if (this.I) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = this.f832j.getTheme();
                        theme.resolveAttribute(d.a.f5187f, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            Resources.Theme newTheme = this.f832j.getResources().newTheme();
                            newTheme.setTo(theme);
                            newTheme.applyStyle(typedValue.resourceId, true);
                            context = new j.d(this.f832j, 0);
                            context.getTheme().setTo(newTheme);
                        } else {
                            context = this.f832j;
                        }
                        this.f843u = new ActionBarContextView(context);
                        PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, d.a.f5190i);
                        this.f844v = popupWindow;
                        u0.i.b(popupWindow, 2);
                        this.f844v.setContentView(this.f843u);
                        this.f844v.setWidth(-1);
                        context.getTheme().resolveAttribute(d.a.f5183b, typedValue, true);
                        this.f843u.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                        this.f844v.setHeight(-2);
                        this.f845w = new f();
                    } else {
                        ViewStubCompat viewStubCompat = (ViewStubCompat) this.A.findViewById(d.f.f5265h);
                        if (viewStubCompat != null) {
                            viewStubCompat.setLayoutInflater(LayoutInflater.from(c0()));
                            this.f843u = (ActionBarContextView) viewStubCompat.a();
                        }
                    }
                }
                if (this.f843u != null) {
                    X();
                    this.f843u.k();
                    j.e eVar = new j.e(this.f843u.getContext(), this.f843u, aVar, this.f844v == null);
                    if (aVar.b(eVar, eVar.c())) {
                        eVar.i();
                        this.f843u.h(eVar);
                        this.f842t = eVar;
                        if (F0()) {
                            this.f843u.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                            g0 a10 = q0.b0.e(this.f843u).a(1.0f);
                            this.f846x = a10;
                            a10.f(new C0027g());
                        } else {
                            this.f843u.setAlpha(1.0f);
                            this.f843u.setVisibility(0);
                            if (this.f843u.getParent() instanceof View) {
                                q0.b0.q0((View) this.f843u.getParent());
                            }
                        }
                        if (this.f844v != null) {
                            this.f833k.getDecorView().post(this.f845w);
                        }
                    } else {
                        this.f842t = null;
                    }
                }
            }
            bVar2 = this.f842t;
            if (bVar2 != null && (aVar2 = this.f835m) != null) {
                aVar2.onSupportActionModeStarted(bVar2);
            }
            return this.f842t;
        }
        bVar = null;
        if (bVar == null) {
        }
        bVar2 = this.f842t;
        if (bVar2 != null) {
            aVar2.onSupportActionModeStarted(bVar2);
        }
        return this.f842t;
    }

    public final boolean I(boolean z10) {
        if (this.Q) {
            return false;
        }
        int L = L();
        boolean K0 = K0(p0(this.f832j, L), z10);
        if (L == 0) {
            e0(this.f832j).e();
        } else {
            r rVar = this.W;
            if (rVar != null) {
                rVar.a();
            }
        }
        if (L == 3) {
            d0(this.f832j).e();
        } else {
            r rVar2 = this.X;
            if (rVar2 != null) {
                rVar2.a();
            }
        }
        return K0;
    }

    public final void I0() {
        if (this.f848z) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void J() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.A.findViewById(R.id.content);
        View decorView = this.f833k.getDecorView();
        contentFrameLayout.b(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f832j.obtainStyledAttributes(d.j.f5447y0);
        obtainStyledAttributes.getValue(d.j.K0, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(d.j.L0, contentFrameLayout.getMinWidthMinor());
        int i10 = d.j.I0;
        if (obtainStyledAttributes.hasValue(i10)) {
            obtainStyledAttributes.getValue(i10, contentFrameLayout.getFixedWidthMajor());
        }
        int i11 = d.j.J0;
        if (obtainStyledAttributes.hasValue(i11)) {
            obtainStyledAttributes.getValue(i11, contentFrameLayout.getFixedWidthMinor());
        }
        int i12 = d.j.G0;
        if (obtainStyledAttributes.hasValue(i12)) {
            obtainStyledAttributes.getValue(i12, contentFrameLayout.getFixedHeightMajor());
        }
        int i13 = d.j.H0;
        if (obtainStyledAttributes.hasValue(i13)) {
            obtainStyledAttributes.getValue(i13, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    public final androidx.appcompat.app.e J0() {
        for (Context context = this.f832j; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof androidx.appcompat.app.e) {
                return (androidx.appcompat.app.e) context;
            }
            if (!(context instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    public final void K(Window window) {
        if (this.f833k == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof p)) {
                p pVar = new p(callback);
                this.f834l = pVar;
                window.setCallback(pVar);
                v0 u10 = v0.u(this.f832j, null, f821i0);
                Drawable h10 = u10.h(0);
                if (h10 != null) {
                    window.setBackgroundDrawable(h10);
                }
                u10.w();
                this.f833k = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean K0(int i10, boolean z10) {
        boolean z11;
        Configuration R = R(this.f832j, i10, null);
        boolean n02 = n0();
        Configuration configuration = this.R;
        if (configuration == null) {
            configuration = this.f832j.getResources().getConfiguration();
        }
        int i11 = configuration.uiMode & 48;
        int i12 = R.uiMode & 48;
        boolean z12 = true;
        if (i11 != i12 && z10 && !n02 && this.O && (f822j0 || this.P)) {
            Object obj = this.f831i;
            if ((obj instanceof Activity) && !((Activity) obj).isChild()) {
                e0.a.s((Activity) this.f831i);
                z11 = true;
                if (!z11 || i11 == i12) {
                    z12 = z11;
                } else {
                    L0(i12, n02, null);
                }
                if (z12) {
                    Object obj2 = this.f831i;
                    if (obj2 instanceof androidx.appcompat.app.e) {
                        ((androidx.appcompat.app.e) obj2).onNightModeChanged(i10);
                    }
                }
                return z12;
            }
        }
        z11 = false;
        if (z11) {
        }
        z12 = z11;
        if (z12) {
        }
        return z12;
    }

    public final int L() {
        int i10 = this.S;
        return i10 != -100 ? i10 : androidx.appcompat.app.f.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void L0(int i10, boolean z10, Configuration configuration) {
        Resources resources = this.f832j.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i10 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration2, null);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 26) {
            e.f.a(resources);
        }
        int i12 = this.T;
        if (i12 != 0) {
            this.f832j.setTheme(i12);
            if (i11 >= 23) {
                this.f832j.getTheme().applyStyle(this.T, true);
            }
        }
        if (z10) {
            Object obj = this.f831i;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof androidx.lifecycle.q) {
                    if (((androidx.lifecycle.q) activity).getLifecycle().b().a(k.c.CREATED)) {
                        activity.onConfigurationChanged(configuration2);
                    }
                } else {
                    if (!this.P || this.Q) {
                        return;
                    }
                    activity.onConfigurationChanged(configuration2);
                }
            }
        }
    }

    public void M(int i10, v vVar, Menu menu) {
        if (menu == null) {
            if (vVar == null && i10 >= 0) {
                v[] vVarArr = this.L;
                if (i10 < vVarArr.length) {
                    vVar = vVarArr[i10];
                }
            }
            if (vVar != null) {
                menu = vVar.f881j;
            }
        }
        if ((vVar == null || vVar.f886o) && !this.Q) {
            this.f834l.a().onPanelClosed(i10, menu);
        }
    }

    public final int M0(m0 m0Var, Rect rect) {
        int i10;
        boolean z10;
        boolean z11;
        if (m0Var != null) {
            i10 = m0Var.l();
        } else {
            i10 = rect != null ? rect.top : 0;
        }
        ActionBarContextView actionBarContextView = this.f843u;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z10 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f843u.getLayoutParams();
            if (this.f843u.isShown()) {
                if (this.f827c0 == null) {
                    this.f827c0 = new Rect();
                    this.f828d0 = new Rect();
                }
                Rect rect2 = this.f827c0;
                Rect rect3 = this.f828d0;
                if (m0Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(m0Var.j(), m0Var.l(), m0Var.k(), m0Var.i());
                }
                c1.a(this.A, rect2, rect3);
                int i11 = rect2.top;
                int i12 = rect2.left;
                int i13 = rect2.right;
                m0 L = q0.b0.L(this.A);
                int j10 = L == null ? 0 : L.j();
                int k10 = L == null ? 0 : L.k();
                if (marginLayoutParams.topMargin == i11 && marginLayoutParams.leftMargin == i12 && marginLayoutParams.rightMargin == i13) {
                    z11 = false;
                } else {
                    marginLayoutParams.topMargin = i11;
                    marginLayoutParams.leftMargin = i12;
                    marginLayoutParams.rightMargin = i13;
                    z11 = true;
                }
                if (i11 > 0 && this.C == null) {
                    View view = new View(this.f832j);
                    this.C = view;
                    view.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = j10;
                    layoutParams.rightMargin = k10;
                    this.A.addView(this.C, -1, layoutParams);
                } else {
                    View view2 = this.C;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i14 = marginLayoutParams2.height;
                        int i15 = marginLayoutParams.topMargin;
                        if (i14 != i15 || marginLayoutParams2.leftMargin != j10 || marginLayoutParams2.rightMargin != k10) {
                            marginLayoutParams2.height = i15;
                            marginLayoutParams2.leftMargin = j10;
                            marginLayoutParams2.rightMargin = k10;
                            this.C.setLayoutParams(marginLayoutParams2);
                        }
                    }
                }
                View view3 = this.C;
                r5 = view3 != null;
                if (r5 && view3.getVisibility() != 0) {
                    N0(this.C);
                }
                if (!this.H && r5) {
                    i10 = 0;
                }
                z10 = r5;
                r5 = z11;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z10 = false;
            } else {
                z10 = false;
                r5 = false;
            }
            if (r5) {
                this.f843u.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.C;
        if (view4 != null) {
            view4.setVisibility(z10 ? 0 : 8);
        }
        return i10;
    }

    public void N(androidx.appcompat.view.menu.e eVar) {
        if (this.K) {
            return;
        }
        this.K = true;
        this.f839q.i();
        Window.Callback h02 = h0();
        if (h02 != null && !this.Q) {
            h02.onPanelClosed(108, eVar);
        }
        this.K = false;
    }

    public final void N0(View view) {
        int d10;
        if ((q0.b0.Q(view) & RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0) {
            d10 = f0.a.d(this.f832j, d.c.f5210b);
        } else {
            d10 = f0.a.d(this.f832j, d.c.f5209a);
        }
        view.setBackgroundColor(d10);
    }

    public final void O() {
        r rVar = this.W;
        if (rVar != null) {
            rVar.a();
        }
        r rVar2 = this.X;
        if (rVar2 != null) {
            rVar2.a();
        }
    }

    public void P(int i10) {
        Q(f0(i10, true), true);
    }

    public void Q(v vVar, boolean z10) {
        ViewGroup viewGroup;
        b0 b0Var;
        if (z10 && vVar.f872a == 0 && (b0Var = this.f839q) != null && b0Var.b()) {
            N(vVar.f881j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f832j.getSystemService("window");
        if (windowManager != null && vVar.f886o && (viewGroup = vVar.f878g) != null) {
            windowManager.removeView(viewGroup);
            if (z10) {
                M(vVar.f872a, vVar, null);
            }
        }
        vVar.f884m = false;
        vVar.f885n = false;
        vVar.f886o = false;
        vVar.f879h = null;
        vVar.f888q = true;
        if (this.M == vVar) {
            this.M = null;
        }
    }

    public final Configuration R(Context context, int i10, Configuration configuration) {
        int i11;
        if (i10 != 1) {
            i11 = i10 != 2 ? context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32;
        } else {
            i11 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i11 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    public final ViewGroup S() {
        ViewGroup viewGroup;
        Context context;
        TypedArray obtainStyledAttributes = this.f832j.obtainStyledAttributes(d.j.f5447y0);
        int i10 = d.j.D0;
        if (obtainStyledAttributes.hasValue(i10)) {
            if (obtainStyledAttributes.getBoolean(d.j.M0, false)) {
                y(1);
            } else if (obtainStyledAttributes.getBoolean(i10, false)) {
                y(108);
            }
            if (obtainStyledAttributes.getBoolean(d.j.E0, false)) {
                y(109);
            }
            if (obtainStyledAttributes.getBoolean(d.j.F0, false)) {
                y(10);
            }
            this.I = obtainStyledAttributes.getBoolean(d.j.f5452z0, false);
            obtainStyledAttributes.recycle();
            Z();
            this.f833k.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.f832j);
            if (!this.J) {
                if (this.I) {
                    viewGroup = (ViewGroup) from.inflate(d.g.f5289f, (ViewGroup) null);
                    this.G = false;
                    this.F = false;
                } else if (this.F) {
                    TypedValue typedValue = new TypedValue();
                    this.f832j.getTheme().resolveAttribute(d.a.f5187f, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        context = new j.d(this.f832j, typedValue.resourceId);
                    } else {
                        context = this.f832j;
                    }
                    viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(d.g.f5299p, (ViewGroup) null);
                    b0 b0Var = (b0) viewGroup.findViewById(d.f.f5273p);
                    this.f839q = b0Var;
                    b0Var.setWindowCallback(h0());
                    if (this.G) {
                        this.f839q.h(109);
                    }
                    if (this.D) {
                        this.f839q.h(2);
                    }
                    if (this.E) {
                        this.f839q.h(5);
                    }
                } else {
                    viewGroup = null;
                }
            } else {
                viewGroup = this.H ? (ViewGroup) from.inflate(d.g.f5298o, (ViewGroup) null) : (ViewGroup) from.inflate(d.g.f5297n, (ViewGroup) null);
            }
            if (viewGroup != null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    q0.b0.G0(viewGroup, new c());
                } else if (viewGroup instanceof f0) {
                    ((f0) viewGroup).setOnFitSystemWindowsListener(new d());
                }
                if (this.f839q == null) {
                    this.B = (TextView) viewGroup.findViewById(d.f.M);
                }
                c1.c(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(d.f.f5259b);
                ViewGroup viewGroup2 = (ViewGroup) this.f833k.findViewById(R.id.content);
                if (viewGroup2 != null) {
                    while (viewGroup2.getChildCount() > 0) {
                        View childAt = viewGroup2.getChildAt(0);
                        viewGroup2.removeViewAt(0);
                        contentFrameLayout.addView(childAt);
                    }
                    viewGroup2.setId(-1);
                    contentFrameLayout.setId(R.id.content);
                    if (viewGroup2 instanceof FrameLayout) {
                        ((FrameLayout) viewGroup2).setForeground(null);
                    }
                }
                this.f833k.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new e());
                return viewGroup;
            }
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.F + ", windowActionBarOverlay: " + this.G + ", android:windowIsFloating: " + this.I + ", windowActionModeOverlay: " + this.H + ", windowNoTitle: " + this.J + " }");
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View T(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z10;
        boolean z11 = false;
        if (this.f829e0 == null) {
            String string = this.f832j.obtainStyledAttributes(d.j.f5447y0).getString(d.j.C0);
            if (string == null) {
                this.f829e0 = new e.d();
            } else {
                try {
                    this.f829e0 = (e.d) this.f832j.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable unused) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed to instantiate custom view inflater ");
                    sb2.append(string);
                    sb2.append(". Falling back to default.");
                    this.f829e0 = new e.d();
                }
            }
        }
        boolean z12 = f820h0;
        if (z12) {
            if (this.f830f0 == null) {
                this.f830f0 = new e.e();
            }
            if (this.f830f0.a(attributeSet)) {
                z10 = true;
            } else {
                if (attributeSet instanceof XmlPullParser) {
                    if (((XmlPullParser) attributeSet).getDepth() > 1) {
                        z11 = true;
                    }
                } else {
                    z11 = G0((ViewParent) view);
                }
                z10 = z11;
            }
        } else {
            z10 = false;
        }
        return this.f829e0.createView(view, str, context, attributeSet, z10, z12, true, b1.d());
    }

    public void U() {
        androidx.appcompat.view.menu.e eVar;
        b0 b0Var = this.f839q;
        if (b0Var != null) {
            b0Var.i();
        }
        if (this.f844v != null) {
            this.f833k.getDecorView().removeCallbacks(this.f845w);
            if (this.f844v.isShowing()) {
                try {
                    this.f844v.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.f844v = null;
        }
        X();
        v f02 = f0(0, false);
        if (f02 == null || (eVar = f02.f881j) == null) {
            return;
        }
        eVar.close();
    }

    public boolean V(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f831i;
        if (((obj instanceof f.a) || (obj instanceof e.b)) && (decorView = this.f833k.getDecorView()) != null && q0.f.d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f834l.a().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? r0(keyCode, keyEvent) : u0(keyCode, keyEvent);
    }

    public void W(int i10) {
        v f02;
        v f03 = f0(i10, true);
        if (f03.f881j != null) {
            Bundle bundle = new Bundle();
            f03.f881j.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                f03.f890s = bundle;
            }
            f03.f881j.stopDispatchingItemsChanged();
            f03.f881j.clear();
        }
        f03.f889r = true;
        f03.f888q = true;
        if ((i10 != 108 && i10 != 0) || this.f839q == null || (f02 = f0(0, false)) == null) {
            return;
        }
        f02.f884m = false;
        C0(f02, null);
    }

    public void X() {
        g0 g0Var = this.f846x;
        if (g0Var != null) {
            g0Var.b();
        }
    }

    public final void Y() {
        if (this.f848z) {
            return;
        }
        this.A = S();
        CharSequence g02 = g0();
        if (!TextUtils.isEmpty(g02)) {
            b0 b0Var = this.f839q;
            if (b0Var != null) {
                b0Var.setWindowTitle(g02);
            } else if (A0() != null) {
                A0().y(g02);
            } else {
                TextView textView = this.B;
                if (textView != null) {
                    textView.setText(g02);
                }
            }
        }
        J();
        y0(this.A);
        this.f848z = true;
        v f02 = f0(0, false);
        if (this.Q) {
            return;
        }
        if (f02 == null || f02.f881j == null) {
            m0(108);
        }
    }

    public final void Z() {
        if (this.f833k == null) {
            Object obj = this.f831i;
            if (obj instanceof Activity) {
                K(((Activity) obj).getWindow());
            }
        }
        if (this.f833k == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public v a0(Menu menu) {
        v[] vVarArr = this.L;
        int length = vVarArr != null ? vVarArr.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            v vVar = vVarArr[i10];
            if (vVar != null && vVar.f881j == menu) {
                return vVar;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.f
    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        Y();
        ((ViewGroup) this.A.findViewById(R.id.content)).addView(view, layoutParams);
        this.f834l.a().onContentChanged();
    }

    public final Context c0() {
        androidx.appcompat.app.a l10 = l();
        Context k10 = l10 != null ? l10.k() : null;
        return k10 == null ? this.f832j : k10;
    }

    @Override // androidx.appcompat.app.f
    public Context d(Context context) {
        this.O = true;
        int p02 = p0(context, L());
        Configuration configuration = null;
        if (f823k0 && (context instanceof ContextThemeWrapper)) {
            try {
                t.a((ContextThemeWrapper) context, R(context, p02, null));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof j.d) {
            try {
                ((j.d) context).a(R(context, p02, null));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f822j0) {
            return super.d(context);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            Configuration configuration3 = l.a(context, configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = b0(configuration3, configuration4);
            }
        }
        Configuration R = R(context, p02, configuration);
        j.d dVar = new j.d(context, d.i.f5322e);
        dVar.a(R);
        boolean z10 = false;
        try {
            z10 = context.getTheme() != null;
        } catch (NullPointerException unused3) {
        }
        if (z10) {
            h.e.a(dVar.getTheme());
        }
        return super.d(dVar);
    }

    public final r d0(Context context) {
        if (this.X == null) {
            this.X = new q(context);
        }
        return this.X;
    }

    public final r e0(Context context) {
        if (this.W == null) {
            this.W = new s(e.h.a(context));
        }
        return this.W;
    }

    public v f0(int i10, boolean z10) {
        v[] vVarArr = this.L;
        if (vVarArr == null || vVarArr.length <= i10) {
            v[] vVarArr2 = new v[i10 + 1];
            if (vVarArr != null) {
                System.arraycopy(vVarArr, 0, vVarArr2, 0, vVarArr.length);
            }
            this.L = vVarArr2;
            vVarArr = vVarArr2;
        }
        v vVar = vVarArr[i10];
        if (vVar != null) {
            return vVar;
        }
        v vVar2 = new v(i10);
        vVarArr[i10] = vVar2;
        return vVar2;
    }

    @Override // androidx.appcompat.app.f
    public <T extends View> T g(int i10) {
        Y();
        return (T) this.f833k.findViewById(i10);
    }

    public final CharSequence g0() {
        Object obj = this.f831i;
        if (obj instanceof Activity) {
            return ((Activity) obj).getTitle();
        }
        return this.f838p;
    }

    public final Window.Callback h0() {
        return this.f833k.getCallback();
    }

    @Override // androidx.appcompat.app.f
    public final b.InterfaceC0026b i() {
        return new h();
    }

    public final void i0() {
        Y();
        if (this.F && this.f836n == null) {
            Object obj = this.f831i;
            if (obj instanceof Activity) {
                this.f836n = new androidx.appcompat.app.i((Activity) this.f831i, this.G);
            } else if (obj instanceof Dialog) {
                this.f836n = new androidx.appcompat.app.i((Dialog) this.f831i);
            }
            androidx.appcompat.app.a aVar = this.f836n;
            if (aVar != null) {
                aVar.r(this.f826b0);
            }
        }
    }

    @Override // androidx.appcompat.app.f
    public int j() {
        return this.S;
    }

    public final boolean j0(v vVar) {
        View view = vVar.f880i;
        if (view != null) {
            vVar.f879h = view;
            return true;
        }
        if (vVar.f881j == null) {
            return false;
        }
        if (this.f841s == null) {
            this.f841s = new w();
        }
        View view2 = (View) vVar.a(this.f841s);
        vVar.f879h = view2;
        return view2 != null;
    }

    @Override // androidx.appcompat.app.f
    public MenuInflater k() {
        if (this.f837o == null) {
            i0();
            androidx.appcompat.app.a aVar = this.f836n;
            this.f837o = new j.g(aVar != null ? aVar.k() : this.f832j);
        }
        return this.f837o;
    }

    public final boolean k0(v vVar) {
        vVar.d(c0());
        vVar.f878g = new u(vVar.f883l);
        vVar.f874c = 81;
        return true;
    }

    @Override // androidx.appcompat.app.f
    public androidx.appcompat.app.a l() {
        i0();
        return this.f836n;
    }

    public final boolean l0(v vVar) {
        Context context = this.f832j;
        int i10 = vVar.f872a;
        if ((i10 == 0 || i10 == 108) && this.f839q != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(d.a.f5187f, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(d.a.f5188g, typedValue, true);
            } else {
                theme.resolveAttribute(d.a.f5188g, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                j.d dVar = new j.d(context, 0);
                dVar.getTheme().setTo(theme2);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(context);
        eVar.setCallback(this);
        vVar.c(eVar);
        return true;
    }

    @Override // androidx.appcompat.app.f
    public void m() {
        LayoutInflater from = LayoutInflater.from(this.f832j);
        if (from.getFactory() == null) {
            q0.g.b(from, this);
        } else {
            boolean z10 = from.getFactory2() instanceof g;
        }
    }

    public final void m0(int i10) {
        this.Z = (1 << i10) | this.Z;
        if (this.Y) {
            return;
        }
        q0.b0.l0(this.f833k.getDecorView(), this.f825a0);
        this.Y = true;
    }

    @Override // androidx.appcompat.app.f
    public void n() {
        androidx.appcompat.app.a l10 = l();
        if (l10 == null || !l10.l()) {
            m0(0);
        }
    }

    public final boolean n0() {
        if (!this.V && (this.f831i instanceof Activity)) {
            PackageManager packageManager = this.f832j.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                int i10 = Build.VERSION.SDK_INT;
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.f832j, this.f831i.getClass()), i10 >= 29 ? 269221888 : i10 >= 24 ? 786432 : 0);
                this.U = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException unused) {
                this.U = false;
            }
        }
        this.V = true;
        return this.U;
    }

    @Override // androidx.appcompat.app.f
    public void o(Configuration configuration) {
        androidx.appcompat.app.a l10;
        if (this.F && this.f848z && (l10 = l()) != null) {
            l10.m(configuration);
        }
        androidx.appcompat.widget.j.b().g(this.f832j);
        this.R = new Configuration(this.f832j.getResources().getConfiguration());
        I(false);
    }

    public boolean o0() {
        return this.f847y;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return T(view, str, context, attributeSet);
    }

    @Override // androidx.appcompat.view.menu.e.a
    public boolean onMenuItemSelected(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
        v a02;
        Window.Callback h02 = h0();
        if (h02 == null || this.Q || (a02 = a0(eVar.getRootMenu())) == null) {
            return false;
        }
        return h02.onMenuItemSelected(a02.f872a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.e.a
    public void onMenuModeChange(androidx.appcompat.view.menu.e eVar) {
        D0(true);
    }

    @Override // androidx.appcompat.app.f
    public void p(Bundle bundle) {
        this.O = true;
        I(false);
        Z();
        Object obj = this.f831i;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = e0.h.c((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                androidx.appcompat.app.a A0 = A0();
                if (A0 == null) {
                    this.f826b0 = true;
                } else {
                    A0.r(true);
                }
            }
            androidx.appcompat.app.f.a(this);
        }
        this.R = new Configuration(this.f832j.getResources().getConfiguration());
        this.P = true;
    }

    public int p0(Context context, int i10) {
        if (i10 == -100) {
            return -1;
        }
        if (i10 != -1) {
            if (i10 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return e0(context).c();
                }
                return -1;
            }
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3) {
                    return d0(context).c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    @Override // androidx.appcompat.app.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void q() {
        androidx.appcompat.app.a aVar;
        if (this.f831i instanceof Activity) {
            androidx.appcompat.app.f.w(this);
        }
        if (this.Y) {
            this.f833k.getDecorView().removeCallbacks(this.f825a0);
        }
        this.Q = true;
        if (this.S != -100) {
            Object obj = this.f831i;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                f819g0.put(this.f831i.getClass().getName(), Integer.valueOf(this.S));
                aVar = this.f836n;
                if (aVar != null) {
                    aVar.n();
                }
                O();
            }
        }
        f819g0.remove(this.f831i.getClass().getName());
        aVar = this.f836n;
        if (aVar != null) {
        }
        O();
    }

    public boolean q0() {
        j.b bVar = this.f842t;
        if (bVar != null) {
            bVar.a();
            return true;
        }
        androidx.appcompat.app.a l10 = l();
        return l10 != null && l10.h();
    }

    @Override // androidx.appcompat.app.f
    public void r(Bundle bundle) {
        Y();
    }

    public boolean r0(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            this.N = (keyEvent.getFlags() & 128) != 0;
        } else if (i10 == 82) {
            s0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void s() {
        androidx.appcompat.app.a l10 = l();
        if (l10 != null) {
            l10.w(true);
        }
    }

    public final boolean s0(int i10, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        v f02 = f0(i10, true);
        if (f02.f886o) {
            return false;
        }
        return C0(f02, keyEvent);
    }

    @Override // androidx.appcompat.app.f
    public void t(Bundle bundle) {
    }

    public boolean t0(int i10, KeyEvent keyEvent) {
        androidx.appcompat.app.a l10 = l();
        if (l10 != null && l10.o(i10, keyEvent)) {
            return true;
        }
        v vVar = this.M;
        if (vVar != null && B0(vVar, keyEvent.getKeyCode(), keyEvent, 1)) {
            v vVar2 = this.M;
            if (vVar2 != null) {
                vVar2.f885n = true;
            }
            return true;
        }
        if (this.M == null) {
            v f02 = f0(0, true);
            C0(f02, keyEvent);
            boolean B0 = B0(f02, keyEvent.getKeyCode(), keyEvent, 1);
            f02.f884m = false;
            if (B0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void u() {
        H();
    }

    public boolean u0(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            boolean z10 = this.N;
            this.N = false;
            v f02 = f0(0, false);
            if (f02 != null && f02.f886o) {
                if (!z10) {
                    Q(f02, true);
                }
                return true;
            }
            if (q0()) {
                return true;
            }
        } else if (i10 == 82) {
            v0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void v() {
        androidx.appcompat.app.a l10 = l();
        if (l10 != null) {
            l10.w(false);
        }
    }

    public final boolean v0(int i10, KeyEvent keyEvent) {
        boolean z10;
        AudioManager audioManager;
        b0 b0Var;
        if (this.f842t != null) {
            return false;
        }
        boolean z11 = true;
        v f02 = f0(i10, true);
        if (i10 == 0 && (b0Var = this.f839q) != null && b0Var.g() && !ViewConfiguration.get(this.f832j).hasPermanentMenuKey()) {
            if (!this.f839q.b()) {
                if (!this.Q && C0(f02, keyEvent)) {
                    z11 = this.f839q.f();
                }
                z11 = false;
            } else {
                z11 = this.f839q.e();
            }
        } else {
            boolean z12 = f02.f886o;
            if (!z12 && !f02.f885n) {
                if (f02.f884m) {
                    if (f02.f889r) {
                        f02.f884m = false;
                        z10 = C0(f02, keyEvent);
                    } else {
                        z10 = true;
                    }
                    if (z10) {
                        z0(f02, keyEvent);
                    }
                }
                z11 = false;
            } else {
                Q(f02, true);
                z11 = z12;
            }
        }
        if (z11 && (audioManager = (AudioManager) this.f832j.getApplicationContext().getSystemService("audio")) != null) {
            audioManager.playSoundEffect(0);
        }
        return z11;
    }

    public void w0(int i10) {
        androidx.appcompat.app.a l10;
        if (i10 != 108 || (l10 = l()) == null) {
            return;
        }
        l10.i(true);
    }

    public void x0(int i10) {
        if (i10 == 108) {
            androidx.appcompat.app.a l10 = l();
            if (l10 != null) {
                l10.i(false);
                return;
            }
            return;
        }
        if (i10 == 0) {
            v f02 = f0(i10, true);
            if (f02.f886o) {
                Q(f02, false);
            }
        }
    }

    @Override // androidx.appcompat.app.f
    public boolean y(int i10) {
        int E0 = E0(i10);
        if (this.J && E0 == 108) {
            return false;
        }
        if (this.F && E0 == 1) {
            this.F = false;
        }
        if (E0 == 1) {
            I0();
            this.J = true;
            return true;
        }
        if (E0 == 2) {
            I0();
            this.D = true;
            return true;
        }
        if (E0 == 5) {
            I0();
            this.E = true;
            return true;
        }
        if (E0 == 10) {
            I0();
            this.H = true;
            return true;
        }
        if (E0 == 108) {
            I0();
            this.F = true;
            return true;
        }
        if (E0 != 109) {
            return this.f833k.requestFeature(E0);
        }
        I0();
        this.G = true;
        return true;
    }

    public void y0(ViewGroup viewGroup) {
    }

    public final void z0(v vVar, KeyEvent keyEvent) {
        int i10;
        ViewGroup.LayoutParams layoutParams;
        if (vVar.f886o || this.Q) {
            return;
        }
        if (vVar.f872a == 0) {
            if ((this.f832j.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback h02 = h0();
        if (h02 != null && !h02.onMenuOpened(vVar.f872a, vVar.f881j)) {
            Q(vVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f832j.getSystemService("window");
        if (windowManager != null && C0(vVar, keyEvent)) {
            ViewGroup viewGroup = vVar.f878g;
            if (viewGroup != null && !vVar.f888q) {
                View view = vVar.f880i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i10 = -1;
                    vVar.f885n = false;
                    WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i10, -2, vVar.f875d, vVar.f876e, CredentialsApi.ACTIVITY_RESULT_NO_HINTS_AVAILABLE, 8519680, -3);
                    layoutParams2.gravity = vVar.f874c;
                    layoutParams2.windowAnimations = vVar.f877f;
                    windowManager.addView(vVar.f878g, layoutParams2);
                    vVar.f886o = true;
                }
            } else {
                if (viewGroup == null) {
                    if (!k0(vVar) || vVar.f878g == null) {
                        return;
                    }
                } else if (vVar.f888q && viewGroup.getChildCount() > 0) {
                    vVar.f878g.removeAllViews();
                }
                if (j0(vVar) && vVar.b()) {
                    ViewGroup.LayoutParams layoutParams3 = vVar.f879h.getLayoutParams();
                    if (layoutParams3 == null) {
                        layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                    }
                    vVar.f878g.setBackgroundResource(vVar.f873b);
                    ViewParent parent = vVar.f879h.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(vVar.f879h);
                    }
                    vVar.f878g.addView(vVar.f879h, layoutParams3);
                    if (!vVar.f879h.hasFocus()) {
                        vVar.f879h.requestFocus();
                    }
                } else {
                    vVar.f888q = true;
                    return;
                }
            }
            i10 = -2;
            vVar.f885n = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i10, -2, vVar.f875d, vVar.f876e, CredentialsApi.ACTIVITY_RESULT_NO_HINTS_AVAILABLE, 8519680, -3);
            layoutParams22.gravity = vVar.f874c;
            layoutParams22.windowAnimations = vVar.f877f;
            windowManager.addView(vVar.f878g, layoutParams22);
            vVar.f886o = true;
        }
    }

    public g(Dialog dialog, e.a aVar) {
        this(dialog.getContext(), dialog.getWindow(), aVar, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    public g(Context context, Window window, e.a aVar, Object obj) {
        s.g<String, Integer> gVar;
        Integer num;
        androidx.appcompat.app.e J0;
        this.f846x = null;
        this.f847y = true;
        this.S = -100;
        this.f825a0 = new b();
        this.f832j = context;
        this.f835m = aVar;
        this.f831i = obj;
        if (this.S == -100 && (obj instanceof Dialog) && (J0 = J0()) != null) {
            this.S = J0.getDelegate().j();
        }
        if (this.S == -100 && (num = (gVar = f819g0).get(obj.getClass().getName())) != null) {
            this.S = num.intValue();
            gVar.remove(obj.getClass().getName());
        }
        if (window != null) {
            K(window);
        }
        androidx.appcompat.widget.j.h();
    }

    /* compiled from: AppCompatDelegateImpl.java */
    /* loaded from: classes.dex */
    public class p extends j.i {

        /* renamed from: g, reason: collision with root package name */
        public i f862g;

        public p(Window.Callback callback) {
            super(callback);
        }

        public void b(i iVar) {
            this.f862g = iVar;
        }

        public final ActionMode c(ActionMode.Callback callback) {
            f.a aVar = new f.a(g.this.f832j, callback);
            j.b G = g.this.G(aVar);
            if (G != null) {
                return aVar.e(G);
            }
            return null;
        }

        @Override // j.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return g.this.V(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // j.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || g.this.t0(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // j.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i10, Menu menu) {
            if (i10 != 0 || (menu instanceof androidx.appcompat.view.menu.e)) {
                return super.onCreatePanelMenu(i10, menu);
            }
            return false;
        }

        @Override // j.i, android.view.Window.Callback
        public View onCreatePanelView(int i10) {
            View onCreatePanelView;
            i iVar = this.f862g;
            return (iVar == null || (onCreatePanelView = iVar.onCreatePanelView(i10)) == null) ? super.onCreatePanelView(i10) : onCreatePanelView;
        }

        @Override // j.i, android.view.Window.Callback
        public boolean onMenuOpened(int i10, Menu menu) {
            super.onMenuOpened(i10, menu);
            g.this.w0(i10);
            return true;
        }

        @Override // j.i, android.view.Window.Callback
        public void onPanelClosed(int i10, Menu menu) {
            super.onPanelClosed(i10, menu);
            g.this.x0(i10);
        }

        @Override // j.i, android.view.Window.Callback
        public boolean onPreparePanel(int i10, View view, Menu menu) {
            androidx.appcompat.view.menu.e eVar = menu instanceof androidx.appcompat.view.menu.e ? (androidx.appcompat.view.menu.e) menu : null;
            if (i10 == 0 && eVar == null) {
                return false;
            }
            if (eVar != null) {
                eVar.setOverrideVisibleItems(true);
            }
            i iVar = this.f862g;
            boolean z10 = iVar != null && iVar.a(i10);
            if (!z10) {
                z10 = super.onPreparePanel(i10, view, menu);
            }
            if (eVar != null) {
                eVar.setOverrideVisibleItems(false);
            }
            return z10;
        }

        @Override // j.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i10) {
            androidx.appcompat.view.menu.e eVar;
            v f02 = g.this.f0(0, true);
            if (f02 != null && (eVar = f02.f881j) != null) {
                super.onProvideKeyboardShortcuts(list, eVar, i10);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i10);
            }
        }

        @Override // j.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (g.this.o0()) {
                return c(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        @Override // j.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i10) {
            if (g.this.o0() && i10 == 0) {
                return c(callback);
            }
            return super.onWindowStartingActionMode(callback, i10);
        }
    }
}
