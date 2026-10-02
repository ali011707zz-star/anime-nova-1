package r7;

import java.io.File;
import t7.a;

/* compiled from: DataCacheWriter.java */
/* loaded from: classes.dex */
public class e<DataType> implements a.b {

    /* renamed from: a, reason: collision with root package name */
    public final p7.d<DataType> f12903a;

    /* renamed from: b, reason: collision with root package name */
    public final DataType f12904b;

    /* renamed from: c, reason: collision with root package name */
    public final p7.g f12905c;

    public e(p7.d<DataType> dVar, DataType datatype, p7.g gVar) {
        this.f12903a = dVar;
        this.f12904b = datatype;
        this.f12905c = gVar;
    }

    @Override // t7.a.b
    public boolean a(File file) {
        return this.f12903a.b(this.f12904b, file, this.f12905c);
    }
}
