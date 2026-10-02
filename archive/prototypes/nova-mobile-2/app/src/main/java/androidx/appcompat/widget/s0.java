package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: TintContextWrapper.java */
/* loaded from: classes.dex */
public class s0 extends ContextWrapper {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f1482c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public static ArrayList<WeakReference<s0>> f1483d;

    /* renamed from: a, reason: collision with root package name */
    public final Resources f1484a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources.Theme f1485b;

    public s0(Context context) {
        super(context);
        if (b1.d()) {
            b1 b1Var = new b1(this, context.getResources());
            this.f1484a = b1Var;
            Resources.Theme newTheme = b1Var.newTheme();
            this.f1485b = newTheme;
            newTheme.setTo(context.getTheme());
            return;
        }
        this.f1484a = new u0(this, context.getResources());
        this.f1485b = null;
    }

    public static boolean a(Context context) {
        if ((context instanceof s0) || (context.getResources() instanceof u0) || (context.getResources() instanceof b1)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || b1.d();
    }

    public static Context b(Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (f1482c) {
            ArrayList<WeakReference<s0>> arrayList = f1483d;
            if (arrayList == null) {
                f1483d = new ArrayList<>();
            } else {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    WeakReference<s0> weakReference = f1483d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f1483d.remove(size);
                    }
                }
                for (int size2 = f1483d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<s0> weakReference2 = f1483d.get(size2);
                    s0 s0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (s0Var != null && s0Var.getBaseContext() == context) {
                        return s0Var;
                    }
                }
            }
            s0 s0Var2 = new s0(context);
            f1483d.add(new WeakReference<>(s0Var2));
            return s0Var2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1484a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1484a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1485b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        Resources.Theme theme = this.f1485b;
        if (theme == null) {
            super.setTheme(i10);
        } else {
            theme.applyStyle(i10, true);
        }
    }
}
