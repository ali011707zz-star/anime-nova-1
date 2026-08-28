package s8;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import java.io.File;
import jc.g;
import jc.l;
import t8.h;

/* compiled from: GalleryProvider.kt */
/* loaded from: classes.dex */
public final class e extends s8.a {

    /* renamed from: b, reason: collision with root package name */
    public final String[] f13876b;

    /* renamed from: d, reason: collision with root package name */
    public static final a f13875d = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f13874c = {"android.permission.WRITE_EXTERNAL_STORAGE"};

    /* compiled from: GalleryProvider.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ImagePickerActivity imagePickerActivity) {
        super(imagePickerActivity);
        l.g(imagePickerActivity, "activity");
        Intent intent = imagePickerActivity.getIntent();
        l.b(intent, "activity.intent");
        Bundle extras = intent.getExtras();
        String[] stringArray = (extras == null ? new Bundle() : extras).getStringArray("extra.mime_types");
        this.f13876b = stringArray == null ? new String[0] : stringArray;
    }

    public final void f() {
        h hVar = h.f14098a;
        String[] strArr = f13874c;
        if (!hVar.b(this, strArr)) {
            e0.a.t(a(), strArr, 4262);
        } else {
            j();
        }
    }

    public final void g(Intent intent) {
        Uri data = intent != null ? intent.getData() : null;
        if (data != null) {
            String g10 = t8.c.f14093a.g(a(), data);
            if (!(g10 == null || g10.length() == 0)) {
                a().g(new File(g10));
                return;
            } else {
                c(p8.e.f12115c);
                return;
            }
        }
        c(p8.e.f12115c);
    }

    public final void h(int i10, int i11, Intent intent) {
        if (i10 == 4261) {
            if (i11 == -1) {
                g(intent);
            } else {
                e();
            }
        }
    }

    public final void i(int i10) {
        if (i10 == 4262) {
            if (h.f14098a.b(this, f13874c)) {
                j();
                return;
            }
            String string = getString(p8.e.f12123k);
            l.b(string, "getString(R.string.permission_gallery_denied)");
            d(string);
        }
    }

    public final void j() {
        a().startActivityForResult(t8.g.f14097a.d(a(), this.f13876b), 4261);
    }

    public final void k() {
        f();
    }
}
