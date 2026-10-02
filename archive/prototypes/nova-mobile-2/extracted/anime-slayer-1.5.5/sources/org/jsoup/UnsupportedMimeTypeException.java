package org.jsoup;

import java.io.IOException;

/* loaded from: classes2.dex */
public class UnsupportedMimeTypeException extends IOException {

    /* renamed from: f, reason: collision with root package name */
    public final String f11873f;

    /* renamed from: g, reason: collision with root package name */
    public final String f11874g;

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Mimetype=" + this.f11873f + ", URL=" + this.f11874g;
    }
}
