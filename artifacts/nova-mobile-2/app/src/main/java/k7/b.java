package k7;

import android.app.ActivityManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.PowerManager;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;
import cc.k;
import com.anslayer.App;
import com.anslayer.R;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.ImagesContract;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import ic.p;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.util.SupportAnalyticUtil;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import jc.l;
import okhttp3.Call;
import okhttp3.Request;
import p.a;
import p.b;
import qc.t;
import rc.g1;
import rc.i;
import rc.q0;

/* compiled from: ContextExtensions.kt */
/* loaded from: classes.dex */
public final class b {

    /* compiled from: ContextExtensions.kt */
    @cc.f(c = "com.anslayer.util.system.ContextExtensionsKt$isHostReachable$2", f = "ContextExtensions.kt", l = {107}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends k implements p<q0, ac.d<? super Boolean>, Object> {

        /* renamed from: f */
        public int f10052f;

        /* renamed from: g */
        public final /* synthetic */ Request f10053g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Request request, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f10053g = request;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f10053g, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super Boolean> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f10052f;
            boolean z10 = true;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    Call newCall = z3.b.f17284d.a().newCall(this.f10053g);
                    l.e(newCall, "RetroFactory.client.newCall(request)");
                    this.f10052f = 1;
                    if (x4.b.a(newCall, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
            } catch (Exception unused) {
                z10 = false;
            }
            return cc.b.a(z10);
        }
    }

    public static final PowerManager.WakeLock a(Context context, String str) {
        l.f(context, "<this>");
        l.f(str, "tag");
        PowerManager.WakeLock newWakeLock = h(context).newWakeLock(1, l.m(str, ":WakeLock"));
        newWakeLock.acquire();
        l.e(newWakeLock, "wakeLock");
        return newWakeLock;
    }

    public static final void b(Context context, CharSequence charSequence, int i10) {
        l.f(context, "<this>");
        l.f(charSequence, "str");
        try {
            Object k10 = f0.a.k(context, ClipboardManager.class);
            l.c(k10);
            ((ClipboardManager) k10).setPrimaryClip(ClipData.newPlainText("label", charSequence));
            q(context, i10, 0, 2, null);
        } catch (Exception e10) {
            bd.c cVar = bd.c.DEBUG;
            bd.e a10 = bd.e.f3616a.a();
            if (a10.b(cVar)) {
                a10.a(cVar, bd.d.a(context), bd.f.a(e10));
            }
        }
    }

    public static final void c(Context context, String str, String str2) {
        l.f(context, "<this>");
        l.f(str, "label");
        l.f(str2, "content");
        if (t.s(str2)) {
            return;
        }
        Object systemService = context.getSystemService("clipboard");
        if (systemService != null) {
            ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(str, str2));
            r(context, context.getString(R.string.copied_to_clipboard, e7.e.d(str2, 50, null, 2, null)), 0, 2, null);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.content.ClipboardManager");
    }

    public static final SupportAnalyticUtil d(Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            return ((App) applicationContext).d();
        }
        throw new NullPointerException("null cannot be cast to non-null type com.anslayer.App");
    }

    public static final String e(Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            return ((App) applicationContext).e();
        }
        throw new NullPointerException("null cannot be cast to non-null type com.anslayer.App");
    }

    public static final Display f(Context context) {
        l.f(context, "<this>");
        WindowManager windowManager = (WindowManager) f0.a.k(context, WindowManager.class);
        if (windowManager == null) {
            return null;
        }
        return windowManager.getDefaultDisplay();
    }

    public static final int g(int i10) {
        return (int) (i10 * Resources.getSystem().getDisplayMetrics().density);
    }

    public static final PowerManager h(Context context) {
        l.f(context, "<this>");
        Object systemService = context.getSystemService("power");
        if (systemService != null) {
            return (PowerManager) systemService;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.os.PowerManager");
    }

    public static final float i(int i10) {
        return i10 * Resources.getSystem().getDisplayMetrics().scaledDensity;
    }

    public static final Object j(Context context, ac.d<? super Boolean> dVar) {
        if (!SupportExtentionKt.isConnectedToNetwork(context)) {
            return cc.b.a(false);
        }
        Request build = new Request.Builder().url("https://animenovaa.duckdns.org").head().build();
        l.e(build, "Builder()\n        .url(\"… .head()\n        .build()");
        return i.g(g1.b(), new a(build, null), dVar);
    }

    public static final boolean k(Context context, Class<?> cls) {
        l.f(context, "<this>");
        l.f(cls, "serviceClass");
        String name = cls.getName();
        Object systemService = context.getSystemService("activity");
        if (systemService != null) {
            List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) systemService).getRunningServices(Api.BaseClientBuilder.API_PRIORITY_OTHER);
            l.e(runningServices, "manager.getRunningServices(Integer.MAX_VALUE)");
            if ((runningServices instanceof Collection) && runningServices.isEmpty()) {
                return false;
            }
            Iterator<T> it2 = runningServices.iterator();
            while (it2.hasNext()) {
                if (l.a(name, ((ActivityManager.RunningServiceInfo) it2.next()).service.getClassName())) {
                    return true;
                }
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.app.ActivityManager");
    }

    public static final void l(Context context, String str) {
        l.f(context, "<this>");
        l.f(str, ImagesContract.URL);
        try {
            try {
                p.b a10 = new b.a().b(new a.C0296a().b(SupportExtentionKt.getColorFromAttr(context, R.attr.colorPrimary)).a()).a();
                l.e(a10, "Builder()\n            .s…   )\n            .build()");
                Uri parse = Uri.parse(str);
                l.e(parse, "parse(this)");
                a10.a(context, parse);
            } catch (Exception e10) {
                r(context, e10.getMessage(), 0, 2, null);
            }
        } catch (Exception unused) {
            Uri parse2 = Uri.parse(str);
            l.e(parse2, "parse(this)");
            context.startActivity(new Intent("android.intent.action.VIEW", parse2));
        }
    }

    public static final Context m(Context context, ProgressLayout progressLayout, int i10, int i11, View.OnClickListener onClickListener) {
        l.f(onClickListener, "stateLayoutOnClick");
        if (context == null) {
            return null;
        }
        if (progressLayout == null) {
            return context;
        }
        if (!progressLayout.h() && !progressLayout.f() && !progressLayout.e()) {
            return context;
        }
        progressLayout.n(SupportExtentionKt.getCompatDrawable(context, R.drawable.ic_support_empty_state), context.getString(i10), context.getString(i11), onClickListener);
        return context;
    }

    public static final void n(Context context, Intent intent, View view) {
        l.f(context, "<this>");
        l.f(intent, "intent");
        l.f(view, "view");
        f0.a.n(context, intent, e0.c.a(view, 0, 0, view.getWidth(), view.getHeight()).c());
    }

    public static final void o(Context context, int i10, int i11) {
        l.f(context, "<this>");
        Toast.makeText(context, i10, i11).show();
    }

    public static final void p(Context context, String str, int i10) {
        l.f(context, "<this>");
        if (str == null) {
            str = "";
        }
        Toast.makeText(context, str, i10).show();
    }

    public static /* synthetic */ void q(Context context, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        o(context, i10, i11);
    }

    public static /* synthetic */ void r(Context context, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        p(context, str, i10);
    }
}
