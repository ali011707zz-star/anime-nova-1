package a8;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.util.List;
import p7.g;
import p7.i;
import r7.u;

/* compiled from: ResourceDrawableDecoder.java */
/* loaded from: classes.dex */
public class e implements i<Uri, Drawable> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f513a;

    public e(Context context) {
        this.f513a = context.getApplicationContext();
    }

    @Override // p7.i
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public u<Drawable> b(Uri uri, int i10, int i11, g gVar) {
        Context d10 = d(uri, uri.getAuthority());
        return d.e(a.b(this.f513a, d10, g(d10, uri)));
    }

    public final Context d(Uri uri, String str) {
        if (str.equals(this.f513a.getPackageName())) {
            return this.f513a;
        }
        try {
            return this.f513a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            if (str.contains(this.f513a.getPackageName())) {
                return this.f513a;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e10);
        }
    }

    public final int e(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e10);
        }
    }

    public final int f(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        if (identifier == 0) {
            identifier = Resources.getSystem().getIdentifier(str2, str, "android");
        }
        if (identifier != 0) {
            return identifier;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + uri);
    }

    public final int g(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return f(context, uri);
        }
        if (pathSegments.size() == 1) {
            return e(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
    }

    @Override // p7.i
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public boolean a(Uri uri, g gVar) {
        return uri.getScheme().equals("android.resource");
    }
}
