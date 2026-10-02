package o8;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: Elf32Header.java */
/* loaded from: classes.dex */
public class g extends d {

    /* renamed from: j, reason: collision with root package name */
    public final i f11858j;

    public g(boolean z10, i iVar) throws IOException {
        this.f11844a = z10;
        this.f11858j = iVar;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(z10 ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f11845b = iVar.z(allocate, 16L);
        this.f11846c = iVar.L(allocate, 28L);
        this.f11847d = iVar.L(allocate, 32L);
        this.f11848e = iVar.z(allocate, 42L);
        this.f11849f = iVar.z(allocate, 44L);
        this.f11850g = iVar.z(allocate, 46L);
        this.f11851h = iVar.z(allocate, 48L);
        this.f11852i = iVar.z(allocate, 50L);
    }

    @Override // o8.d
    public c a(long j10, int i10) throws IOException {
        return new a(this.f11858j, this, j10, i10);
    }

    @Override // o8.d
    public e b(long j10) throws IOException {
        return new j(this.f11858j, this, j10);
    }

    @Override // o8.d
    public f c(int i10) throws IOException {
        return new l(this.f11858j, this, i10);
    }
}
