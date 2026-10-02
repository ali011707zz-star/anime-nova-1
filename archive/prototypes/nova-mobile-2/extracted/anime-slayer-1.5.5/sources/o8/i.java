package o8;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: ElfParser.java */
/* loaded from: classes.dex */
public class i implements Closeable {

    /* renamed from: f, reason: collision with root package name */
    public final int f11860f = 1179403647;

    /* renamed from: g, reason: collision with root package name */
    public final FileChannel f11861g;

    public i(File file) throws FileNotFoundException {
        if (file != null && file.exists()) {
            this.f11861g = new FileInputStream(file).getChannel();
            return;
        }
        throw new IllegalArgumentException("File is null or does not exist");
    }

    public long F(ByteBuffer byteBuffer, long j10) throws IOException {
        k(byteBuffer, j10, 8);
        return byteBuffer.getLong();
    }

    public String G(ByteBuffer byteBuffer, long j10) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            long j11 = 1 + j10;
            short x10 = x(byteBuffer, j10);
            if (x10 != 0) {
                sb2.append((char) x10);
                j10 = j11;
            } else {
                return sb2.toString();
            }
        }
    }

    public long L(ByteBuffer byteBuffer, long j10) throws IOException {
        k(byteBuffer, j10, 4);
        return byteBuffer.getInt() & 4294967295L;
    }

    public final long b(d dVar, long j10, long j11) throws IOException {
        for (long j12 = 0; j12 < j10; j12++) {
            e b10 = dVar.b(j12);
            if (b10.f11853a == 1) {
                long j13 = b10.f11855c;
                if (j13 <= j11 && j11 <= b10.f11856d + j13) {
                    return (j11 - j13) + b10.f11854b;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f11861g.close();
    }

    public d d() throws IOException {
        this.f11861g.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (L(allocate, 0L) == 1179403647) {
            short x10 = x(allocate, 4L);
            boolean z10 = x(allocate, 5L) == 2;
            if (x10 == 1) {
                return new g(z10, this);
            }
            if (x10 == 2) {
                return new h(z10, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    public List<String> h() throws IOException {
        long j10;
        this.f11861g.position(0L);
        ArrayList arrayList = new ArrayList();
        d d10 = d();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(d10.f11844a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j11 = d10.f11849f;
        int i10 = 0;
        if (j11 == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            j11 = d10.c(0).f11857a;
        }
        long j12 = 0;
        while (true) {
            if (j12 >= j11) {
                j10 = 0;
                break;
            }
            e b10 = d10.b(j12);
            if (b10.f11853a == 2) {
                j10 = b10.f11854b;
                break;
            }
            j12++;
        }
        if (j10 == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        long j13 = 0;
        while (true) {
            c a10 = d10.a(j10, i10);
            long j14 = j10;
            long j15 = a10.f11842a;
            if (j15 == 1) {
                arrayList2.add(Long.valueOf(a10.f11843b));
            } else if (j15 == 5) {
                j13 = a10.f11843b;
            }
            i10++;
            if (a10.f11842a == 0) {
                break;
            }
            j10 = j14;
        }
        if (j13 != 0) {
            long b11 = b(d10, j11, j13);
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                arrayList.add(G(allocate, ((Long) it2.next()).longValue() + b11));
            }
            return arrayList;
        }
        throw new IllegalStateException("String table offset not found!");
    }

    public void k(ByteBuffer byteBuffer, long j10, int i10) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i10);
        long j11 = 0;
        while (j11 < i10) {
            int read = this.f11861g.read(byteBuffer, j10 + j11);
            if (read == -1) {
                throw new EOFException();
            }
            j11 += read;
        }
        byteBuffer.position(0);
    }

    public short x(ByteBuffer byteBuffer, long j10) throws IOException {
        k(byteBuffer, j10, 1);
        return (short) (byteBuffer.get() & 255);
    }

    public int z(ByteBuffer byteBuffer, long j10) throws IOException {
        k(byteBuffer, j10, 2);
        return byteBuffer.getShort() & 65535;
    }
}
