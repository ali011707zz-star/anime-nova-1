package l6;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import com.anslayer.api.endpoint.CustomListEndPoint;
import com.twitter.sdk.android.core.identity.AuthHandler;
import jc.l;
import jc.m;
import k1.d;
import k1.o0;
import k1.p0;
import k1.q0;
import k1.t0;
import p4.j;
import uc.f;

/* compiled from: UserCustomListViewModel.kt */
/* loaded from: classes.dex */
public final class c extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final CustomListEndPoint f10480a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10481b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10482c;

    /* renamed from: d, reason: collision with root package name */
    public f<q0<j>> f10483d;

    /* compiled from: UserCustomListViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final Fragment f10484b;

        /* renamed from: c, reason: collision with root package name */
        public final long f10485c;

        /* renamed from: d, reason: collision with root package name */
        public final CustomListEndPoint f10486d;

        public a(Fragment fragment) {
            l.f(fragment, "fragment");
            this.f10484b = fragment;
            this.f10485c = fragment.requireArguments().getLong(AuthHandler.EXTRA_USER_ID);
            Context requireContext = fragment.requireContext();
            l.e(requireContext, "fragment.requireContext()");
            this.f10486d = (CustomListEndPoint) z3.b.f17284d.getInstance(requireContext).b(CustomListEndPoint.class);
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new c(this.f10486d, this.f10485c);
        }
    }

    /* compiled from: UserCustomListViewModel.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<t0<Integer, j>> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t0<Integer, j> invoke() {
            return new l6.b(c.this.c(), c.this.d());
        }
    }

    public c(CustomListEndPoint customListEndPoint, long j10) {
        l.f(customListEndPoint, "service");
        this.f10480a = customListEndPoint;
        this.f10481b = j10;
    }

    public final f<q0<j>> a() {
        f<q0<j>> fVar = this.f10483d;
        if (fVar != null) {
            return fVar;
        }
        f<q0<j>> a10 = d.a(new o0(new p0(20, 5, false, 20, 0, 0, 48, null), null, new b(), 2, null).a(), j0.a(this));
        this.f10483d = a10;
        return a10;
    }

    public final boolean b() {
        return this.f10482c;
    }

    public final CustomListEndPoint c() {
        return this.f10480a;
    }

    public final long d() {
        return this.f10481b;
    }

    public final void e(boolean z10) {
        this.f10482c = z10;
    }
}
