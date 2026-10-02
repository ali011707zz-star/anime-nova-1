package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: MetadataRepo.java */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final z0.b f1996a;

    /* renamed from: b, reason: collision with root package name */
    public final char[] f1997b;

    /* renamed from: c, reason: collision with root package name */
    public final a f1998c = new a(RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE);

    /* renamed from: d, reason: collision with root package name */
    public final Typeface f1999d;

    /* compiled from: MetadataRepo.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final SparseArray<a> f2000a;

        /* renamed from: b, reason: collision with root package name */
        public f f2001b;

        public a() {
            this(1);
        }

        public a a(int i10) {
            SparseArray<a> sparseArray = this.f2000a;
            if (sparseArray == null) {
                return null;
            }
            return sparseArray.get(i10);
        }

        public final f b() {
            return this.f2001b;
        }

        public void c(f fVar, int i10, int i11) {
            a a10 = a(fVar.b(i10));
            if (a10 == null) {
                a10 = new a();
                this.f2000a.put(fVar.b(i10), a10);
            }
            if (i11 > i10) {
                a10.c(fVar, i10 + 1, i11);
            } else {
                a10.f2001b = fVar;
            }
        }

        public a(int i10) {
            this.f2000a = new SparseArray<>(i10);
        }
    }

    public l(Typeface typeface, z0.b bVar) {
        this.f1999d = typeface;
        this.f1996a = bVar;
        this.f1997b = new char[bVar.k() * 2];
        a(bVar);
    }

    public static l b(Typeface typeface, ByteBuffer byteBuffer) throws IOException {
        try {
            m0.k.a("EmojiCompat.MetadataRepo.create");
            return new l(typeface, k.b(byteBuffer));
        } finally {
            m0.k.b();
        }
    }

    public final void a(z0.b bVar) {
        int k10 = bVar.k();
        for (int i10 = 0; i10 < k10; i10++) {
            f fVar = new f(this, i10);
            Character.toChars(fVar.f(), this.f1997b, i10 * 2);
            h(fVar);
        }
    }

    public char[] c() {
        return this.f1997b;
    }

    public z0.b d() {
        return this.f1996a;
    }

    public int e() {
        return this.f1996a.l();
    }

    public a f() {
        return this.f1998c;
    }

    public Typeface g() {
        return this.f1999d;
    }

    public void h(f fVar) {
        p0.i.h(fVar, "emoji metadata cannot be null");
        p0.i.b(fVar.c() > 0, "invalid metadata codepoint length");
        this.f1998c.c(fVar, 0, fVar.c() - 1);
    }
}
