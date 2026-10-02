package com.bumptech.glide.load;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import s7.b;

/* loaded from: classes.dex */
public interface ImageHeaderParser {

    /* loaded from: classes.dex */
    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);


        /* renamed from: f, reason: collision with root package name */
        public final boolean f4592f;

        ImageType(boolean z10) {
            this.f4592f = z10;
        }

        public boolean hasAlpha() {
            return this.f4592f;
        }
    }

    ImageType a(ByteBuffer byteBuffer) throws IOException;

    ImageType b(InputStream inputStream) throws IOException;

    int c(InputStream inputStream, b bVar) throws IOException;
}
