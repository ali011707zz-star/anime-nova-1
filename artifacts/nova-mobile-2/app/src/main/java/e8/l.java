package e8;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RequestManagerRetriever.java */
/* loaded from: classes.dex */
public class l implements Handler.Callback {

    /* renamed from: i, reason: collision with root package name */
    public static final b f6213i = new a();

    /* renamed from: a, reason: collision with root package name */
    public volatile com.bumptech.glide.j f6214a;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f6217d;

    /* renamed from: e, reason: collision with root package name */
    public final b f6218e;

    /* renamed from: b, reason: collision with root package name */
    public final Map<FragmentManager, k> f6215b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final Map<androidx.fragment.app.FragmentManager, o> f6216c = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final s.a<View, Fragment> f6219f = new s.a<>();

    /* renamed from: g, reason: collision with root package name */
    public final s.a<View, android.app.Fragment> f6220g = new s.a<>();

    /* renamed from: h, reason: collision with root package name */
    public final Bundle f6221h = new Bundle();

    /* compiled from: RequestManagerRetriever.java */
    /* loaded from: classes.dex */
    public class a implements b {
        @Override // e8.l.b
        public com.bumptech.glide.j a(com.bumptech.glide.c cVar, h hVar, m mVar, Context context) {
            return new com.bumptech.glide.j(cVar, hVar, mVar, context);
        }
    }

    /* compiled from: RequestManagerRetriever.java */
    /* loaded from: classes.dex */
    public interface b {
        com.bumptech.glide.j a(com.bumptech.glide.c cVar, h hVar, m mVar, Context context);
    }

    public l(b bVar) {
        this.f6218e = bVar == null ? f6213i : bVar;
        this.f6217d = new Handler(Looper.getMainLooper(), this);
    }

    @TargetApi(17)
    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    public static Activity b(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return b(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void e(Collection<Fragment> collection, Map<View, Fragment> map) {
        if (collection == null) {
            return;
        }
        for (Fragment fragment : collection) {
            if (fragment != null && fragment.getView() != null) {
                map.put(fragment.getView(), fragment);
                e(fragment.getChildFragmentManager().t0(), map);
            }
        }
    }

    public static boolean t(Context context) {
        Activity b10 = b(context);
        return b10 == null || !b10.isFinishing();
    }

    @TargetApi(26)
    @Deprecated
    public final void c(FragmentManager fragmentManager, s.a<View, android.app.Fragment> aVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            for (android.app.Fragment fragment : fragmentManager.getFragments()) {
                if (fragment.getView() != null) {
                    aVar.put(fragment.getView(), fragment);
                    c(fragment.getChildFragmentManager(), aVar);
                }
            }
            return;
        }
        d(fragmentManager, aVar);
    }

    @Deprecated
    public final void d(FragmentManager fragmentManager, s.a<View, android.app.Fragment> aVar) {
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            this.f6221h.putInt("key", i10);
            android.app.Fragment fragment = null;
            try {
                fragment = fragmentManager.getFragment(this.f6221h, "key");
            } catch (Exception unused) {
            }
            if (fragment == null) {
                return;
            }
            if (fragment.getView() != null) {
                aVar.put(fragment.getView(), fragment);
                if (Build.VERSION.SDK_INT >= 17) {
                    c(fragment.getChildFragmentManager(), aVar);
                }
            }
            i10 = i11;
        }
    }

    @Deprecated
    public final android.app.Fragment f(View view, Activity activity) {
        this.f6220g.clear();
        c(activity.getFragmentManager(), this.f6220g);
        View findViewById = activity.findViewById(R.id.content);
        android.app.Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f6220g.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f6220g.clear();
        return fragment;
    }

    public final Fragment g(View view, androidx.fragment.app.e eVar) {
        this.f6219f.clear();
        e(eVar.getSupportFragmentManager().t0(), this.f6219f);
        View findViewById = eVar.findViewById(R.id.content);
        Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f6219f.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f6219f.clear();
        return fragment;
    }

    @Deprecated
    public final com.bumptech.glide.j h(Context context, FragmentManager fragmentManager, android.app.Fragment fragment, boolean z10) {
        k q10 = q(fragmentManager, fragment, z10);
        com.bumptech.glide.j e10 = q10.e();
        if (e10 != null) {
            return e10;
        }
        com.bumptech.glide.j a10 = this.f6218e.a(com.bumptech.glide.c.c(context), q10.c(), q10.f(), context);
        q10.k(a10);
        return a10;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        Object remove;
        Object obj2;
        int i10 = message.what;
        Object obj3 = null;
        boolean z10 = true;
        if (i10 == 1) {
            obj = (FragmentManager) message.obj;
            remove = this.f6215b.remove(obj);
        } else if (i10 == 2) {
            obj = (androidx.fragment.app.FragmentManager) message.obj;
            remove = this.f6216c.remove(obj);
        } else {
            z10 = false;
            obj2 = null;
            if (z10 && obj3 == null && Log.isLoggable("RMRetriever", 5)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to remove expected request manager fragment, manager: ");
                sb2.append(obj2);
            }
            return z10;
        }
        Object obj4 = obj;
        obj3 = remove;
        obj2 = obj4;
        if (z10) {
            StringBuilder sb22 = new StringBuilder();
            sb22.append("Failed to remove expected request manager fragment, manager: ");
            sb22.append(obj2);
        }
        return z10;
    }

    public com.bumptech.glide.j i(Activity activity) {
        if (l8.k.p()) {
            return k(activity.getApplicationContext());
        }
        a(activity);
        return h(activity, activity.getFragmentManager(), null, t(activity));
    }

    @TargetApi(17)
    @Deprecated
    public com.bumptech.glide.j j(android.app.Fragment fragment) {
        if (fragment.getActivity() != null) {
            if (!l8.k.p() && Build.VERSION.SDK_INT >= 17) {
                return h(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
            }
            return k(fragment.getActivity().getApplicationContext());
        }
        throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
    }

    public com.bumptech.glide.j k(Context context) {
        if (context != null) {
            if (l8.k.q() && !(context instanceof Application)) {
                if (context instanceof androidx.fragment.app.e) {
                    return n((androidx.fragment.app.e) context);
                }
                if (context instanceof Activity) {
                    return i((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return k(contextWrapper.getBaseContext());
                    }
                }
            }
            return o(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    public com.bumptech.glide.j l(View view) {
        if (l8.k.p()) {
            return k(view.getContext().getApplicationContext());
        }
        l8.j.d(view);
        l8.j.e(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity b10 = b(view.getContext());
        if (b10 == null) {
            return k(view.getContext().getApplicationContext());
        }
        if (b10 instanceof androidx.fragment.app.e) {
            androidx.fragment.app.e eVar = (androidx.fragment.app.e) b10;
            Fragment g10 = g(view, eVar);
            return g10 != null ? m(g10) : n(eVar);
        }
        android.app.Fragment f10 = f(view, b10);
        if (f10 == null) {
            return i(b10);
        }
        return j(f10);
    }

    public com.bumptech.glide.j m(Fragment fragment) {
        l8.j.e(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (l8.k.p()) {
            return k(fragment.getContext().getApplicationContext());
        }
        return u(fragment.getContext(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    public com.bumptech.glide.j n(androidx.fragment.app.e eVar) {
        if (l8.k.p()) {
            return k(eVar.getApplicationContext());
        }
        a(eVar);
        return u(eVar, eVar.getSupportFragmentManager(), null, t(eVar));
    }

    public final com.bumptech.glide.j o(Context context) {
        if (this.f6214a == null) {
            synchronized (this) {
                if (this.f6214a == null) {
                    this.f6214a = this.f6218e.a(com.bumptech.glide.c.c(context.getApplicationContext()), new e8.b(), new g(), context.getApplicationContext());
                }
            }
        }
        return this.f6214a;
    }

    @Deprecated
    public k p(Activity activity) {
        return q(activity.getFragmentManager(), null, t(activity));
    }

    public final k q(FragmentManager fragmentManager, android.app.Fragment fragment, boolean z10) {
        k kVar = (k) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (kVar == null && (kVar = this.f6215b.get(fragmentManager)) == null) {
            kVar = new k();
            kVar.j(fragment);
            if (z10) {
                kVar.c().d();
            }
            this.f6215b.put(fragmentManager, kVar);
            fragmentManager.beginTransaction().add(kVar, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.f6217d.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return kVar;
    }

    public o r(Context context, androidx.fragment.app.FragmentManager fragmentManager) {
        return s(fragmentManager, null, t(context));
    }

    public final o s(androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment, boolean z10) {
        o oVar = (o) fragmentManager.i0("com.bumptech.glide.manager");
        if (oVar == null && (oVar = this.f6216c.get(fragmentManager)) == null) {
            oVar = new o();
            oVar.O(fragment);
            if (z10) {
                oVar.G().d();
            }
            this.f6216c.put(fragmentManager, oVar);
            fragmentManager.m().f(oVar, "com.bumptech.glide.manager").j();
            this.f6217d.obtainMessage(2, fragmentManager).sendToTarget();
        }
        return oVar;
    }

    public final com.bumptech.glide.j u(Context context, androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment, boolean z10) {
        o s10 = s(fragmentManager, fragment, z10);
        com.bumptech.glide.j I = s10.I();
        if (I != null) {
            return I;
        }
        com.bumptech.glide.j a10 = this.f6218e.a(com.bumptech.glide.c.c(context), s10.G(), s10.J(), context);
        s10.P(a10);
        return a10;
    }
}
