package com.yalantis.ucrop;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;

/* compiled from: UCrop.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public Intent f5125a = new Intent();

    /* renamed from: b, reason: collision with root package name */
    public Bundle f5126b;

    /* compiled from: UCrop.java */
    /* renamed from: com.yalantis.ucrop.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0096a {

        /* renamed from: a, reason: collision with root package name */
        public final Bundle f5127a = new Bundle();

        public Bundle a() {
            return this.f5127a;
        }

        public void b(Bitmap.CompressFormat compressFormat) {
            this.f5127a.putString("com.yalantis.ucrop.CompressionFormatName", compressFormat.name());
        }
    }

    public a(Uri uri, Uri uri2) {
        Bundle bundle = new Bundle();
        this.f5126b = bundle;
        bundle.putParcelable("com.yalantis.ucrop.InputUri", uri);
        this.f5126b.putParcelable("com.yalantis.ucrop.OutputUri", uri2);
    }

    public static a b(Uri uri, Uri uri2) {
        return new a(uri, uri2);
    }

    public Intent a(Context context) {
        this.f5125a.setClass(context, UCropActivity.class);
        this.f5125a.putExtras(this.f5126b);
        return this.f5125a;
    }

    public void c(Activity activity, int i10) {
        activity.startActivityForResult(a(activity), i10);
    }

    public a d(float f10, float f11) {
        this.f5126b.putFloat("com.yalantis.ucrop.AspectRatioX", f10);
        this.f5126b.putFloat("com.yalantis.ucrop.AspectRatioY", f11);
        return this;
    }

    public a e(int i10, int i11) {
        if (i10 < 10) {
            i10 = 10;
        }
        if (i11 < 10) {
            i11 = 10;
        }
        this.f5126b.putInt("com.yalantis.ucrop.MaxSizeX", i10);
        this.f5126b.putInt("com.yalantis.ucrop.MaxSizeY", i11);
        return this;
    }

    public a f(C0096a c0096a) {
        this.f5126b.putAll(c0096a.a());
        return this;
    }
}
