package i4;

import android.content.Context;
import android.net.Uri;
import com.anslayer.R;
import com.anslayer.data.notification.NotificationReceiver;
import com.anslayer.data.updater.PlayerDownloadService;
import com.google.android.gms.common.internal.ImagesContract;
import e0.j;
import jc.l;

/* compiled from: PlayerDownloadNotifier.kt */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7564a;

    /* renamed from: b, reason: collision with root package name */
    public final j.e f7565b;

    public e(Context context) {
        l.f(context, "context");
        this.f7564a = context;
        this.f7565b = e4.a.c(context, "common_channel", null, 2, null);
    }

    public static /* synthetic */ void f(e eVar, j.e eVar2, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 3;
        }
        eVar.e(eVar2, i10);
    }

    public final void a(String str) {
        l.f(str, ImagesContract.URL);
        j.e eVar = this.f7565b;
        eVar.j(this.f7564a.getString(R.string.update_check_notification_download_error));
        eVar.x(android.R.drawable.stat_sys_warning);
        eVar.t(false);
        eVar.v(0, 0, false);
        eVar.a(R.drawable.ic_refresh_white_24dp, this.f7564a.getString(R.string.action_retry), PlayerDownloadService.f4133i.a(this.f7564a, str));
        eVar.a(R.drawable.ic_close_white_24dp, this.f7564a.getString(R.string.action_cancel), NotificationReceiver.f4087a.a(this.f7564a, 3));
        e(this.f7565b, 3);
    }

    public final void b(Uri uri) {
        l.f(uri, "uri");
        j.e eVar = this.f7565b;
        eVar.j(this.f7564a.getString(R.string.update_check_notification_download_complete));
        eVar.x(android.R.drawable.stat_sys_download_done);
        eVar.t(false);
        eVar.v(0, 0, false);
        e4.b bVar = e4.b.f6186a;
        eVar.i(bVar.a(this.f7564a, uri));
        eVar.a(R.drawable.ic_system_update_alt_white_24dp, this.f7564a.getString(R.string.action_install), bVar.a(this.f7564a, uri));
        eVar.a(R.drawable.ic_close_white_24dp, this.f7564a.getString(R.string.action_cancel), NotificationReceiver.f4087a.a(this.f7564a, 3));
        f(this, this.f7565b, 0, 1, null);
    }

    public final void c(String str) {
        l.f(str, "title");
        j.e eVar = this.f7565b;
        eVar.k(str);
        eVar.j(this.f7564a.getString(R.string.update_check_notification_download_in_progress));
        eVar.x(android.R.drawable.stat_sys_download);
        eVar.s(true);
        f(this, this.f7565b, 0, 1, null);
    }

    public final void d(int i10) {
        j.e eVar = this.f7565b;
        eVar.v(100, i10, false);
        eVar.t(true);
        f(this, this.f7565b, 0, 1, null);
    }

    public final void e(j.e eVar, int i10) {
        e4.a.a(this.f7564a).notify(i10, eVar.b());
    }
}
