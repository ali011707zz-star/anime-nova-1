package f0;

import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothManager;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.RestrictionsManager;
import android.content.pm.LauncherApps;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.hardware.ConsumerIrManager;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.print.PrintManager;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* compiled from: ContextCompat.java */
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f6376a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f6377b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static TypedValue f6378c;

    /* compiled from: ContextCompat.java */
    /* renamed from: f0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0116a {
        public static void a(Context context, Intent[] intentArr, Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        public static void b(Context context, Intent intent, Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    /* compiled from: ContextCompat.java */
    /* loaded from: classes.dex */
    public static class b {
        public static File[] a(Context context) {
            return context.getExternalCacheDirs();
        }

        public static File[] b(Context context, String str) {
            return context.getExternalFilesDirs(str);
        }

        public static File[] c(Context context) {
            return context.getObbDirs();
        }
    }

    /* compiled from: ContextCompat.java */
    /* loaded from: classes.dex */
    public static class c {
        public static File a(Context context) {
            return context.getCodeCacheDir();
        }

        public static Drawable b(Context context, int i10) {
            return context.getDrawable(i10);
        }

        public static File c(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    /* compiled from: ContextCompat.java */
    /* loaded from: classes.dex */
    public static class d {
        public static int a(Context context, int i10) {
            return context.getColor(i10);
        }

        public static <T> T b(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        public static String c(Context context, Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    /* compiled from: ContextCompat.java */
    /* loaded from: classes.dex */
    public static class e {
        public static Context a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }

        public static File b(Context context) {
            return context.getDataDir();
        }

        public static boolean c(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    /* compiled from: ContextCompat.java */
    /* loaded from: classes.dex */
    public static class f {
        public static ComponentName a(Context context, Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    /* compiled from: ContextCompat.java */
    /* loaded from: classes.dex */
    public static class g {
        public static Executor a(Context context) {
            return context.getMainExecutor();
        }
    }

    /* compiled from: ContextCompat.java */
    /* loaded from: classes.dex */
    public static final class h {

        /* renamed from: a, reason: collision with root package name */
        public static final HashMap<Class<?>, String> f6379a;

        static {
            HashMap<Class<?>, String> hashMap = new HashMap<>();
            f6379a = hashMap;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 22) {
                hashMap.put(SubscriptionManager.class, "telephony_subscription_service");
                hashMap.put(UsageStatsManager.class, "usagestats");
            }
            if (i10 >= 21) {
                hashMap.put(AppWidgetManager.class, "appwidget");
                hashMap.put(BatteryManager.class, "batterymanager");
                hashMap.put(CameraManager.class, "camera");
                hashMap.put(JobScheduler.class, "jobscheduler");
                hashMap.put(LauncherApps.class, "launcherapps");
                hashMap.put(MediaProjectionManager.class, "media_projection");
                hashMap.put(MediaSessionManager.class, "media_session");
                hashMap.put(RestrictionsManager.class, "restrictions");
                hashMap.put(TelecomManager.class, "telecom");
                hashMap.put(TvInputManager.class, "tv_input");
            }
            if (i10 >= 19) {
                hashMap.put(AppOpsManager.class, "appops");
                hashMap.put(CaptioningManager.class, "captioning");
                hashMap.put(ConsumerIrManager.class, "consumer_ir");
                hashMap.put(PrintManager.class, "print");
            }
            if (i10 >= 18) {
                hashMap.put(BluetoothManager.class, "bluetooth");
            }
            if (i10 >= 17) {
                hashMap.put(DisplayManager.class, "display");
                hashMap.put(UserManager.class, "user");
            }
            if (i10 >= 16) {
                hashMap.put(InputManager.class, "input");
                hashMap.put(MediaRouter.class, "media_router");
                hashMap.put(NsdManager.class, "servicediscovery");
            }
            hashMap.put(AccessibilityManager.class, "accessibility");
            hashMap.put(AccountManager.class, "account");
            hashMap.put(ActivityManager.class, "activity");
            hashMap.put(AlarmManager.class, "alarm");
            hashMap.put(AudioManager.class, "audio");
            hashMap.put(ClipboardManager.class, "clipboard");
            hashMap.put(ConnectivityManager.class, "connectivity");
            hashMap.put(DevicePolicyManager.class, "device_policy");
            hashMap.put(DownloadManager.class, "download");
            hashMap.put(DropBoxManager.class, "dropbox");
            hashMap.put(InputMethodManager.class, "input_method");
            hashMap.put(KeyguardManager.class, "keyguard");
            hashMap.put(LayoutInflater.class, "layout_inflater");
            hashMap.put(LocationManager.class, "location");
            hashMap.put(NfcManager.class, "nfc");
            hashMap.put(NotificationManager.class, "notification");
            hashMap.put(PowerManager.class, "power");
            hashMap.put(SearchManager.class, "search");
            hashMap.put(SensorManager.class, "sensor");
            hashMap.put(StorageManager.class, "storage");
            hashMap.put(TelephonyManager.class, "phone");
            hashMap.put(TextServicesManager.class, "textservices");
            hashMap.put(UiModeManager.class, "uimode");
            hashMap.put(UsbManager.class, "usb");
            hashMap.put(Vibrator.class, "vibrator");
            hashMap.put(WallpaperManager.class, "wallpaper");
            hashMap.put(WifiP2pManager.class, "wifip2p");
            hashMap.put(WifiManager.class, "wifi");
            hashMap.put(WindowManager.class, "window");
        }
    }

    public static int a(Context context, String str) {
        p0.d.c(str, "permission must be non-null");
        return context.checkPermission(str, Process.myPid(), Process.myUid());
    }

    public static Context b(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return e.a(context);
        }
        return null;
    }

    public static File c(File file) {
        synchronized (f6377b) {
            if (!file.exists()) {
                if (file.mkdirs()) {
                    return file;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to create files subdir ");
                sb2.append(file.getPath());
            }
            return file;
        }
    }

    public static int d(Context context, int i10) {
        if (Build.VERSION.SDK_INT >= 23) {
            return d.a(context, i10);
        }
        return context.getResources().getColor(i10);
    }

    public static ColorStateList e(Context context, int i10) {
        return g0.h.d(context.getResources(), i10, context.getTheme());
    }

    public static Drawable f(Context context, int i10) {
        int i11;
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 21) {
            return c.b(context, i10);
        }
        if (i12 >= 16) {
            return context.getResources().getDrawable(i10);
        }
        synchronized (f6376a) {
            if (f6378c == null) {
                f6378c = new TypedValue();
            }
            context.getResources().getValue(i10, f6378c, true);
            i11 = f6378c.resourceId;
        }
        return context.getResources().getDrawable(i11);
    }

    public static File[] g(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? b.a(context) : new File[]{context.getExternalCacheDir()};
    }

    public static File[] h(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? b.b(context, str) : new File[]{context.getExternalFilesDir(str)};
    }

    public static Executor i(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            return g.a(context);
        }
        return m0.e.a(new Handler(context.getMainLooper()));
    }

    public static File j(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            return c.c(context);
        }
        return c(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    public static <T> T k(Context context, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 23) {
            return (T) d.b(context, cls);
        }
        String l10 = l(context, cls);
        if (l10 != null) {
            return (T) context.getSystemService(l10);
        }
        return null;
    }

    public static String l(Context context, Class<?> cls) {
        if (Build.VERSION.SDK_INT >= 23) {
            return d.c(context, cls);
        }
        return h.f6379a.get(cls);
    }

    public static boolean m(Context context, Intent[] intentArr, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            C0116a.a(context, intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    public static void n(Context context, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            C0116a.b(context, intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }

    public static void o(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            f.a(context, intent);
        } else {
            context.startService(intent);
        }
    }
}
