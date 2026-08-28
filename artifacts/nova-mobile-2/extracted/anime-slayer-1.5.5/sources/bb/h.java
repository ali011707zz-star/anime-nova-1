package bb;

import android.content.SharedPreferences;
import cc.k;
import ic.p;
import jc.l;
import jc.m;
import tc.r;
import tc.x;
import vb.j;

/* compiled from: SharedPreferencesExtensions.kt */
/* loaded from: classes.dex */
public final class h {

    /* compiled from: SharedPreferencesExtensions.kt */
    @cc.f(c = "com.tfcporciuncula.flow.SharedPreferencesExtensionsKt$keyFlow$1", f = "SharedPreferencesExtensions.kt", l = {15}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends k implements p<r<? super String>, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f3582f;

        /* renamed from: g, reason: collision with root package name */
        public int f3583g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ SharedPreferences f3584h;

        /* compiled from: SharedPreferencesExtensions.kt */
        /* renamed from: bb.h$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0069a extends m implements ic.a<vb.p> {

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ SharedPreferences.OnSharedPreferenceChangeListener f3586g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0069a(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
                super(0);
                this.f3586g = onSharedPreferenceChangeListener;
            }

            public final void a() {
                a.this.f3584h.unregisterOnSharedPreferenceChangeListener(this.f3586g);
            }

            @Override // ic.a
            public /* bridge */ /* synthetic */ vb.p invoke() {
                a();
                return vb.p.f15031a;
            }
        }

        /* compiled from: SharedPreferencesExtensions.kt */
        /* loaded from: classes.dex */
        public static final class b implements SharedPreferences.OnSharedPreferenceChangeListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ r f3587f;

            public b(r rVar) {
                this.f3587f = rVar;
            }

            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                h.c(this.f3587f, str);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SharedPreferences sharedPreferences, ac.d dVar) {
            super(2, dVar);
            this.f3584h = sharedPreferences;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            l.f(dVar, "completion");
            a aVar = new a(this.f3584h, dVar);
            aVar.f3582f = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(r<? super String> rVar, ac.d<? super vb.p> dVar) {
            return ((a) create(rVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f3583g;
            if (i10 == 0) {
                vb.k.b(obj);
                r rVar = (r) this.f3582f;
                b bVar = new b(rVar);
                this.f3584h.registerOnSharedPreferenceChangeListener(bVar);
                C0069a c0069a = new C0069a(bVar);
                this.f3583g = 1;
                if (tc.p.a(rVar, c0069a, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    public static final uc.f<String> b(SharedPreferences sharedPreferences) {
        l.f(sharedPreferences, "$this$keyFlow");
        return uc.h.c(new a(sharedPreferences, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> boolean c(x<? super E> xVar, E e10) {
        Object a10;
        try {
            j.a aVar = j.f15020f;
            a10 = j.a(Boolean.valueOf(xVar.f(e10)));
        } catch (Throwable th) {
            j.a aVar2 = j.f15020f;
            a10 = j.a(vb.k.a(th));
        }
        Boolean bool = Boolean.FALSE;
        if (j.c(a10)) {
            a10 = bool;
        }
        return ((Boolean) a10).booleanValue();
    }
}
