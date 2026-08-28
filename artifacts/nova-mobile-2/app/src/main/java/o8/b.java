package o8;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: Dynamic64Structure.java */
/* loaded from: classes.dex */
public class b extends c {
    public b(i iVar, d dVar, long j10, int i10) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(dVar.f11844a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j11 = j10 + (i10 * 16);
        this.f11842a = iVar.F(allocate, j11);
        this.f11843b = iVar.F(allocate, j11 + 8);
    }
}
