package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1831a = (IconCompat) versionedParcel.v(remoteActionCompat.f1831a, 1);
        remoteActionCompat.f1832b = versionedParcel.l(remoteActionCompat.f1832b, 2);
        remoteActionCompat.f1833c = versionedParcel.l(remoteActionCompat.f1833c, 3);
        remoteActionCompat.f1834d = (PendingIntent) versionedParcel.r(remoteActionCompat.f1834d, 4);
        remoteActionCompat.f1835e = versionedParcel.h(remoteActionCompat.f1835e, 5);
        remoteActionCompat.f1836f = versionedParcel.h(remoteActionCompat.f1836f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.M(remoteActionCompat.f1831a, 1);
        versionedParcel.D(remoteActionCompat.f1832b, 2);
        versionedParcel.D(remoteActionCompat.f1833c, 3);
        versionedParcel.H(remoteActionCompat.f1834d, 4);
        versionedParcel.z(remoteActionCompat.f1835e, 5);
        versionedParcel.z(remoteActionCompat.f1836f, 6);
    }
}
