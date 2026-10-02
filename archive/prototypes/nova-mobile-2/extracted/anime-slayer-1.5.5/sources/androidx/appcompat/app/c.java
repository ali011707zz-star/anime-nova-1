package androidx.appcompat.app;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;

/* compiled from: ActionBarDrawerToggleHoneycomb.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f809a = {R.attr.homeAsUpIndicator};

    /* compiled from: ActionBarDrawerToggleHoneycomb.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public Method f810a;

        /* renamed from: b, reason: collision with root package name */
        public Method f811b;

        /* renamed from: c, reason: collision with root package name */
        public ImageView f812c;

        public a(Activity activity) {
            try {
                this.f810a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.f811b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException unused) {
                View findViewById = activity.findViewById(R.id.home);
                if (findViewById == null) {
                    return;
                }
                ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                if (viewGroup.getChildCount() != 2) {
                    return;
                }
                View childAt = viewGroup.getChildAt(0);
                childAt = childAt.getId() == 16908332 ? viewGroup.getChildAt(1) : childAt;
                if (childAt instanceof ImageView) {
                    this.f812c = (ImageView) childAt;
                }
            }
        }
    }

    public static Drawable a(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(f809a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    public static a b(a aVar, Activity activity, int i10) {
        if (aVar == null) {
            aVar = new a(activity);
        }
        if (aVar.f810a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                aVar.f811b.invoke(actionBar, Integer.valueOf(i10));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception unused) {
            }
        }
        return aVar;
    }

    public static a c(Activity activity, Drawable drawable, int i10) {
        a aVar = new a(activity);
        if (aVar.f810a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                aVar.f810a.invoke(actionBar, drawable);
                aVar.f811b.invoke(actionBar, Integer.valueOf(i10));
            } catch (Exception unused) {
            }
        } else {
            ImageView imageView = aVar.f812c;
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        }
        return aVar;
    }
}
