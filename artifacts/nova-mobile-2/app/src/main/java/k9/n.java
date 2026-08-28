package k9;

import java.util.Set;

/* compiled from: TransportFactoryImpl.java */
/* loaded from: classes.dex */
public final class n implements h9.g {

    /* renamed from: a, reason: collision with root package name */
    public final Set<h9.b> f10107a;

    /* renamed from: b, reason: collision with root package name */
    public final m f10108b;

    /* renamed from: c, reason: collision with root package name */
    public final q f10109c;

    public n(Set<h9.b> set, m mVar, q qVar) {
        this.f10107a = set;
        this.f10108b = mVar;
        this.f10109c = qVar;
    }

    @Override // h9.g
    public <T> h9.f<T> a(String str, Class<T> cls, h9.b bVar, h9.e<T, byte[]> eVar) {
        if (this.f10107a.contains(bVar)) {
            return new p(this.f10108b, str, bVar, eVar, this.f10109c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, this.f10107a));
    }
}
