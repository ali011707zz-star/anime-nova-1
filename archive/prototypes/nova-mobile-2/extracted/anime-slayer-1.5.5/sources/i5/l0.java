package i5;

import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.anslayer.R;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import j4.u2;
import rc.c2;
import rc.g1;
import rc.q0;

/* compiled from: TrackBottomSheet.kt */
/* loaded from: classes.dex */
public final class l0 extends BottomSheetDialog {

    /* renamed from: f, reason: collision with root package name */
    public final x f7653f;

    /* renamed from: g, reason: collision with root package name */
    public final u2 f7654g;

    /* renamed from: h, reason: collision with root package name */
    public final a f7655h;

    /* renamed from: i, reason: collision with root package name */
    public final z f7656i;

    /* compiled from: TrackBottomSheet.kt */
    /* loaded from: classes.dex */
    public interface a {
        void A(p4.p pVar, boolean z10);

        void D(p4.p pVar, boolean z10);

        void l(p4.p pVar, boolean z10);

        void o(p4.p pVar, boolean z10);

        void y(p4.p pVar, boolean z10);
    }

    /* compiled from: TrackBottomSheet.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.TrackBottomSheet$markDroppedStatus$1", f = "TrackBottomSheet.kt", l = {177, 188}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public boolean f7657f;

        /* renamed from: g, reason: collision with root package name */
        public int f7658g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ p4.p f7660i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(p4.p pVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f7660i = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f7660i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0109  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0116 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x010b  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            boolean a10;
            z s10;
            p4.p pVar;
            boolean z11;
            boolean z12;
            boolean z13;
            Object d10 = bc.c.d();
            int i10 = this.f7658g;
            boolean z14 = true;
            try {
                try {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 == 2) {
                                z12 = this.f7657f;
                                vb.k.b(obj);
                                l0.this.m(z12);
                                a aVar = l0.this.f7655h;
                                p4.p pVar2 = this.f7660i;
                                if (!z12) {
                                    z14 = false;
                                }
                                aVar.l(pVar2, z14);
                                l0.this.dismiss();
                                return vb.p.f15031a;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z13 = this.f7657f;
                        vb.k.b(obj);
                        ImageView imageView = l0.this.r().f8754g;
                        jc.l.e(imageView, "binding.checkDropped");
                        imageView.setVisibility(!(z13 ^ true) ? 0 : 8);
                        a aVar2 = l0.this.f7655h;
                        p4.p pVar3 = this.f7660i;
                        if (!z13) {
                            z14 = false;
                        }
                        aVar2.l(pVar3, z14);
                        l0.this.dismiss();
                        return vb.p.f15031a;
                    }
                    vb.k.b(obj);
                    LinearLayout linearLayout = l0.this.r().f8751d;
                    jc.l.e(linearLayout, "binding.btnPlanToWatch");
                    if (!(linearLayout.getVisibility() == 0)) {
                        LinearLayout linearLayout2 = l0.this.r().f8752e;
                        jc.l.e(linearLayout2, "binding.btnWatched");
                        if (!(linearLayout2.getVisibility() == 0)) {
                            LinearLayout linearLayout3 = l0.this.r().f8753f;
                            jc.l.e(linearLayout3, "binding.btnWatching");
                            if (!(linearLayout3.getVisibility() == 0)) {
                                ImageView imageView2 = l0.this.r().f8755h;
                                jc.l.e(imageView2, "binding.checkOnHold");
                                if (!(imageView2.getVisibility() == 0)) {
                                    z10 = false;
                                    a10 = jc.l.a(this.f7660i.g(), "Yes");
                                    if (!a10 && z10) {
                                        z s11 = l0.this.s();
                                        p4.p pVar4 = this.f7660i;
                                        boolean z15 = !a10;
                                        this.f7657f = a10;
                                        this.f7658g = 1;
                                        if (s11.l(pVar4, z15, this) == d10) {
                                            return d10;
                                        }
                                        z13 = a10;
                                        ImageView imageView3 = l0.this.r().f8754g;
                                        jc.l.e(imageView3, "binding.checkDropped");
                                        imageView3.setVisibility(!(z13 ^ true) ? 0 : 8);
                                        a aVar22 = l0.this.f7655h;
                                        p4.p pVar32 = this.f7660i;
                                        if (!z13) {
                                        }
                                        aVar22.l(pVar32, z14);
                                        l0.this.dismiss();
                                        return vb.p.f15031a;
                                    }
                                    s10 = l0.this.s();
                                    pVar = this.f7660i;
                                    z11 = a10;
                                    this.f7657f = a10;
                                    this.f7658g = 2;
                                    if (s10.l(pVar, z11, this) != d10) {
                                        return d10;
                                    }
                                    z12 = a10;
                                    l0.this.m(z12);
                                    a aVar3 = l0.this.f7655h;
                                    p4.p pVar22 = this.f7660i;
                                    if (!z12) {
                                    }
                                    aVar3.l(pVar22, z14);
                                    l0.this.dismiss();
                                    return vb.p.f15031a;
                                }
                            }
                        }
                    }
                    z10 = true;
                    a10 = jc.l.a(this.f7660i.g(), "Yes");
                    if (!a10) {
                    }
                    s10 = l0.this.s();
                    pVar = this.f7660i;
                    if (a10) {
                    }
                    this.f7657f = a10;
                    this.f7658g = 2;
                    if (s10.l(pVar, z11, this) != d10) {
                    }
                } catch (Exception unused) {
                    androidx.fragment.app.e activity = l0.this.f7653f.getActivity();
                    if (activity != null) {
                        k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                    }
                    return vb.p.f15031a;
                }
            } catch (Exception unused2) {
                androidx.fragment.app.e activity2 = l0.this.f7653f.getActivity();
                if (activity2 != null) {
                    k7.b.q(activity2, R.string.text_request_error, 0, 2, null);
                }
                return vb.p.f15031a;
            }
        }
    }

    /* compiled from: TrackBottomSheet.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.TrackBottomSheet$markOnHoldStatus$1", f = "TrackBottomSheet.kt", l = {208, 219}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public boolean f7661f;

        /* renamed from: g, reason: collision with root package name */
        public int f7662g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ p4.p f7664i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(p4.p pVar, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f7664i = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f7664i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0109  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0116 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x010b  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            boolean a10;
            z s10;
            p4.p pVar;
            boolean z11;
            boolean z12;
            boolean z13;
            Object d10 = bc.c.d();
            int i10 = this.f7662g;
            boolean z14 = true;
            try {
                try {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 == 2) {
                                z12 = this.f7661f;
                                vb.k.b(obj);
                                l0.this.n(z12);
                                a aVar = l0.this.f7655h;
                                p4.p pVar2 = this.f7664i;
                                if (!z12) {
                                    z14 = false;
                                }
                                aVar.y(pVar2, z14);
                                l0.this.dismiss();
                                return vb.p.f15031a;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z13 = this.f7661f;
                        vb.k.b(obj);
                        ImageView imageView = l0.this.r().f8755h;
                        jc.l.e(imageView, "binding.checkOnHold");
                        imageView.setVisibility(!(z13 ^ true) ? 0 : 8);
                        a aVar2 = l0.this.f7655h;
                        p4.p pVar3 = this.f7664i;
                        if (!z13) {
                            z14 = false;
                        }
                        aVar2.y(pVar3, z14);
                        l0.this.dismiss();
                        return vb.p.f15031a;
                    }
                    vb.k.b(obj);
                    LinearLayout linearLayout = l0.this.r().f8751d;
                    jc.l.e(linearLayout, "binding.btnPlanToWatch");
                    if (!(linearLayout.getVisibility() == 0)) {
                        LinearLayout linearLayout2 = l0.this.r().f8752e;
                        jc.l.e(linearLayout2, "binding.btnWatched");
                        if (!(linearLayout2.getVisibility() == 0)) {
                            LinearLayout linearLayout3 = l0.this.r().f8753f;
                            jc.l.e(linearLayout3, "binding.btnWatching");
                            if (!(linearLayout3.getVisibility() == 0)) {
                                LinearLayout linearLayout4 = l0.this.r().f8749b;
                                jc.l.e(linearLayout4, "binding.btnDropped");
                                if (!(linearLayout4.getVisibility() == 0)) {
                                    z10 = false;
                                    a10 = jc.l.a(this.f7664i.o(), "Yes");
                                    if (!a10 && z10) {
                                        z s11 = l0.this.s();
                                        p4.p pVar4 = this.f7664i;
                                        boolean z15 = !a10;
                                        this.f7661f = a10;
                                        this.f7662g = 1;
                                        if (s11.m(pVar4, z15, this) == d10) {
                                            return d10;
                                        }
                                        z13 = a10;
                                        ImageView imageView2 = l0.this.r().f8755h;
                                        jc.l.e(imageView2, "binding.checkOnHold");
                                        imageView2.setVisibility(!(z13 ^ true) ? 0 : 8);
                                        a aVar22 = l0.this.f7655h;
                                        p4.p pVar32 = this.f7664i;
                                        if (!z13) {
                                        }
                                        aVar22.y(pVar32, z14);
                                        l0.this.dismiss();
                                        return vb.p.f15031a;
                                    }
                                    s10 = l0.this.s();
                                    pVar = this.f7664i;
                                    z11 = a10;
                                    this.f7661f = a10;
                                    this.f7662g = 2;
                                    if (s10.m(pVar, z11, this) != d10) {
                                        return d10;
                                    }
                                    z12 = a10;
                                    l0.this.n(z12);
                                    a aVar3 = l0.this.f7655h;
                                    p4.p pVar22 = this.f7664i;
                                    if (!z12) {
                                    }
                                    aVar3.y(pVar22, z14);
                                    l0.this.dismiss();
                                    return vb.p.f15031a;
                                }
                            }
                        }
                    }
                    z10 = true;
                    a10 = jc.l.a(this.f7664i.o(), "Yes");
                    if (!a10) {
                    }
                    s10 = l0.this.s();
                    pVar = this.f7664i;
                    if (a10) {
                    }
                    this.f7661f = a10;
                    this.f7662g = 2;
                    if (s10.m(pVar, z11, this) != d10) {
                    }
                } catch (Exception unused) {
                    androidx.fragment.app.e activity = l0.this.f7653f.getActivity();
                    if (activity != null) {
                        k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                    }
                    return vb.p.f15031a;
                }
            } catch (Exception unused2) {
                androidx.fragment.app.e activity2 = l0.this.f7653f.getActivity();
                if (activity2 != null) {
                    k7.b.q(activity2, R.string.text_request_error, 0, 2, null);
                }
                return vb.p.f15031a;
            }
        }
    }

    /* compiled from: TrackBottomSheet.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.TrackBottomSheet$markPlanToWatchStatus$1", f = "TrackBottomSheet.kt", l = {85, 96}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public boolean f7665f;

        /* renamed from: g, reason: collision with root package name */
        public int f7666g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ p4.p f7668i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(p4.p pVar, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f7668i = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f7668i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0121  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0131  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0132  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0123  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x010e  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x011b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0110  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            boolean a10;
            z s10;
            p4.p pVar;
            boolean z11;
            boolean z12;
            boolean z13;
            Object d10 = bc.c.d();
            int i10 = this.f7666g;
            boolean z14 = true;
            try {
                try {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 == 2) {
                                z12 = this.f7665f;
                                vb.k.b(obj);
                                l0.this.o(z12);
                                a aVar = l0.this.f7655h;
                                p4.p pVar2 = this.f7668i;
                                if (!z12) {
                                    z14 = false;
                                }
                                aVar.o(pVar2, z14);
                                return vb.p.f15031a;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z13 = this.f7665f;
                        vb.k.b(obj);
                        ImageView imageView = l0.this.r().f8756i;
                        jc.l.e(imageView, "binding.checkPlanToWatch");
                        imageView.setVisibility(!(z13 ^ true) ? 0 : 8);
                        a aVar2 = l0.this.f7655h;
                        p4.p pVar3 = this.f7668i;
                        if (!z13) {
                            z14 = false;
                        }
                        aVar2.o(pVar3, z14);
                        return vb.p.f15031a;
                    }
                    vb.k.b(obj);
                    LinearLayout linearLayout = l0.this.r().f8752e;
                    jc.l.e(linearLayout, "binding.btnWatched");
                    if (!(linearLayout.getVisibility() == 0)) {
                        ImageView imageView2 = l0.this.r().f8758k;
                        jc.l.e(imageView2, "binding.checkWatching");
                        if (!(imageView2.getVisibility() == 0)) {
                            ImageView imageView3 = l0.this.r().f8754g;
                            jc.l.e(imageView3, "binding.checkDropped");
                            if (!(imageView3.getVisibility() == 0)) {
                                ImageView imageView4 = l0.this.r().f8755h;
                                jc.l.e(imageView4, "binding.checkOnHold");
                                if (!(imageView4.getVisibility() == 0)) {
                                    z10 = false;
                                    a10 = jc.l.a(this.f7668i.p(), "Yes");
                                    if (!a10 && z10) {
                                        l0.this.dismiss();
                                        z s11 = l0.this.s();
                                        p4.p pVar4 = this.f7668i;
                                        boolean z15 = !a10;
                                        this.f7665f = a10;
                                        this.f7666g = 1;
                                        if (s11.n(pVar4, z15, this) == d10) {
                                            return d10;
                                        }
                                        z13 = a10;
                                        ImageView imageView5 = l0.this.r().f8756i;
                                        jc.l.e(imageView5, "binding.checkPlanToWatch");
                                        imageView5.setVisibility(!(z13 ^ true) ? 0 : 8);
                                        a aVar22 = l0.this.f7655h;
                                        p4.p pVar32 = this.f7668i;
                                        if (!z13) {
                                        }
                                        aVar22.o(pVar32, z14);
                                        return vb.p.f15031a;
                                    }
                                    l0.this.dismiss();
                                    s10 = l0.this.s();
                                    pVar = this.f7668i;
                                    z11 = a10;
                                    this.f7665f = a10;
                                    this.f7666g = 2;
                                    if (s10.n(pVar, z11, this) != d10) {
                                        return d10;
                                    }
                                    z12 = a10;
                                    l0.this.o(z12);
                                    a aVar3 = l0.this.f7655h;
                                    p4.p pVar22 = this.f7668i;
                                    if (!z12) {
                                    }
                                    aVar3.o(pVar22, z14);
                                    return vb.p.f15031a;
                                }
                            }
                        }
                    }
                    z10 = true;
                    a10 = jc.l.a(this.f7668i.p(), "Yes");
                    if (!a10) {
                    }
                    l0.this.dismiss();
                    s10 = l0.this.s();
                    pVar = this.f7668i;
                    if (a10) {
                    }
                    this.f7665f = a10;
                    this.f7666g = 2;
                    if (s10.n(pVar, z11, this) != d10) {
                    }
                } catch (Exception unused) {
                    androidx.fragment.app.e activity = l0.this.f7653f.getActivity();
                    if (activity != null) {
                        k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                    }
                    return vb.p.f15031a;
                }
            } catch (Exception unused2) {
                androidx.fragment.app.e activity2 = l0.this.f7653f.getActivity();
                if (activity2 != null) {
                    k7.b.q(activity2, R.string.text_request_error, 0, 2, null);
                }
                return vb.p.f15031a;
            }
        }
    }

    /* compiled from: TrackBottomSheet.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.TrackBottomSheet$markWatchedStatus$1", f = "TrackBottomSheet.kt", l = {115, 126}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public boolean f7669f;

        /* renamed from: g, reason: collision with root package name */
        public int f7670g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ p4.p f7672i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(p4.p pVar, ac.d<? super e> dVar) {
            super(2, dVar);
            this.f7672i = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new e(this.f7672i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0109  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0116 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x010b  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            boolean a10;
            z s10;
            p4.p pVar;
            boolean z11;
            boolean z12;
            boolean z13;
            Object d10 = bc.c.d();
            int i10 = this.f7670g;
            boolean z14 = true;
            try {
                try {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 == 2) {
                                z12 = this.f7669f;
                                vb.k.b(obj);
                                l0.this.p(z12);
                                a aVar = l0.this.f7655h;
                                p4.p pVar2 = this.f7672i;
                                if (!z12) {
                                    z14 = false;
                                }
                                aVar.A(pVar2, z14);
                                l0.this.dismiss();
                                return vb.p.f15031a;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z13 = this.f7669f;
                        vb.k.b(obj);
                        ImageView imageView = l0.this.r().f8757j;
                        jc.l.e(imageView, "binding.checkWatched");
                        imageView.setVisibility(!(z13 ^ true) ? 0 : 8);
                        a aVar2 = l0.this.f7655h;
                        p4.p pVar3 = this.f7672i;
                        if (!z13) {
                            z14 = false;
                        }
                        aVar2.A(pVar3, z14);
                        l0.this.dismiss();
                        return vb.p.f15031a;
                    }
                    vb.k.b(obj);
                    LinearLayout linearLayout = l0.this.r().f8751d;
                    jc.l.e(linearLayout, "binding.btnPlanToWatch");
                    if (!(linearLayout.getVisibility() == 0)) {
                        ImageView imageView2 = l0.this.r().f8758k;
                        jc.l.e(imageView2, "binding.checkWatching");
                        if (!(imageView2.getVisibility() == 0)) {
                            ImageView imageView3 = l0.this.r().f8754g;
                            jc.l.e(imageView3, "binding.checkDropped");
                            if (!(imageView3.getVisibility() == 0)) {
                                ImageView imageView4 = l0.this.r().f8755h;
                                jc.l.e(imageView4, "binding.checkOnHold");
                                if (!(imageView4.getVisibility() == 0)) {
                                    z10 = false;
                                    a10 = jc.l.a(this.f7672i.w(), "Yes");
                                    if (!a10 && z10) {
                                        z s11 = l0.this.s();
                                        p4.p pVar4 = this.f7672i;
                                        boolean z15 = !a10;
                                        this.f7669f = a10;
                                        this.f7670g = 1;
                                        if (s11.o(pVar4, z15, this) == d10) {
                                            return d10;
                                        }
                                        z13 = a10;
                                        ImageView imageView5 = l0.this.r().f8757j;
                                        jc.l.e(imageView5, "binding.checkWatched");
                                        imageView5.setVisibility(!(z13 ^ true) ? 0 : 8);
                                        a aVar22 = l0.this.f7655h;
                                        p4.p pVar32 = this.f7672i;
                                        if (!z13) {
                                        }
                                        aVar22.A(pVar32, z14);
                                        l0.this.dismiss();
                                        return vb.p.f15031a;
                                    }
                                    s10 = l0.this.s();
                                    pVar = this.f7672i;
                                    z11 = a10;
                                    this.f7669f = a10;
                                    this.f7670g = 2;
                                    if (s10.o(pVar, z11, this) != d10) {
                                        return d10;
                                    }
                                    z12 = a10;
                                    l0.this.p(z12);
                                    a aVar3 = l0.this.f7655h;
                                    p4.p pVar22 = this.f7672i;
                                    if (!z12) {
                                    }
                                    aVar3.A(pVar22, z14);
                                    l0.this.dismiss();
                                    return vb.p.f15031a;
                                }
                            }
                        }
                    }
                    z10 = true;
                    a10 = jc.l.a(this.f7672i.w(), "Yes");
                    if (!a10) {
                    }
                    s10 = l0.this.s();
                    pVar = this.f7672i;
                    if (a10) {
                    }
                    this.f7669f = a10;
                    this.f7670g = 2;
                    if (s10.o(pVar, z11, this) != d10) {
                    }
                } catch (Exception unused) {
                    androidx.fragment.app.e activity = l0.this.f7653f.getActivity();
                    if (activity != null) {
                        k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                    }
                    return vb.p.f15031a;
                }
            } catch (Exception unused2) {
                androidx.fragment.app.e activity2 = l0.this.f7653f.getActivity();
                if (activity2 != null) {
                    k7.b.q(activity2, R.string.text_request_error, 0, 2, null);
                }
                return vb.p.f15031a;
            }
        }
    }

    /* compiled from: TrackBottomSheet.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.TrackBottomSheet$markWatchingStatus$1", f = "TrackBottomSheet.kt", l = {146, 157}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class f extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public boolean f7673f;

        /* renamed from: g, reason: collision with root package name */
        public int f7674g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ p4.p f7676i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(p4.p pVar, ac.d<? super f> dVar) {
            super(2, dVar);
            this.f7676i = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new f(this.f7676i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((f) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0109  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0116 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0117  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x010b  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            boolean a10;
            z s10;
            p4.p pVar;
            boolean z11;
            boolean z12;
            boolean z13;
            Object d10 = bc.c.d();
            int i10 = this.f7674g;
            boolean z14 = true;
            try {
                try {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 == 2) {
                                z12 = this.f7673f;
                                vb.k.b(obj);
                                l0.this.q(z12);
                                a aVar = l0.this.f7655h;
                                p4.p pVar2 = this.f7676i;
                                if (!z12) {
                                    z14 = false;
                                }
                                aVar.D(pVar2, z14);
                                l0.this.dismiss();
                                return vb.p.f15031a;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        z13 = this.f7673f;
                        vb.k.b(obj);
                        ImageView imageView = l0.this.r().f8758k;
                        jc.l.e(imageView, "binding.checkWatching");
                        imageView.setVisibility(!(z13 ^ true) ? 0 : 8);
                        a aVar2 = l0.this.f7655h;
                        p4.p pVar3 = this.f7676i;
                        if (!z13) {
                            z14 = false;
                        }
                        aVar2.D(pVar3, z14);
                        l0.this.dismiss();
                        return vb.p.f15031a;
                    }
                    vb.k.b(obj);
                    LinearLayout linearLayout = l0.this.r().f8751d;
                    jc.l.e(linearLayout, "binding.btnPlanToWatch");
                    if (!(linearLayout.getVisibility() == 0)) {
                        LinearLayout linearLayout2 = l0.this.r().f8752e;
                        jc.l.e(linearLayout2, "binding.btnWatched");
                        if (!(linearLayout2.getVisibility() == 0)) {
                            ImageView imageView2 = l0.this.r().f8754g;
                            jc.l.e(imageView2, "binding.checkDropped");
                            if (!(imageView2.getVisibility() == 0)) {
                                ImageView imageView3 = l0.this.r().f8755h;
                                jc.l.e(imageView3, "binding.checkOnHold");
                                if (!(imageView3.getVisibility() == 0)) {
                                    z10 = false;
                                    a10 = jc.l.a(this.f7676i.y(), "Yes");
                                    if (!a10 && z10) {
                                        z s11 = l0.this.s();
                                        p4.p pVar4 = this.f7676i;
                                        boolean z15 = !a10;
                                        this.f7673f = a10;
                                        this.f7674g = 1;
                                        if (s11.p(pVar4, z15, this) == d10) {
                                            return d10;
                                        }
                                        z13 = a10;
                                        ImageView imageView4 = l0.this.r().f8758k;
                                        jc.l.e(imageView4, "binding.checkWatching");
                                        imageView4.setVisibility(!(z13 ^ true) ? 0 : 8);
                                        a aVar22 = l0.this.f7655h;
                                        p4.p pVar32 = this.f7676i;
                                        if (!z13) {
                                        }
                                        aVar22.D(pVar32, z14);
                                        l0.this.dismiss();
                                        return vb.p.f15031a;
                                    }
                                    s10 = l0.this.s();
                                    pVar = this.f7676i;
                                    z11 = a10;
                                    this.f7673f = a10;
                                    this.f7674g = 2;
                                    if (s10.p(pVar, z11, this) != d10) {
                                        return d10;
                                    }
                                    z12 = a10;
                                    l0.this.q(z12);
                                    a aVar3 = l0.this.f7655h;
                                    p4.p pVar22 = this.f7676i;
                                    if (!z12) {
                                    }
                                    aVar3.D(pVar22, z14);
                                    l0.this.dismiss();
                                    return vb.p.f15031a;
                                }
                            }
                        }
                    }
                    z10 = true;
                    a10 = jc.l.a(this.f7676i.y(), "Yes");
                    if (!a10) {
                    }
                    s10 = l0.this.s();
                    pVar = this.f7676i;
                    if (a10) {
                    }
                    this.f7673f = a10;
                    this.f7674g = 2;
                    if (s10.p(pVar, z11, this) != d10) {
                    }
                } catch (Exception unused) {
                    androidx.fragment.app.e activity = l0.this.f7653f.getActivity();
                    if (activity != null) {
                        k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                    }
                    return vb.p.f15031a;
                }
            } catch (Exception unused2) {
                androidx.fragment.app.e activity2 = l0.this.f7653f.getActivity();
                if (activity2 != null) {
                    k7.b.q(activity2, R.string.text_request_error, 0, 2, null);
                }
                return vb.p.f15031a;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(x xVar) {
        super(xVar.requireActivity());
        jc.l.f(xVar, "fragment");
        this.f7653f = xVar;
        u2 c10 = u2.c(xVar.requireActivity().getLayoutInflater());
        jc.l.e(c10, "inflate(fragment.requireActivity().layoutInflater)");
        this.f7654g = c10;
        this.f7655h = xVar;
        this.f7656i = xVar.p();
        setContentView(c10.b());
    }

    public static final void A(l0 l0Var, p4.p pVar, View view) {
        jc.l.f(l0Var, "this$0");
        jc.l.f(pVar, "$anime");
        l0Var.w(pVar);
    }

    public static final void B(l0 l0Var, p4.p pVar, View view) {
        jc.l.f(l0Var, "this$0");
        jc.l.f(pVar, "$anime");
        l0Var.x(pVar);
    }

    public static final void C(l0 l0Var, p4.p pVar, View view) {
        jc.l.f(l0Var, "this$0");
        jc.l.f(pVar, "$anime");
        l0Var.t(pVar);
    }

    public static final void D(l0 l0Var, p4.p pVar, View view) {
        jc.l.f(l0Var, "this$0");
        jc.l.f(pVar, "$anime");
        l0Var.u(pVar);
    }

    public static final void z(l0 l0Var, p4.p pVar, View view) {
        jc.l.f(l0Var, "this$0");
        jc.l.f(pVar, "$anime");
        l0Var.v(pVar);
    }

    public final void m(boolean z10) {
        ImageView imageView = this.f7654g.f8754g;
        jc.l.e(imageView, "binding.checkDropped");
        imageView.setVisibility(z10 ? 0 : 8);
        u2 u2Var = this.f7654g;
        for (ImageView imageView2 : wb.l.l(u2Var.f8756i, u2Var.f8757j, u2Var.f8758k, u2Var.f8755h)) {
            jc.l.e(imageView2, "it");
            imageView2.setVisibility(8);
        }
    }

    public final void n(boolean z10) {
        ImageView imageView = this.f7654g.f8755h;
        jc.l.e(imageView, "binding.checkOnHold");
        imageView.setVisibility(z10 ? 0 : 8);
        u2 u2Var = this.f7654g;
        for (ImageView imageView2 : wb.l.l(u2Var.f8756i, u2Var.f8757j, u2Var.f8758k, u2Var.f8754g)) {
            jc.l.e(imageView2, "it");
            imageView2.setVisibility(8);
        }
    }

    public final void o(boolean z10) {
        ImageView imageView = this.f7654g.f8756i;
        jc.l.e(imageView, "binding.checkPlanToWatch");
        imageView.setVisibility(z10 ? 0 : 8);
        u2 u2Var = this.f7654g;
        for (ImageView imageView2 : wb.l.l(u2Var.f8757j, u2Var.f8758k, u2Var.f8754g, u2Var.f8755h)) {
            jc.l.e(imageView2, "it");
            imageView2.setVisibility(8);
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialog, e.b, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context context = getContext();
        jc.l.e(context, "context");
        Display f10 = k7.b.f(context);
        if (f10 == null) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        f10.getRealMetrics(displayMetrics);
        getBehavior().setPeekHeight(displayMetrics.heightPixels / 2);
    }

    public final void p(boolean z10) {
        ImageView imageView = this.f7654g.f8757j;
        jc.l.e(imageView, "binding.checkWatched");
        imageView.setVisibility(z10 ? 0 : 8);
        u2 u2Var = this.f7654g;
        for (ImageView imageView2 : wb.l.l(u2Var.f8756i, u2Var.f8758k, u2Var.f8754g, u2Var.f8755h)) {
            jc.l.e(imageView2, "it");
            imageView2.setVisibility(8);
        }
    }

    public final void q(boolean z10) {
        ImageView imageView = this.f7654g.f8758k;
        jc.l.e(imageView, "binding.checkWatching");
        imageView.setVisibility(z10 ? 0 : 8);
        u2 u2Var = this.f7654g;
        for (ImageView imageView2 : wb.l.l(u2Var.f8756i, u2Var.f8757j, u2Var.f8754g, u2Var.f8755h)) {
            jc.l.e(imageView2, "it");
            imageView2.setVisibility(8);
        }
    }

    public final u2 r() {
        return this.f7654g;
    }

    public final z s() {
        return this.f7656i;
    }

    public final c2 t(p4.p pVar) {
        c2 d10;
        d10 = rc.k.d(this.f7653f, g1.c(), null, new b(pVar, null), 2, null);
        return d10;
    }

    public final c2 u(p4.p pVar) {
        c2 d10;
        d10 = rc.k.d(this.f7653f, g1.c(), null, new c(pVar, null), 2, null);
        return d10;
    }

    public final c2 v(p4.p pVar) {
        c2 d10;
        d10 = rc.k.d(this.f7653f, g1.c(), null, new d(pVar, null), 2, null);
        return d10;
    }

    public final c2 w(p4.p pVar) {
        c2 d10;
        d10 = rc.k.d(this.f7653f, g1.c(), null, new e(pVar, null), 2, null);
        return d10;
    }

    public final c2 x(p4.p pVar) {
        c2 d10;
        d10 = rc.k.d(this.f7653f, g1.c(), null, new f(pVar, null), 2, null);
        return d10;
    }

    public final void y(final p4.p pVar) {
        jc.l.f(pVar, "anime");
        ImageView imageView = this.f7654g.f8756i;
        jc.l.e(imageView, "binding.checkPlanToWatch");
        imageView.setVisibility(jc.l.a(pVar.p(), "Yes") ? 0 : 8);
        ImageView imageView2 = this.f7654g.f8757j;
        jc.l.e(imageView2, "binding.checkWatched");
        imageView2.setVisibility(jc.l.a(pVar.w(), "Yes") ? 0 : 8);
        ImageView imageView3 = this.f7654g.f8758k;
        jc.l.e(imageView3, "binding.checkWatching");
        imageView3.setVisibility(jc.l.a(pVar.y(), "Yes") ? 0 : 8);
        ImageView imageView4 = this.f7654g.f8754g;
        jc.l.e(imageView4, "binding.checkDropped");
        imageView4.setVisibility(jc.l.a(pVar.g(), "Yes") ? 0 : 8);
        ImageView imageView5 = this.f7654g.f8755h;
        jc.l.e(imageView5, "binding.checkOnHold");
        imageView5.setVisibility(jc.l.a(pVar.o(), "Yes") ? 0 : 8);
        if (jc.l.a(pVar.u(), "Currently Airing")) {
            LinearLayout linearLayout = this.f7654g.f8752e;
            jc.l.e(linearLayout, "binding.btnWatched");
            linearLayout.setVisibility(8);
        }
        if (pVar.g0()) {
            LinearLayout linearLayout2 = this.f7654g.f8752e;
            jc.l.e(linearLayout2, "binding.btnWatched");
            linearLayout2.setVisibility(8);
            LinearLayout linearLayout3 = this.f7654g.f8753f;
            jc.l.e(linearLayout3, "binding.btnWatching");
            linearLayout3.setVisibility(8);
        }
        this.f7654g.f8751d.setOnClickListener(new View.OnClickListener() { // from class: i5.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l0.z(l0.this, pVar, view);
            }
        });
        this.f7654g.f8752e.setOnClickListener(new View.OnClickListener() { // from class: i5.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l0.A(l0.this, pVar, view);
            }
        });
        this.f7654g.f8753f.setOnClickListener(new View.OnClickListener() { // from class: i5.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l0.B(l0.this, pVar, view);
            }
        });
        this.f7654g.f8749b.setOnClickListener(new View.OnClickListener() { // from class: i5.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l0.C(l0.this, pVar, view);
            }
        });
        this.f7654g.f8750c.setOnClickListener(new View.OnClickListener() { // from class: i5.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                l0.D(l0.this, pVar, view);
            }
        });
    }
}
