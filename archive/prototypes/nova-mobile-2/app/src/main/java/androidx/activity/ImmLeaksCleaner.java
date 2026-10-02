package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.k;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
final class ImmLeaksCleaner implements n {

    /* renamed from: g, reason: collision with root package name */
    public static int f663g;

    /* renamed from: h, reason: collision with root package name */
    public static Field f664h;

    /* renamed from: i, reason: collision with root package name */
    public static Field f665i;

    /* renamed from: j, reason: collision with root package name */
    public static Field f666j;

    /* renamed from: f, reason: collision with root package name */
    public Activity f667f;

    public ImmLeaksCleaner(Activity activity) {
        this.f667f = activity;
    }

    public static void a() {
        try {
            f663g = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f665i = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            f666j = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f664h = declaredField3;
            declaredField3.setAccessible(true);
            f663g = 1;
        } catch (NoSuchFieldException unused) {
        }
    }

    @Override // androidx.lifecycle.n
    public void e(q qVar, k.b bVar) {
        if (bVar != k.b.ON_DESTROY) {
            return;
        }
        if (f663g == 0) {
            a();
        }
        if (f663g == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f667f.getSystemService("input_method");
            try {
                Object obj = f664h.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f665i.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f666j.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused2) {
                    } catch (IllegalAccessException unused3) {
                    }
                }
            } catch (IllegalAccessException unused4) {
            }
        }
    }
}
