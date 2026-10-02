package c8;

import java.io.File;
import java.io.IOException;
import r7.u;

/* compiled from: GifDrawableEncoder.java */
/* loaded from: classes.dex */
public class d implements p7.j<c> {
    @Override // p7.j
    public p7.c a(p7.g gVar) {
        return p7.c.SOURCE;
    }

    @Override // p7.d
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(u<c> uVar, File file, p7.g gVar) {
        try {
            l8.a.e(uVar.get().c(), file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
