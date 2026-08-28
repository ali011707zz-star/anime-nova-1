package l0;

import android.net.Uri;
import java.io.File;
import jc.l;

/* compiled from: Uri.kt */
/* loaded from: classes.dex */
public final class b {
    public static final File a(Uri uri) {
        l.f(uri, "<this>");
        if (l.a(uri.getScheme(), "file")) {
            String path = uri.getPath();
            if (path != null) {
                return new File(path);
            }
            throw new IllegalArgumentException(l.m("Uri path is null: ", uri).toString());
        }
        throw new IllegalArgumentException(l.m("Uri lacks 'file' scheme: ", uri).toString());
    }
}
