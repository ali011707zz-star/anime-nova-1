package o8;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: Section64Header.java */
/* loaded from: classes.dex */
public class m extends f {
    public m(i iVar, d dVar, int i10) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(dVar.f11844a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f11857a = iVar.L(allocate, dVar.f11847d + (i10 * dVar.f11850g) + 44);
    }
}
