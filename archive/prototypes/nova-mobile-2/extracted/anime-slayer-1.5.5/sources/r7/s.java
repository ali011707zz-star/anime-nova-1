package r7;

import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import r7.i;

/* compiled from: LoadPath.java */
/* loaded from: classes.dex */
public class s<Data, ResourceType, Transcode> {

    /* renamed from: a, reason: collision with root package name */
    public final Class<Data> f13049a;

    /* renamed from: b, reason: collision with root package name */
    public final p0.f<List<Throwable>> f13050b;

    /* renamed from: c, reason: collision with root package name */
    public final List<? extends i<Data, ResourceType, Transcode>> f13051c;

    /* renamed from: d, reason: collision with root package name */
    public final String f13052d;

    public s(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<i<Data, ResourceType, Transcode>> list, p0.f<List<Throwable>> fVar) {
        this.f13049a = cls;
        this.f13050b = fVar;
        this.f13051c = (List) l8.j.c(list);
        this.f13052d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public u<Transcode> a(com.bumptech.glide.load.data.e<Data> eVar, p7.g gVar, int i10, int i11, i.a<ResourceType> aVar) throws GlideException {
        List<Throwable> list = (List) l8.j.d(this.f13050b.b());
        try {
            return b(eVar, gVar, i10, i11, aVar, list);
        } finally {
            this.f13050b.a(list);
        }
    }

    public final u<Transcode> b(com.bumptech.glide.load.data.e<Data> eVar, p7.g gVar, int i10, int i11, i.a<ResourceType> aVar, List<Throwable> list) throws GlideException {
        int size = this.f13051c.size();
        u<Transcode> uVar = null;
        for (int i12 = 0; i12 < size; i12++) {
            try {
                uVar = this.f13051c.get(i12).a(eVar, i10, i11, gVar, aVar);
            } catch (GlideException e10) {
                list.add(e10);
            }
            if (uVar != null) {
                break;
            }
        }
        if (uVar != null) {
            return uVar;
        }
        throw new GlideException(this.f13052d, new ArrayList(list));
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f13051c.toArray()) + '}';
    }
}
