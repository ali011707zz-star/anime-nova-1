package s8;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import java.io.File;
import jc.g;
import jc.l;
import t8.h;

/* compiled from: CameraProvider.kt */
/* loaded from: classes.dex */
public final class b extends s8.a {

    /* renamed from: b, reason: collision with root package name */
    public File f13854b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f13855c;

    /* renamed from: d, reason: collision with root package name */
    public File f13856d;

    /* renamed from: g, reason: collision with root package name */
    public static final a f13853g = new a(null);

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f13851e = {"android.permission.WRITE_EXTERNAL_STORAGE"};

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f13852f = {"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.CAMERA"};

    /* compiled from: CameraProvider.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ImagePickerActivity imagePickerActivity) {
        super(imagePickerActivity);
        l.g(imagePickerActivity, "activity");
        this.f13855c = h.f14098a.c(this, "android.permission.CAMERA");
        Intent intent = imagePickerActivity.getIntent();
        l.b(intent, "activity.intent");
        Bundle extras = intent.getExtras();
        String string = (extras == null ? new Bundle() : extras).getString("extra.save_directory");
        if (string != null) {
            this.f13856d = new File(string);
        }
    }

    @Override // s8.a
    public void b() {
        File file = this.f13854b;
        if (file != null) {
            file.delete();
        }
    }

    public final void f() {
        if (h(this)) {
            n();
        } else {
            m();
        }
    }

    public final void g(Intent intent) {
        ImagePickerActivity a10 = a();
        File file = this.f13854b;
        if (file == null) {
            l.p();
        }
        a10.g(file);
    }

    public final boolean h(Context context) {
        if (this.f13855c && h.f14098a.b(context, f13852f)) {
            return true;
        }
        return !this.f13855c && h.f14098a.b(context, f13851e);
    }

    public final void i(int i10, int i11, Intent intent) {
        if (i10 == 4281) {
            if (i11 == -1) {
                g(intent);
            } else {
                e();
            }
        }
    }

    public final void j(int i10) {
        int i11;
        if (i10 == 4282) {
            if (h(this)) {
                n();
                return;
            }
            if (this.f13855c) {
                i11 = p8.e.f12122j;
            } else {
                i11 = p8.e.f12121i;
            }
            String string = getString(i11);
            l.b(string, "getString(errorRes)");
            d(string);
        }
    }

    public void k(Bundle bundle) {
        this.f13854b = (File) (bundle != null ? bundle.getSerializable("state.camera_file") : null);
    }

    public void l(Bundle bundle) {
        l.g(bundle, "outState");
        bundle.putSerializable("state.camera_file", this.f13854b);
    }

    public final void m() {
        if (this.f13855c) {
            e0.a.t(a(), f13852f, 4282);
        } else {
            e0.a.t(a(), f13851e, 4282);
        }
    }

    public final void n() {
        File d10 = t8.d.d(t8.d.f14094a, this.f13856d, null, 2, null);
        this.f13854b = d10;
        if (d10 != null && d10.exists()) {
            a().startActivityForResult(t8.g.f14097a.b(this, d10), 4281);
        } else {
            c(p8.e.f12117e);
        }
    }

    public final void o() {
        if (!t8.g.f14097a.f(this)) {
            c(p8.e.f12114b);
        } else {
            f();
        }
    }
}
