package s8;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.yalantis.ucrop.a;
import java.io.File;
import java.io.IOException;
import jc.g;
import jc.l;

/* compiled from: CropProvider.kt */
/* loaded from: classes.dex */
public final class d extends s8.a {

    /* renamed from: b, reason: collision with root package name */
    public final int f13867b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13868c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f13869d;

    /* renamed from: e, reason: collision with root package name */
    public final float f13870e;

    /* renamed from: f, reason: collision with root package name */
    public final float f13871f;

    /* renamed from: g, reason: collision with root package name */
    public File f13872g;

    /* renamed from: h, reason: collision with root package name */
    public File f13873h;

    /* renamed from: j, reason: collision with root package name */
    public static final a f13866j = new a(null);

    /* renamed from: i, reason: collision with root package name */
    public static final String f13865i = d.class.getSimpleName();

    /* compiled from: CropProvider.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(ImagePickerActivity imagePickerActivity) {
        super(imagePickerActivity);
        l.g(imagePickerActivity, "activity");
        Intent intent = imagePickerActivity.getIntent();
        l.b(intent, "activity.intent");
        Bundle extras = intent.getExtras();
        extras = extras == null ? new Bundle() : extras;
        this.f13867b = extras.getInt("extra.max_width", 0);
        this.f13868c = extras.getInt("extra.max_height", 0);
        this.f13869d = extras.getBoolean("extra.crop", false);
        this.f13870e = extras.getFloat("extra.crop_x", StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f13871f = extras.getFloat("extra.crop_y", StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        String string = extras.getString("extra.save_directory");
        if (string != null) {
            this.f13873h = new File(string);
        }
    }

    @Override // s8.a
    public void b() {
        File file = this.f13872g;
        if (file != null) {
            file.delete();
        }
    }

    public final void f(File file) throws IOException {
        int i10;
        Uri fromFile = Uri.fromFile(file);
        t8.c cVar = t8.c.f14093a;
        l.b(fromFile, "uri");
        String c10 = cVar.c(fromFile);
        t8.d dVar = t8.d.f14094a;
        File c11 = dVar.c(this.f13873h, c10);
        this.f13872g = c11;
        if (c11 != null) {
            if (c11 == null) {
                l.p();
            }
            if (c11.exists()) {
                a.C0096a c0096a = new a.C0096a();
                c0096a.b(dVar.b(c10));
                com.yalantis.ucrop.a f10 = com.yalantis.ucrop.a.b(fromFile, Uri.fromFile(this.f13872g)).f(c0096a);
                float f11 = this.f13870e;
                float f12 = 0;
                if (f11 > f12) {
                    float f13 = this.f13871f;
                    if (f13 > f12) {
                        f10.d(f11, f13);
                    }
                }
                int i11 = this.f13867b;
                if (i11 > 0 && (i10 = this.f13868c) > 0) {
                    f10.e(i11, i10);
                }
                try {
                    f10.c(a(), 69);
                    return;
                } catch (ActivityNotFoundException e10) {
                    d("uCrop not specified in manifest file.Add UCropActivity in Manifest<activity\n    android:name=\"com.yalantis.ucrop.UCropActivity\"\n    android:screenOrientation=\"portrait\"\n    android:theme=\"@style/Theme.AppCompat.Light.NoActionBar\"/>");
                    e10.printStackTrace();
                    return;
                }
            }
        }
        c(p8.e.f12118f);
    }

    public final void g(File file) {
        if (file != null) {
            a().e(file);
        } else {
            c(p8.e.f12118f);
        }
    }

    public final boolean h() {
        return this.f13869d;
    }

    public final void i(int i10, int i11, Intent intent) {
        if (i10 == 69) {
            if (i11 == -1) {
                g(this.f13872g);
            } else {
                e();
            }
        }
    }

    public void j(Bundle bundle) {
        this.f13872g = (File) (bundle != null ? bundle.getSerializable("state.crop_file") : null);
    }

    public void k(Bundle bundle) {
        l.g(bundle, "outState");
        bundle.putSerializable("state.crop_file", this.f13872g);
    }

    public final void l(File file) {
        l.g(file, "file");
        f(file);
    }
}
