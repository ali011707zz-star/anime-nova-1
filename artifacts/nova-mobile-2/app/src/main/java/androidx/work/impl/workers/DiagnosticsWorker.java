package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import d2.l;
import e2.i;
import java.util.List;
import java.util.concurrent.TimeUnit;
import m2.g;
import m2.h;
import m2.k;
import m2.p;
import m2.q;
import m2.t;
import org.apache.http.HttpStatus;

/* loaded from: classes.dex */
public class DiagnosticsWorker extends Worker {

    /* renamed from: l, reason: collision with root package name */
    public static final String f3420l = l.f("DiagnosticsWrkr");

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public static String q(p pVar, String str, Integer num, String str2) {
        return String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", pVar.f10827a, pVar.f10829c, num, pVar.f10828b.name(), str, str2);
    }

    public static String r(k kVar, t tVar, h hVar, List<p> list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", Build.VERSION.SDK_INT >= 23 ? "Job Id" : "Alarm Id"));
        for (p pVar : list) {
            Integer num = null;
            g b10 = hVar.b(pVar.f10827a);
            if (b10 != null) {
                num = Integer.valueOf(b10.f10805b);
            }
            sb2.append(q(pVar, TextUtils.join(",", kVar.b(pVar.f10827a)), num, TextUtils.join(",", tVar.b(pVar.f10827a))));
        }
        return sb2.toString();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a p() {
        WorkDatabase w10 = i.r(a()).w();
        q O = w10.O();
        k M = w10.M();
        t P = w10.P();
        h L = w10.L();
        List<p> i10 = O.i(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List<p> c10 = O.c();
        List<p> t10 = O.t(HttpStatus.SC_OK);
        if (i10 != null && !i10.isEmpty()) {
            l c11 = l.c();
            String str = f3420l;
            c11.d(str, "Recently completed work:\n\n", new Throwable[0]);
            l.c().d(str, r(M, P, L, i10), new Throwable[0]);
        }
        if (c10 != null && !c10.isEmpty()) {
            l c12 = l.c();
            String str2 = f3420l;
            c12.d(str2, "Running work:\n\n", new Throwable[0]);
            l.c().d(str2, r(M, P, L, c10), new Throwable[0]);
        }
        if (t10 != null && !t10.isEmpty()) {
            l c13 = l.c();
            String str3 = f3420l;
            c13.d(str3, "Enqueued work:\n\n", new Throwable[0]);
            l.c().d(str3, r(M, P, L, t10), new Throwable[0]);
        }
        return ListenableWorker.a.c();
    }
}
