package w2;

import android.view.View;
import d3.e;
import ic.l;
import jc.m;
import s2.c;
import vb.p;

/* compiled from: DialogCustomViewExt.kt */
/* loaded from: classes.dex */
public final class a {

    /* compiled from: DialogCustomViewExt.kt */
    /* renamed from: w2.a$a */
    /* loaded from: classes.dex */
    public static final class C0396a extends m implements l<View, p> {

        /* renamed from: f */
        public final /* synthetic */ c f15234f;

        /* renamed from: g */
        public final /* synthetic */ boolean f15235g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0396a(c cVar, boolean z10) {
            super(1);
            this.f15234f = cVar;
            this.f15235g = z10;
        }

        public final void a(View view) {
            jc.l.g(view, "$receiver");
            c.l(this.f15234f, null, Integer.valueOf(view.getMeasuredWidth()), 1, null);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(View view) {
            a(view);
            return p.f15031a;
        }
    }

    public static final c a(c cVar, Integer num, View view, boolean z10, boolean z11, boolean z12, boolean z13) {
        jc.l.g(cVar, "$this$customView");
        e eVar = e.f5611a;
        eVar.a("customView", view, num);
        cVar.e().put("md.custom_view_no_vertical_padding", Boolean.valueOf(z11));
        if (z13) {
            c.l(cVar, null, 0, 1, null);
        }
        View b10 = cVar.h().getContentLayout().b(num, view, z10, z12);
        if (z13) {
            eVar.y(b10, new C0396a(cVar, z13));
        }
        return cVar;
    }

    public static /* synthetic */ c b(c cVar, Integer num, View view, boolean z10, boolean z11, boolean z12, boolean z13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            view = null;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        if ((i10 & 8) != 0) {
            z11 = false;
        }
        if ((i10 & 16) != 0) {
            z12 = false;
        }
        if ((i10 & 32) != 0) {
            z13 = false;
        }
        return a(cVar, num, view, z10, z11, z12, z13);
    }

    public static final View c(c cVar) {
        jc.l.g(cVar, "$this$getCustomView");
        View customView = cVar.h().getContentLayout().getCustomView();
        if (customView != null) {
            return customView;
        }
        throw new IllegalStateException("You have not setup this dialog as a customView dialog.");
    }
}
