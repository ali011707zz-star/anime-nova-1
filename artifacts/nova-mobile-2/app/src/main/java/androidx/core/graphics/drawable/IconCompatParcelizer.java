package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1844a = versionedParcel.p(iconCompat.f1844a, 1);
        iconCompat.f1846c = versionedParcel.j(iconCompat.f1846c, 2);
        iconCompat.f1847d = versionedParcel.r(iconCompat.f1847d, 3);
        iconCompat.f1848e = versionedParcel.p(iconCompat.f1848e, 4);
        iconCompat.f1849f = versionedParcel.p(iconCompat.f1849f, 5);
        iconCompat.f1850g = (ColorStateList) versionedParcel.r(iconCompat.f1850g, 6);
        iconCompat.f1852i = versionedParcel.t(iconCompat.f1852i, 7);
        iconCompat.f1853j = versionedParcel.t(iconCompat.f1853j, 8);
        iconCompat.n();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(true, true);
        iconCompat.o(versionedParcel.f());
        int i10 = iconCompat.f1844a;
        if (-1 != i10) {
            versionedParcel.F(i10, 1);
        }
        byte[] bArr = iconCompat.f1846c;
        if (bArr != null) {
            versionedParcel.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f1847d;
        if (parcelable != null) {
            versionedParcel.H(parcelable, 3);
        }
        int i11 = iconCompat.f1848e;
        if (i11 != 0) {
            versionedParcel.F(i11, 4);
        }
        int i12 = iconCompat.f1849f;
        if (i12 != 0) {
            versionedParcel.F(i12, 5);
        }
        ColorStateList colorStateList = iconCompat.f1850g;
        if (colorStateList != null) {
            versionedParcel.H(colorStateList, 6);
        }
        String str = iconCompat.f1852i;
        if (str != null) {
            versionedParcel.J(str, 7);
        }
        String str2 = iconCompat.f1853j;
        if (str2 != null) {
            versionedParcel.J(str2, 8);
        }
    }
}
