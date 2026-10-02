package x3;

import android.app.Application;
import com.anslayer.data.database.AppDatabase;
import jc.l;
import jc.m;
import zd.c;

/* compiled from: AppModule.kt */
/* loaded from: classes.dex */
public final class c implements zd.c {

    /* renamed from: a, reason: collision with root package name */
    public final Application f15851a;

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class a extends zd.a<Application> {
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class b extends zd.a<f4.d> {
    }

    /* compiled from: TypeInfo.kt */
    /* renamed from: x3.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0410c extends zd.a<ja.f> {
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class d extends zd.a<AppDatabase> {
    }

    /* compiled from: AppModule.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<f4.d> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final f4.d invoke() {
            return new f4.d(c.this.d());
        }
    }

    /* compiled from: AppModule.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f15853f = new f();

        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ja.f invoke() {
            return new ja.f();
        }
    }

    /* compiled from: AppModule.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<AppDatabase> {
        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AppDatabase invoke() {
            return AppDatabase.f4083o.a(c.this.d());
        }
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class h extends zd.a<f4.d> {
    }

    public c(Application application) {
        l.f(application, "app");
        this.f15851a = application;
    }

    public static final void e(zd.d dVar) {
        l.f(dVar, "$this_registerInjectables");
        dVar.a(new h().getType());
    }

    @Override // zd.c
    public void a(final zd.d dVar) {
        l.f(dVar, "<this>");
        dVar.d(new a(), this.f15851a);
        dVar.c(new b(), new e());
        dVar.c(new C0410c(), f.f15853f);
        dVar.c(new d(), new g());
        f0.a.i(this.f15851a).execute(new Runnable() { // from class: x3.b
            @Override // java.lang.Runnable
            public final void run() {
                c.e(zd.d.this);
            }
        });
    }

    @Override // zd.c
    public void b(zd.d dVar) {
        c.a.a(this, dVar);
    }

    public final Application d() {
        return this.f15851a;
    }
}
