package o8;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: Program32Header.java */
/* loaded from: classes.dex */
public class j extends e {
    public j(i iVar, d dVar, long j10) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(dVar.f11844a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j11 = dVar.f11846c + (j10 * dVar.f11848e);
        this.f11853a = iVar.L(allocate, j11);
        this.f11854b = iVar.L(allocate, 4 + j11);
        this.f11855c = iVar.L(allocate, 8 + j11);
        this.f11856d = iVar.L(allocate, j11 + 20);
    }
}
