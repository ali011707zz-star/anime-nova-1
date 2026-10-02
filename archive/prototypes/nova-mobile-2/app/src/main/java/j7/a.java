package j7;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import java.io.File;
import jc.l;

/* compiled from: FileExtionsion.kt */
/* loaded from: classes.dex */
public final class a {
    public static final Uri a(File file, Context context) {
        l.f(file, "<this>");
        l.f(context, "context");
        if (Build.VERSION.SDK_INT >= 24) {
            Uri e10 = FileProvider.e(context, "com.anslayer.provider", file);
            l.e(e10, "{\n        FileProvider.g… \".provider\", this)\n    }");
            return e10;
        }
        Uri fromFile = Uri.fromFile(file);
        l.e(fromFile, "{\n        Uri.fromFile(this)\n    }");
        return fromFile;
    }
}
