package e0;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Arrays;

/* compiled from: ActivityCompat.java */
/* loaded from: classes.dex */
public class a extends f0.a {

    /* renamed from: d, reason: collision with root package name */
    public static d f5831d;

    /* compiled from: ActivityCompat.java */
    /* renamed from: e0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0110a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String[] f5832f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Activity f5833g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f5834h;

        public RunnableC0110a(String[] strArr, Activity activity, int i10) {
            this.f5832f = strArr;
            this.f5833g = activity;
            this.f5834h = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f5832f.length];
            PackageManager packageManager = this.f5833g.getPackageManager();
            String packageName = this.f5833g.getPackageName();
            int length = this.f5832f.length;
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = packageManager.checkPermission(this.f5832f[i10], packageName);
            }
            ((c) this.f5833g).onRequestPermissionsResult(this.f5834h, this.f5832f, iArr);
        }
    }

    /* compiled from: ActivityCompat.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Activity f5835f;

        public b(Activity activity) {
            this.f5835f = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f5835f.isFinishing() || e0.d.i(this.f5835f)) {
                return;
            }
            this.f5835f.recreate();
        }
    }

    /* compiled from: ActivityCompat.java */
    /* loaded from: classes.dex */
    public interface c {
        void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr);
    }

    /* compiled from: ActivityCompat.java */
    /* loaded from: classes.dex */
    public interface d {
        boolean a(Activity activity, String[] strArr, int i10);
    }

    /* compiled from: ActivityCompat.java */
    /* loaded from: classes.dex */
    public interface e {
        void validateRequestPermissionsRequestCode(int i10);
    }

    public static void p(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void q(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    public static void r(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void s(Activity activity) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            activity.recreate();
        } else if (i10 <= 23) {
            new Handler(activity.getMainLooper()).post(new b(activity));
        } else {
            if (e0.d.i(activity)) {
                return;
            }
            activity.recreate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void t(Activity activity, String[] strArr, int i10) {
        d dVar = f5831d;
        if (dVar == null || !dVar.a(activity, strArr, i10)) {
            for (String str : strArr) {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
                }
            }
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof e) {
                    ((e) activity).validateRequestPermissionsRequestCode(i10);
                }
                activity.requestPermissions(strArr, i10);
            } else if (activity instanceof c) {
                new Handler(Looper.getMainLooper()).post(new RunnableC0110a(strArr, activity, i10));
            }
        }
    }

    public static void u(Activity activity, o oVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(null);
        }
    }

    public static void v(Activity activity, o oVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(null);
        }
    }

    public static boolean w(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    public static void x(Activity activity, Intent intent, int i10, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i10, bundle);
        } else {
            activity.startActivityForResult(intent, i10);
        }
    }

    public static void y(Activity activity, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13);
        }
    }

    public static void z(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }
}
