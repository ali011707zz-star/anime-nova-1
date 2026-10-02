package g4;

import android.content.Context;
import com.anslayer.R;
import e0.j;
import jc.l;

/* compiled from: UpdateProfileNotifier.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6907a;

    /* renamed from: b, reason: collision with root package name */
    public final j.e f6908b;

    public a(Context context) {
        l.f(context, "context");
        this.f6907a = context;
        this.f6908b = e4.a.c(context, "common_channel", null, 2, null);
    }

    public static /* synthetic */ j.e c(a aVar, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        return aVar.b(str);
    }

    public static /* synthetic */ void g(a aVar, j.e eVar, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 2;
        }
        aVar.f(eVar, i10);
    }

    public final void a() {
        e4.a.a(this.f6907a).cancel(2);
    }

    public final j.e b(String str) {
        j.e eVar = this.f6908b;
        eVar.k(this.f6907a.getString(R.string.notification_profile_update_failed));
        if (str != null) {
            eVar.j(str);
        }
        eVar.x(android.R.drawable.stat_sys_warning);
        g(this, this.f6908b, 0, 1, null);
        return this.f6908b;
    }

    public final j.e d() {
        j.e eVar = this.f6908b;
        eVar.k(this.f6907a.getString(R.string.notification_start_profile_update));
        eVar.x(R.drawable.ic_refresh_white_24dp);
        g(this, this.f6908b, 0, 1, null);
        return this.f6908b;
    }

    public final j.e e() {
        j.e eVar = this.f6908b;
        eVar.k(this.f6907a.getString(R.string.notification_profile_update_succeed));
        eVar.x(R.drawable.ic_refresh_white_24dp);
        g(this, this.f6908b, 0, 1, null);
        return this.f6908b;
    }

    public final void f(j.e eVar, int i10) {
        e4.a.a(this.f6907a).notify(i10, eVar.b());
    }
}
