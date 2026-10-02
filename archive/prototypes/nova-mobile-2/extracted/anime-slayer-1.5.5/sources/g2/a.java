package g2;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import d2.l;
import e2.i;
import m2.g;
import m2.h;
import n2.c;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* compiled from: Alarms.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f6761a = l.f("Alarms");

    public static void a(Context context, i iVar, String str) {
        h L = iVar.w().L();
        g b10 = L.b(str);
        if (b10 != null) {
            b(context, str, b10.f10805b);
            l.c().a(f6761a, String.format("Removing SystemIdInfo for workSpecId (%s)", str), new Throwable[0]);
            L.d(str);
        }
    }

    public static void b(Context context, String str, int i10) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i10, androidx.work.impl.background.systemalarm.a.c(context, str), NTLMEngineImpl.FLAG_NEGOTIATE_128);
        if (service == null || alarmManager == null) {
            return;
        }
        l.c().a(f6761a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i10)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    public static void c(Context context, i iVar, String str, long j10) {
        WorkDatabase w10 = iVar.w();
        h L = w10.L();
        g b10 = L.b(str);
        if (b10 != null) {
            b(context, str, b10.f10805b);
            d(context, str, b10.f10805b, j10);
        } else {
            int b11 = new c(w10).b();
            L.c(new g(str, b11));
            d(context, str, b11, j10);
        }
    }

    public static void d(Context context, String str, int i10, long j10) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i10, androidx.work.impl.background.systemalarm.a.c(context, str), 134217728);
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, j10, service);
            } else {
                alarmManager.set(0, j10, service);
            }
        }
    }
}
