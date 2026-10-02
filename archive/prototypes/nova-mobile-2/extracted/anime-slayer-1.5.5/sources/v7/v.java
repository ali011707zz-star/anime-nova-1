package v7;

import com.bumptech.glide.load.data.d;
import v7.n;

/* compiled from: UnitModelLoader.java */
/* loaded from: classes.dex */
public class v<Model> implements n<Model, Model> {

    /* renamed from: a, reason: collision with root package name */
    public static final v<?> f14949a = new v<>();

    /* compiled from: UnitModelLoader.java */
    /* loaded from: classes.dex */
    public static class a<Model> implements o<Model, Model> {

        /* renamed from: a, reason: collision with root package name */
        public static final a<?> f14950a = new a<>();

        @Deprecated
        public a() {
        }

        public static <T> a<T> b() {
            return (a<T>) f14950a;
        }

        @Override // v7.o
        public n<Model, Model> a(r rVar) {
            return v.c();
        }
    }

    /* compiled from: UnitModelLoader.java */
    /* loaded from: classes.dex */
    public static class b<Model> implements com.bumptech.glide.load.data.d<Model> {

        /* renamed from: f, reason: collision with root package name */
        public final Model f14951f;

        public b(Model model) {
            this.f14951f = model;
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<Model> a() {
            return (Class<Model>) this.f14951f.getClass();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public p7.a e() {
            return p7.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void f(com.bumptech.glide.g gVar, d.a<? super Model> aVar) {
            aVar.d(this.f14951f);
        }
    }

    @Deprecated
    public v() {
    }

    public static <T> v<T> c() {
        return (v<T>) f14949a;
    }

    @Override // v7.n
    public n.a<Model> a(Model model, int i10, int i11, p7.g gVar) {
        return new n.a<>(new k8.d(model), new b(model));
    }

    @Override // v7.n
    public boolean b(Model model) {
        return true;
    }
}
