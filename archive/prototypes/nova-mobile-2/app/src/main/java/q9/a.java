package q9;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* compiled from: AlarmManagerScheduler.java */
/* loaded from: classes.dex */
public class a implements v {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12548a;

    /* renamed from: b, reason: collision with root package name */
    public final r9.c f12549b;

    /* renamed from: c, reason: collision with root package name */
    public AlarmManager f12550c;

    /* renamed from: d, reason: collision with root package name */
    public final g f12551d;

    /* renamed from: e, reason: collision with root package name */
    public final t9.a f12552e;

    public a(Context context, r9.c cVar, t9.a aVar, g gVar) {
        this(context, cVar, (AlarmManager) context.getSystemService("alarm"), aVar, gVar);
    }

    @Override // q9.v
    public void a(k9.m mVar, int i10, boolean z10) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", mVar.b());
        builder.appendQueryParameter("priority", String.valueOf(u9.a.a(mVar.d())));
        if (mVar.c() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(mVar.c(), 0));
        }
        Intent intent = new Intent(this.f12548a, (Class<?>) AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i10);
        if (!z10 && c(intent)) {
            n9.a.a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", mVar);
            return;
        }
        long p02 = this.f12549b.p0(mVar);
        long g10 = this.f12551d.g(mVar.d(), p02, i10);
        n9.a.b("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", mVar, Long.valueOf(g10), Long.valueOf(p02), Integer.valueOf(i10));
        this.f12550c.set(3, this.f12552e.a() + g10, PendingIntent.getBroadcast(this.f12548a, 0, intent, 0));
    }

    @Override // q9.v
    public void b(k9.m mVar, int i10) {
        a(mVar, i10, false);
    }

    public boolean c(Intent intent) {
        return PendingIntent.getBroadcast(this.f12548a, 0, intent, NTLMEngineImpl.FLAG_NEGOTIATE_128) != null;
    }

    public a(Context context, r9.c cVar, AlarmManager alarmManager, t9.a aVar, g gVar) {
        this.f12548a = context;
        this.f12549b = cVar;
        this.f12550c = alarmManager;
        this.f12552e = aVar;
        this.f12551d = gVar;
    }
}
