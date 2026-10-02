package e0;

import android.app.Activity;
import android.app.ActivityOptions;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;

/* compiled from: ActivityOptionsCompat.java */
/* loaded from: classes.dex */
public class c {

    /* compiled from: ActivityOptionsCompat.java */
    /* loaded from: classes.dex */
    public static class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public final ActivityOptions f5836a;

        public a(ActivityOptions activityOptions) {
            this.f5836a = activityOptions;
        }

        @Override // e0.c
        public Bundle c() {
            return this.f5836a.toBundle();
        }
    }

    public static c a(View view, int i10, int i11, int i12, int i13) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new a(ActivityOptions.makeScaleUpAnimation(view, i10, i11, i12, i13));
        }
        return new c();
    }

    public static c b(Activity activity, p0.e<View, String>... eVarArr) {
        if (Build.VERSION.SDK_INT >= 21) {
            Pair[] pairArr = null;
            if (eVarArr != null) {
                pairArr = new Pair[eVarArr.length];
                for (int i10 = 0; i10 < eVarArr.length; i10++) {
                    pairArr[i10] = Pair.create(eVarArr[i10].f11990a, eVarArr[i10].f11991b);
                }
            }
            return new a(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr));
        }
        return new c();
    }

    public Bundle c() {
        return null;
    }
}
