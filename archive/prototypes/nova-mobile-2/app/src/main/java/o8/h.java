package o8;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: Elf64Header.java */
/* loaded from: classes.dex */
public class h extends d {

    /* renamed from: j, reason: collision with root package name */
    public final i f11859j;

    public h(boolean z10, i iVar) throws IOException {
        this.f11844a = z10;
        this.f11859j = iVar;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(z10 ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f11845b = iVar.z(allocate, 16L);
        this.f11846c = iVar.F(allocate, 32L);
        this.f11847d = iVar.F(allocate, 40L);
        this.f11848e = iVar.z(allocate, 54L);
        this.f11849f = iVar.z(allocate, 56L);
        this.f11850g = iVar.z(allocate, 58L);
        this.f11851h = iVar.z(allocate, 60L);
        this.f11852i = iVar.z(allocate, 62L);
    }

    @Override // o8.d
    public c a(long j10, int i10) throws IOException {
        return new b(this.f11859j, this, j10, i10);
    }

    @Override // o8.d
    public e b(long j10) throws IOException {
        return new k(this.f11859j, this, j10);
    }

    @Override // o8.d
    public f c(int i10) throws IOException {
        return new m(this.f11859j, this, i10);
    }
}
