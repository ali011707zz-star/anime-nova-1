package k8;

import android.content.Context;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import l8.k;
import p7.e;

/* compiled from: AndroidResourceSignature.java */
/* loaded from: classes.dex */
public final class a implements e {

    /* renamed from: b, reason: collision with root package name */
    public final int f10056b;

    /* renamed from: c, reason: collision with root package name */
    public final e f10057c;

    public a(int i10, e eVar) {
        this.f10056b = i10;
        this.f10057c = eVar;
    }

    public static e c(Context context) {
        return new a(context.getResources().getConfiguration().uiMode & 48, b.c(context));
    }

    @Override // p7.e
    public void b(MessageDigest messageDigest) {
        this.f10057c.b(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f10056b).array());
    }

    @Override // p7.e
    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f10056b == aVar.f10056b && this.f10057c.equals(aVar.f10057c);
    }

    @Override // p7.e
    public int hashCode() {
        return k.n(this.f10057c, this.f10056b);
    }
}
