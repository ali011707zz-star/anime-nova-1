package r7;

import android.util.Log;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DecodePath.java */
/* loaded from: classes.dex */
public class i<DataType, ResourceType, Transcode> {

    /* renamed from: a, reason: collision with root package name */
    public final Class<DataType> f12967a;

    /* renamed from: b, reason: collision with root package name */
    public final List<? extends p7.i<DataType, ResourceType>> f12968b;

    /* renamed from: c, reason: collision with root package name */
    public final d8.e<ResourceType, Transcode> f12969c;

    /* renamed from: d, reason: collision with root package name */
    public final p0.f<List<Throwable>> f12970d;

    /* renamed from: e, reason: collision with root package name */
    public final String f12971e;

    /* compiled from: DecodePath.java */
    /* loaded from: classes.dex */
    public interface a<ResourceType> {
        u<ResourceType> a(u<ResourceType> uVar);
    }

    public i(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends p7.i<DataType, ResourceType>> list, d8.e<ResourceType, Transcode> eVar, p0.f<List<Throwable>> fVar) {
        this.f12967a = cls;
        this.f12968b = list;
        this.f12969c = eVar;
        this.f12970d = fVar;
        this.f12971e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public u<Transcode> a(com.bumptech.glide.load.data.e<DataType> eVar, int i10, int i11, p7.g gVar, a<ResourceType> aVar) throws GlideException {
        return this.f12969c.a(aVar.a(b(eVar, i10, i11, gVar)), gVar);
    }

    public final u<ResourceType> b(com.bumptech.glide.load.data.e<DataType> eVar, int i10, int i11, p7.g gVar) throws GlideException {
        List<Throwable> list = (List) l8.j.d(this.f12970d.b());
        try {
            return c(eVar, i10, i11, gVar, list);
        } finally {
            this.f12970d.a(list);
        }
    }

    public final u<ResourceType> c(com.bumptech.glide.load.data.e<DataType> eVar, int i10, int i11, p7.g gVar, List<Throwable> list) throws GlideException {
        int size = this.f12968b.size();
        u<ResourceType> uVar = null;
        for (int i12 = 0; i12 < size; i12++) {
            p7.i<DataType, ResourceType> iVar = this.f12968b.get(i12);
            try {
                if (iVar.a(eVar.a(), gVar)) {
                    uVar = iVar.b(eVar.a(), i10, i11, gVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e10) {
                if (Log.isLoggable("DecodePath", 2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed to decode data for ");
                    sb2.append(iVar);
                }
                list.add(e10);
            }
            if (uVar != null) {
                break;
            }
        }
        if (uVar != null) {
            return uVar;
        }
        throw new GlideException(this.f12971e, new ArrayList(list));
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f12967a + ", decoders=" + this.f12968b + ", transcoder=" + this.f12969c + '}';
    }
}
