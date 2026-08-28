package x1;

import android.animation.LayoutTransition;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewGroupUtilsApi14.java */
/* loaded from: classes.dex */
public class a0 {

    /* renamed from: a, reason: collision with root package name */
    public static LayoutTransition f15673a;

    /* renamed from: b, reason: collision with root package name */
    public static Field f15674b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f15675c;

    /* renamed from: d, reason: collision with root package name */
    public static Method f15676d;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f15677e;

    /* compiled from: ViewGroupUtilsApi14.java */
    /* loaded from: classes.dex */
    public static class a extends LayoutTransition {
        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }
    }

    public static void a(LayoutTransition layoutTransition) {
        if (!f15677e) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f15676d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f15677e = true;
        }
        Method method = f15676d;
        if (method != null) {
            try {
                method.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
    }

    public static void b(ViewGroup viewGroup, boolean z10) {
        boolean z11 = false;
        if (f15673a == null) {
            a aVar = new a();
            f15673a = aVar;
            aVar.setAnimator(2, null);
            f15673a.setAnimator(0, null);
            f15673a.setAnimator(1, null);
            f15673a.setAnimator(3, null);
            f15673a.setAnimator(4, null);
        }
        if (z10) {
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null) {
                if (layoutTransition.isRunning()) {
                    a(layoutTransition);
                }
                if (layoutTransition != f15673a) {
                    viewGroup.setTag(k.f15761d, layoutTransition);
                }
            }
            viewGroup.setLayoutTransition(f15673a);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!f15675c) {
            try {
                Field declaredField = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                f15674b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f15675c = true;
        }
        Field field = f15674b;
        if (field != null) {
            try {
                boolean z12 = field.getBoolean(viewGroup);
                if (z12) {
                    try {
                        f15674b.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException unused2) {
                    }
                }
                z11 = z12;
            } catch (IllegalAccessException unused3) {
            }
        }
        if (z11) {
            viewGroup.requestLayout();
        }
        int i10 = k.f15761d;
        LayoutTransition layoutTransition2 = (LayoutTransition) viewGroup.getTag(i10);
        if (layoutTransition2 != null) {
            viewGroup.setTag(i10, null);
            viewGroup.setLayoutTransition(layoutTransition2);
        }
    }
}
