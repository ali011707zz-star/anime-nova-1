package t8;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import java.io.File;
import jc.l;

/* compiled from: IntentUtils.kt */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final g f14097a = new g();

    public final Intent a(Intent intent, String[] strArr) {
        intent.setType("image/*");
        if (!(strArr.length == 0)) {
            intent.putExtra("android.intent.extra.MIME_TYPES", strArr);
        }
        return intent;
    }

    public final Intent b(Context context, File file) {
        l.g(context, "context");
        l.g(file, "file");
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.putExtra("output", FileProvider.e(context, context.getPackageName() + context.getString(p8.e.f12120h), file));
        } else {
            intent.putExtra("output", Uri.fromFile(file));
        }
        return intent;
    }

    public final Intent c(String[] strArr) {
        Intent a10 = a(new Intent("android.intent.action.OPEN_DOCUMENT"), strArr);
        a10.addCategory("android.intent.category.OPENABLE");
        return a10;
    }

    public final Intent d(Context context, String[] strArr) {
        l.g(context, "context");
        l.g(strArr, "mimeTypes");
        if (Build.VERSION.SDK_INT >= 19) {
            Intent c10 = c(strArr);
            if (c10.resolveActivity(context.getPackageManager()) != null) {
                return c10;
            }
        }
        return e(strArr);
    }

    public final Intent e(String[] strArr) {
        return a(new Intent("android.intent.action.PICK"), strArr);
    }

    public final boolean f(Context context) {
        l.g(context, "context");
        return new Intent("android.media.action.IMAGE_CAPTURE").resolveActivity(context.getPackageManager()) != null;
    }
}
