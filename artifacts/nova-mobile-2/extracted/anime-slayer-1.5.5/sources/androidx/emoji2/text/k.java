package androidx.emoji2.text;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: MetadataListReader.java */
/* loaded from: classes.dex */
public class k {

    /* compiled from: MetadataListReader.java */
    /* loaded from: classes.dex */
    public static class a implements c {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f1993a;

        public a(ByteBuffer byteBuffer) {
            this.f1993a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.k.c
        public void a(int i10) throws IOException {
            ByteBuffer byteBuffer = this.f1993a;
            byteBuffer.position(byteBuffer.position() + i10);
        }

        @Override // androidx.emoji2.text.k.c
        public long b() throws IOException {
            return k.c(this.f1993a.getInt());
        }

        @Override // androidx.emoji2.text.k.c
        public int c() throws IOException {
            return this.f1993a.getInt();
        }

        @Override // androidx.emoji2.text.k.c
        public long getPosition() {
            return this.f1993a.position();
        }

        @Override // androidx.emoji2.text.k.c
        public int readUnsignedShort() throws IOException {
            return k.d(this.f1993a.getShort());
        }
    }

    /* compiled from: MetadataListReader.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final long f1994a;

        /* renamed from: b, reason: collision with root package name */
        public final long f1995b;

        public b(long j10, long j11) {
            this.f1994a = j10;
            this.f1995b = j11;
        }

        public long a() {
            return this.f1994a;
        }
    }

    /* compiled from: MetadataListReader.java */
    /* loaded from: classes.dex */
    public interface c {
        void a(int i10) throws IOException;

        long b() throws IOException;

        int c() throws IOException;

        long getPosition();

        int readUnsignedShort() throws IOException;
    }

    public static b a(c cVar) throws IOException {
        long j10;
        cVar.a(4);
        int readUnsignedShort = cVar.readUnsignedShort();
        if (readUnsignedShort <= 100) {
            cVar.a(6);
            int i10 = 0;
            while (true) {
                if (i10 >= readUnsignedShort) {
                    j10 = -1;
                    break;
                }
                int c10 = cVar.c();
                cVar.a(4);
                j10 = cVar.b();
                cVar.a(4);
                if (1835365473 == c10) {
                    break;
                }
                i10++;
            }
            if (j10 != -1) {
                cVar.a((int) (j10 - cVar.getPosition()));
                cVar.a(12);
                long b10 = cVar.b();
                for (int i11 = 0; i11 < b10; i11++) {
                    int c11 = cVar.c();
                    long b11 = cVar.b();
                    long b12 = cVar.b();
                    if (1164798569 == c11 || 1701669481 == c11) {
                        return new b(b11 + j10, b12);
                    }
                }
            }
            throw new IOException("Cannot read metadata.");
        }
        throw new IOException("Cannot read metadata.");
    }

    public static z0.b b(ByteBuffer byteBuffer) throws IOException {
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position((int) a(new a(duplicate)).a());
        return z0.b.h(duplicate);
    }

    public static long c(int i10) {
        return i10 & 4294967295L;
    }

    public static int d(short s10) {
        return s10 & 65535;
    }
}
