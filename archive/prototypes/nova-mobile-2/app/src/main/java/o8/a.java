package o8;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: Dynamic32Structure.java */
/* loaded from: classes.dex */
public class a extends c {
    public a(i iVar, d dVar, long j10, int i10) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(dVar.f11844a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j11 = j10 + (i10 * 8);
        this.f11842a = iVar.L(allocate, j11);
        this.f11843b = iVar.L(allocate, j11 + 4);
    }
}
