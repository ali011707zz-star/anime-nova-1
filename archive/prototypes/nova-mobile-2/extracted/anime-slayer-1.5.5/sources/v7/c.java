package v7;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferEncoder.java */
/* loaded from: classes.dex */
public class c implements p7.d<ByteBuffer> {
    @Override // p7.d
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(ByteBuffer byteBuffer, File file, p7.g gVar) {
        try {
            l8.a.e(byteBuffer, file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
