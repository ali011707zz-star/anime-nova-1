package v7;

import java.util.Collections;
import java.util.List;

/* compiled from: ModelLoader.java */
/* loaded from: classes.dex */
public interface n<Model, Data> {

    /* compiled from: ModelLoader.java */
    /* loaded from: classes.dex */
    public static class a<Data> {

        /* renamed from: a, reason: collision with root package name */
        public final p7.e f14916a;

        /* renamed from: b, reason: collision with root package name */
        public final List<p7.e> f14917b;

        /* renamed from: c, reason: collision with root package name */
        public final com.bumptech.glide.load.data.d<Data> f14918c;

        public a(p7.e eVar, com.bumptech.glide.load.data.d<Data> dVar) {
            this(eVar, Collections.emptyList(), dVar);
        }

        public a(p7.e eVar, List<p7.e> list, com.bumptech.glide.load.data.d<Data> dVar) {
            this.f14916a = (p7.e) l8.j.d(eVar);
            this.f14917b = (List) l8.j.d(list);
            this.f14918c = (com.bumptech.glide.load.data.d) l8.j.d(dVar);
        }
    }

    a<Data> a(Model model, int i10, int i11, p7.g gVar);

    boolean b(Model model);
}
