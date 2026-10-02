package com.github.dhaval2404.imagepicker;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.e;
import java.io.File;
import jc.g;
import jc.l;
import s8.b;
import s8.c;
import s8.d;
import vb.p;

/* compiled from: ImagePickerActivity.kt */
/* loaded from: classes.dex */
public final class ImagePickerActivity extends e {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4645l = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public s8.e f4646f;

    /* renamed from: g, reason: collision with root package name */
    public b f4647g;

    /* renamed from: h, reason: collision with root package name */
    public d f4648h;

    /* renamed from: i, reason: collision with root package name */
    public c f4649i;

    /* renamed from: j, reason: collision with root package name */
    public File f4650j;

    /* renamed from: k, reason: collision with root package name */
    public File f4651k;

    /* compiled from: ImagePickerActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public final Intent a(Context context) {
            l.g(context, "context");
            Intent intent = new Intent();
            intent.putExtra("extra.error", context.getString(p8.e.f12119g));
            return intent;
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    public final void b(Bundle bundle) {
        b bVar;
        d dVar = new d(this);
        this.f4648h = dVar;
        dVar.j(bundle);
        this.f4649i = new c(this);
        Intent intent = getIntent();
        q8.a aVar = (q8.a) (intent != null ? intent.getSerializableExtra("extra.image_provider") : null);
        if (aVar != null) {
            int i10 = p8.b.f12109a[aVar.ordinal()];
            if (i10 == 1) {
                s8.e eVar = new s8.e(this);
                this.f4646f = eVar;
                if (bundle != null) {
                    return;
                }
                eVar.k();
                p pVar = p.f15031a;
                return;
            }
            if (i10 == 2) {
                b bVar2 = new b(this);
                this.f4647g = bVar2;
                bVar2.k(bundle);
                if (bundle == null && (bVar = this.f4647g) != null) {
                    bVar.o();
                    p pVar2 = p.f15031a;
                    return;
                }
                return;
            }
        }
        String string = getString(p8.e.f12119g);
        l.b(string, "getString(R.string.error_task_cancelled)");
        f(string);
    }

    public final void c(Bundle bundle) {
        if (bundle != null) {
            this.f4650j = (File) bundle.getSerializable("state.image_file");
        }
    }

    public final void d(File file) {
        File file2;
        l.g(file, "file");
        if (this.f4647g != null && (file2 = this.f4650j) != null) {
            file2.delete();
        }
        File file3 = this.f4651k;
        if (file3 != null) {
            file3.delete();
        }
        this.f4651k = null;
        h(file);
    }

    public final void e(File file) {
        l.g(file, "file");
        this.f4651k = file;
        if (this.f4647g != null) {
            File file2 = this.f4650j;
            if (file2 != null) {
                file2.delete();
            }
            this.f4650j = null;
        }
        c cVar = this.f4649i;
        if (cVar == null) {
            l.v("mCompressionProvider");
        }
        if (cVar.n(file)) {
            c cVar2 = this.f4649i;
            if (cVar2 == null) {
                l.v("mCompressionProvider");
            }
            cVar2.i(file);
            return;
        }
        h(file);
    }

    public final void f(String str) {
        l.g(str, "message");
        Intent intent = new Intent();
        intent.putExtra("extra.error", str);
        setResult(64, intent);
        finish();
    }

    public final void g(File file) {
        l.g(file, "file");
        this.f4650j = file;
        d dVar = this.f4648h;
        if (dVar == null) {
            l.v("mCropProvider");
        }
        if (dVar.h()) {
            d dVar2 = this.f4648h;
            if (dVar2 == null) {
                l.v("mCropProvider");
            }
            dVar2.l(file);
            return;
        }
        c cVar = this.f4649i;
        if (cVar == null) {
            l.v("mCompressionProvider");
        }
        if (!cVar.n(file)) {
            h(file);
            return;
        }
        c cVar2 = this.f4649i;
        if (cVar2 == null) {
            l.v("mCompressionProvider");
        }
        cVar2.i(file);
    }

    public final void h(File file) {
        Intent intent = new Intent();
        intent.setData(Uri.fromFile(file));
        intent.putExtra("extra.file_path", file.getAbsolutePath());
        setResult(-1, intent);
        finish();
    }

    public final void i() {
        setResult(0, f4645l.a(this));
        finish();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        b bVar = this.f4647g;
        if (bVar != null) {
            bVar.i(i10, i11, intent);
        }
        s8.e eVar = this.f4646f;
        if (eVar != null) {
            eVar.h(i10, i11, intent);
        }
        d dVar = this.f4648h;
        if (dVar == null) {
            l.v("mCropProvider");
        }
        dVar.i(i10, i11, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        i();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c(bundle);
        b(bundle);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        l.g(strArr, "permissions");
        l.g(iArr, "grantResults");
        super.onRequestPermissionsResult(i10, strArr, iArr);
        b bVar = this.f4647g;
        if (bVar != null) {
            bVar.j(i10);
        }
        s8.e eVar = this.f4646f;
        if (eVar != null) {
            eVar.i(i10);
        }
    }

    @Override // androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        l.g(bundle, "outState");
        bundle.putSerializable("state.image_file", this.f4650j);
        b bVar = this.f4647g;
        if (bVar != null) {
            bVar.l(bundle);
        }
        d dVar = this.f4648h;
        if (dVar == null) {
            l.v("mCropProvider");
        }
        dVar.k(bundle);
        super.onSaveInstanceState(bundle);
    }
}
