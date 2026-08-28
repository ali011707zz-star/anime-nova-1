package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: FragmentHostCallback.java */
/* loaded from: classes.dex */
public abstract class j<E> extends g {

    /* renamed from: f, reason: collision with root package name */
    public final Activity f2246f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f2247g;

    /* renamed from: h, reason: collision with root package name */
    public final Handler f2248h;

    /* renamed from: i, reason: collision with root package name */
    public final int f2249i;

    /* renamed from: j, reason: collision with root package name */
    public final FragmentManager f2250j;

    public j(e eVar) {
        this(eVar, eVar, new Handler(), 0);
    }

    @Override // androidx.fragment.app.g
    public View c(int i10) {
        return null;
    }

    @Override // androidx.fragment.app.g
    public boolean d() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Activity e() {
        return this.f2246f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context f() {
        return this.f2247g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Handler g() {
        return this.f2248h;
    }

    public void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public abstract E i();

    public LayoutInflater j() {
        return LayoutInflater.from(this.f2247g);
    }

    @Deprecated
    public void k(Fragment fragment, String[] strArr, int i10) {
    }

    public boolean l(Fragment fragment) {
        return true;
    }

    public boolean m(String str) {
        return false;
    }

    public void n(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i10, Bundle bundle) {
        if (i10 == -1) {
            f0.a.n(this.f2247g, intent, bundle);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    @Deprecated
    public void o(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        if (i10 == -1) {
            e0.a.y(this.f2246f, intentSender, i10, intent, i11, i12, i13, bundle);
            return;
        }
        throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
    }

    public void p() {
    }

    public j(Activity activity, Context context, Handler handler, int i10) {
        this.f2250j = new o();
        this.f2246f = activity;
        this.f2247g = (Context) p0.i.h(context, "context == null");
        this.f2248h = (Handler) p0.i.h(handler, "handler == null");
        this.f2249i = i10;
    }
}
