package s8;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import com.twitter.sdk.android.core.internal.scribe.ScribeConfig;
import java.io.File;
import java.util.List;
import jc.g;
import jc.l;
import qc.t;
import t8.f;

/* compiled from: CompressionProvider.kt */
/* loaded from: classes.dex */
public final class c extends s8.a {

    /* renamed from: b, reason: collision with root package name */
    public final int f13859b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13860c;

    /* renamed from: d, reason: collision with root package name */
    public final long f13861d;

    /* renamed from: e, reason: collision with root package name */
    public File f13862e;

    /* renamed from: f, reason: collision with root package name */
    public File f13863f;

    /* renamed from: h, reason: collision with root package name */
    public static final a f13858h = new a(null);

    /* renamed from: g, reason: collision with root package name */
    public static final String f13857g = c.class.getSimpleName();

    /* compiled from: CompressionProvider.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: CompressionProvider.kt */
    /* loaded from: classes.dex */
    public static final class b extends AsyncTask<File, Void, File> {
        public b() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public File doInBackground(File... fileArr) {
            l.g(fileArr, "params");
            return c.this.p(fileArr[0]);
        }

        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(File file) {
            super.onPostExecute(file);
            if (file != null) {
                c.this.l(file);
            } else {
                c.this.c(p8.e.f12116d);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ImagePickerActivity imagePickerActivity) {
        super(imagePickerActivity);
        l.g(imagePickerActivity, "activity");
        Intent intent = imagePickerActivity.getIntent();
        l.b(intent, "activity.intent");
        Bundle extras = intent.getExtras();
        extras = extras == null ? new Bundle() : extras;
        this.f13859b = extras.getInt("extra.max_width", 0);
        this.f13860c = extras.getInt("extra.max_height", 0);
        this.f13861d = extras.getLong("extra.image_max_size", 0L);
        String string = extras.getString("extra.save_directory");
        if (string != null) {
            this.f13863f = new File(string);
        }
    }

    public final File h(File file, int i10) {
        int i11;
        List<int[]> o10 = o();
        if (i10 >= o10.size()) {
            return null;
        }
        int[] iArr = o10.get(i10);
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = this.f13859b;
        if (i14 > 0 && (i11 = this.f13860c) > 0 && (i12 > i14 || i13 > i11)) {
            i12 = i14;
            i13 = i11;
        }
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
        String absolutePath = file.getAbsolutePath();
        l.b(absolutePath, "file.absolutePath");
        if (t.q(absolutePath, ".png", false, 2, null)) {
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        Bitmap.CompressFormat compressFormat2 = compressFormat;
        File c10 = t8.d.f14094a.c(this.f13863f, t8.c.f14093a.d(file));
        if (c10 == null) {
            return null;
        }
        String absolutePath2 = c10.getAbsolutePath();
        l.b(absolutePath2, "compressFile.absolutePath");
        return f.f14096a.c(file, i12, i13, compressFormat2, 100, absolutePath2);
    }

    public final void i(File file) {
        l.g(file, "file");
        q(file);
    }

    public final int[] j(File file) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        return new int[]{options.outWidth, options.outHeight};
    }

    public final long k(File file) {
        return file.length() - this.f13861d;
    }

    public final void l(File file) {
        a().d(file);
    }

    public final boolean m() {
        return this.f13861d > 0;
    }

    public final boolean n(File file) {
        l.g(file, "file");
        boolean z10 = m() && k(file) > 0;
        if (z10 || this.f13859b <= 0 || this.f13860c <= 0) {
            return z10;
        }
        int[] j10 = j(file);
        return j10[0] > this.f13859b || j10[1] > this.f13860c;
    }

    public final List<int[]> o() {
        return wb.l.l(new int[]{2448, 3264}, new int[]{2008, 3032}, new int[]{1944, 2580}, new int[]{1680, 2240}, new int[]{1536, RecyclerView.e0.FLAG_MOVED}, new int[]{1200, 1600}, new int[]{RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE, 1392}, new int[]{960, 1280}, new int[]{768, RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE}, new int[]{ScribeConfig.DEFAULT_SEND_INTERVAL_SECONDS, 800}, new int[]{480, 640}, new int[]{240, 320}, new int[]{120, 160}, new int[]{60, 80}, new int[]{30, 40});
    }

    public final File p(File file) {
        int i10;
        int i11 = 0;
        File file2 = null;
        int i12 = 0;
        while (true) {
            if (file2 != null) {
                file2.delete();
            }
            file2 = h(file, i11);
            if (file2 == null) {
                if (i11 > 0) {
                    return h(file, i12);
                }
                return null;
            }
            if (this.f13861d > 0) {
                long k10 = k(file2);
                i10 = (k10 > ((long) 1048576) ? 3 : k10 > ((long) 512000) ? 2 : 1) + i11;
            } else {
                i10 = i11 + 1;
            }
            if (!n(file2)) {
                t8.b.f14092a.a(file, file2);
                return file2;
            }
            int i13 = i10;
            i12 = i11;
            i11 = i13;
        }
    }

    @SuppressLint({"StaticFieldLeak"})
    public final void q(File file) {
        this.f13862e = file;
        new b().execute(file);
    }
}
