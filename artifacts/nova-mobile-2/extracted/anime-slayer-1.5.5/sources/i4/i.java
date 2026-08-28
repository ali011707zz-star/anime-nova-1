package i4;

import android.content.Context;
import android.net.Uri;
import com.anslayer.R;
import com.anslayer.data.notification.NotificationReceiver;
import com.anslayer.data.updater.UpdaterService;
import com.google.android.gms.common.internal.ImagesContract;
import e0.j;
import jc.l;

/* compiled from: UpdaterNotifier.kt */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7568a;

    /* renamed from: b, reason: collision with root package name */
    public final j.e f7569b;

    public i(Context context) {
        l.f(context, "context");
        this.f7568a = context;
        this.f7569b = e4.a.c(context, "common_channel", null, 2, null);
    }

    public static /* synthetic */ void f(i iVar, j.e eVar, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 1;
        }
        iVar.e(eVar, i10);
    }

    public final void a(String str) {
        l.f(str, ImagesContract.URL);
        j.e eVar = this.f7569b;
        eVar.j(this.f7568a.getString(R.string.update_check_notification_download_error));
        eVar.x(android.R.drawable.stat_sys_warning);
        eVar.t(false);
        eVar.v(0, 0, false);
        eVar.a(R.drawable.ic_refresh_white_24dp, this.f7568a.getString(R.string.action_retry), UpdaterService.f4143h.a(this.f7568a, str));
        eVar.a(R.drawable.ic_close_white_24dp, this.f7568a.getString(R.string.action_cancel), NotificationReceiver.f4087a.a(this.f7568a, 1));
        e(this.f7569b, 1);
    }

    public final void b(Uri uri) {
        l.f(uri, "uri");
        j.e eVar = this.f7569b;
        eVar.j(this.f7568a.getString(R.string.update_check_notification_download_complete));
        eVar.x(android.R.drawable.stat_sys_download_done);
        eVar.t(false);
        eVar.v(0, 0, false);
        e4.b bVar = e4.b.f6186a;
        eVar.i(bVar.a(this.f7568a, uri));
        eVar.a(R.drawable.ic_system_update_alt_white_24dp, this.f7568a.getString(R.string.action_install), bVar.a(this.f7568a, uri));
        eVar.a(R.drawable.ic_close_white_24dp, this.f7568a.getString(R.string.action_cancel), NotificationReceiver.f4087a.a(this.f7568a, 1));
        f(this, this.f7569b, 0, 1, null);
    }

    public final void c(String str) {
        l.f(str, "title");
        j.e eVar = this.f7569b;
        eVar.k(str);
        eVar.j(this.f7568a.getString(R.string.update_check_notification_download_in_progress));
        eVar.x(android.R.drawable.stat_sys_download);
        eVar.s(true);
        f(this, this.f7569b, 0, 1, null);
    }

    public final void d(int i10) {
        j.e eVar = this.f7569b;
        eVar.v(100, i10, false);
        eVar.t(true);
        f(this, this.f7569b, 0, 1, null);
    }

    public final void e(j.e eVar, int i10) {
        e4.a.a(this.f7568a).notify(i10, eVar.b());
    }
}
