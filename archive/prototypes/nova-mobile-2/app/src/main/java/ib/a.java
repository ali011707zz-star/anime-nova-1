package ib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import hb.c;
import hb.d;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import jb.e;
import jb.f;

/* compiled from: BitmapCropTask.java */
/* loaded from: classes.dex */
public class a extends AsyncTask<Void, Void, Throwable> {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference<Context> f7954a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f7955b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f7956c;

    /* renamed from: d, reason: collision with root package name */
    public final RectF f7957d;

    /* renamed from: e, reason: collision with root package name */
    public float f7958e;

    /* renamed from: f, reason: collision with root package name */
    public float f7959f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7960g;

    /* renamed from: h, reason: collision with root package name */
    public final int f7961h;

    /* renamed from: i, reason: collision with root package name */
    public final Bitmap.CompressFormat f7962i;

    /* renamed from: j, reason: collision with root package name */
    public final int f7963j;

    /* renamed from: k, reason: collision with root package name */
    public final String f7964k;

    /* renamed from: l, reason: collision with root package name */
    public final String f7965l;

    /* renamed from: m, reason: collision with root package name */
    public final c f7966m;

    /* renamed from: n, reason: collision with root package name */
    public final gb.a f7967n;

    /* renamed from: o, reason: collision with root package name */
    public int f7968o;

    /* renamed from: p, reason: collision with root package name */
    public int f7969p;

    /* renamed from: q, reason: collision with root package name */
    public int f7970q;

    /* renamed from: r, reason: collision with root package name */
    public int f7971r;

    public a(Context context, Bitmap bitmap, d dVar, hb.b bVar, gb.a aVar) {
        this.f7954a = new WeakReference<>(context);
        this.f7955b = bitmap;
        this.f7956c = dVar.a();
        this.f7957d = dVar.c();
        this.f7958e = dVar.d();
        this.f7959f = dVar.b();
        this.f7960g = bVar.f();
        this.f7961h = bVar.g();
        this.f7962i = bVar.a();
        this.f7963j = bVar.b();
        this.f7964k = bVar.d();
        this.f7965l = bVar.e();
        this.f7966m = bVar.c();
        this.f7967n = aVar;
    }

    public final boolean a() throws IOException {
        if (this.f7960g > 0 && this.f7961h > 0) {
            float width = this.f7956c.width() / this.f7958e;
            float height = this.f7956c.height() / this.f7958e;
            int i10 = this.f7960g;
            if (width > i10 || height > this.f7961h) {
                float min = Math.min(i10 / width, this.f7961h / height);
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(this.f7955b, Math.round(r2.getWidth() * min), Math.round(this.f7955b.getHeight() * min), false);
                Bitmap bitmap = this.f7955b;
                if (bitmap != createScaledBitmap) {
                    bitmap.recycle();
                }
                this.f7955b = createScaledBitmap;
                this.f7958e /= min;
            }
        }
        if (this.f7959f != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            Matrix matrix = new Matrix();
            matrix.setRotate(this.f7959f, this.f7955b.getWidth() / 2, this.f7955b.getHeight() / 2);
            Bitmap bitmap2 = this.f7955b;
            Bitmap createBitmap = Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), this.f7955b.getHeight(), matrix, true);
            Bitmap bitmap3 = this.f7955b;
            if (bitmap3 != createBitmap) {
                bitmap3.recycle();
            }
            this.f7955b = createBitmap;
        }
        this.f7970q = Math.round((this.f7956c.left - this.f7957d.left) / this.f7958e);
        this.f7971r = Math.round((this.f7956c.top - this.f7957d.top) / this.f7958e);
        this.f7968o = Math.round(this.f7956c.width() / this.f7958e);
        int round = Math.round(this.f7956c.height() / this.f7958e);
        this.f7969p = round;
        boolean e10 = e(this.f7968o, round);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Should crop: ");
        sb2.append(e10);
        if (e10) {
            b1.a aVar = new b1.a(this.f7964k);
            d(Bitmap.createBitmap(this.f7955b, this.f7970q, this.f7971r, this.f7968o, this.f7969p));
            if (!this.f7962i.equals(Bitmap.CompressFormat.JPEG)) {
                return true;
            }
            f.b(aVar, this.f7968o, this.f7969p, this.f7965l);
            return true;
        }
        e.a(this.f7964k, this.f7965l);
        return false;
    }

    @Override // android.os.AsyncTask
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public Throwable doInBackground(Void... voidArr) {
        Bitmap bitmap = this.f7955b;
        if (bitmap == null) {
            return new NullPointerException("ViewBitmap is null");
        }
        if (bitmap.isRecycled()) {
            return new NullPointerException("ViewBitmap is recycled");
        }
        if (this.f7957d.isEmpty()) {
            return new NullPointerException("CurrentImageRect is empty");
        }
        try {
            a();
            this.f7955b = null;
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Throwable th) {
        gb.a aVar = this.f7967n;
        if (aVar != null) {
            if (th == null) {
                this.f7967n.b(Uri.fromFile(new File(this.f7965l)), this.f7970q, this.f7971r, this.f7968o, this.f7969p);
            } else {
                aVar.a(th);
            }
        }
    }

    public final void d(Bitmap bitmap) throws FileNotFoundException {
        ByteArrayOutputStream byteArrayOutputStream;
        if (this.f7954a.get() == null) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(new File(this.f7965l), false);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    bitmap.compress(this.f7962i, this.f7963j, byteArrayOutputStream);
                    fileOutputStream2.write(byteArrayOutputStream.toByteArray());
                    bitmap.recycle();
                    jb.a.c(fileOutputStream2);
                } catch (IOException e10) {
                    e = e10;
                    fileOutputStream = fileOutputStream2;
                    try {
                        e.getLocalizedMessage();
                        jb.a.c(fileOutputStream);
                        jb.a.c(byteArrayOutputStream);
                    } catch (Throwable th) {
                        th = th;
                        jb.a.c(fileOutputStream);
                        jb.a.c(byteArrayOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    jb.a.c(fileOutputStream);
                    jb.a.c(byteArrayOutputStream);
                    throw th;
                }
            } catch (IOException e11) {
                e = e11;
                byteArrayOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        } catch (IOException e12) {
            e = e12;
            byteArrayOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
        }
        jb.a.c(byteArrayOutputStream);
    }

    public final boolean e(int i10, int i11) {
        int round = Math.round(Math.max(i10, i11) / 1000.0f) + 1;
        if (this.f7960g > 0 && this.f7961h > 0) {
            return true;
        }
        float f10 = round;
        return Math.abs(this.f7956c.left - this.f7957d.left) > f10 || Math.abs(this.f7956c.top - this.f7957d.top) > f10 || Math.abs(this.f7956c.bottom - this.f7957d.bottom) > f10 || Math.abs(this.f7956c.right - this.f7957d.right) > f10 || this.f7959f != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }
}
