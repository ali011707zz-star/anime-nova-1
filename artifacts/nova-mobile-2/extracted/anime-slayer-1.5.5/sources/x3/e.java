package x3;

import android.content.Context;
import com.anslayer.data.updater.UpdaterWorker;
import jc.l;

/* compiled from: Migration.kt */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final e f15857a = new e();

    public final boolean a(f4.d dVar, Context context) {
        l.f(dVar, "settings");
        l.f(context, "context");
        int z10 = dVar.z();
        if (z10 >= 41) {
            return false;
        }
        dVar.a0(41);
        if (z10 == 0) {
            if (dVar.F()) {
                UpdaterWorker.f4151l.a(context);
            }
            return false;
        }
        if (dVar.a().getBoolean("_notification_anime_all", false)) {
            c4.a.f3668a.a();
        }
        if (!dVar.b()) {
            dVar.N().set(w4.e.Companion.a());
        }
        if (z10 < 31) {
            dVar.g0("");
        }
        if (z10 >= 37) {
            return true;
        }
        dVar.l().set(Boolean.valueOf(dVar.l().get().booleanValue()));
        return true;
    }
}
