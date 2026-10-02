package g6;

import android.R;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.widget.SlayerImage;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g6.c;
import io.wax911.support.custom.widget.SingleLineTextView;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: BrowseListHolder.kt */
/* loaded from: classes.dex */
public final class o extends q5.a {

    /* renamed from: c, reason: collision with root package name */
    public static final a f6989c = new a(null);

    /* renamed from: b, reason: collision with root package name */
    public final j4.o f6990b;

    /* compiled from: BrowseListHolder.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final o a(ViewGroup viewGroup) {
            jc.l.f(viewGroup, "parent");
            j4.o c10 = j4.o.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            jc.l.e(c10, "inflate(inflater, parent, false)");
            return new o(c10, null);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public o(j4.o oVar) {
        super(r0);
        FrameLayout b10 = oVar.b();
        jc.l.e(b10, "binding.root");
        this.f6990b = oVar;
    }

    public /* synthetic */ o(j4.o oVar, jc.g gVar) {
        this(oVar);
    }

    public static final void g(o oVar, p4.p pVar, View view) {
        c.b p10;
        jc.l.f(oVar, "this$0");
        jc.l.f(pVar, "$anime");
        RecyclerView.h<? extends RecyclerView.e0> bindingAdapter = oVar.getBindingAdapter();
        c cVar = bindingAdapter instanceof c ? (c) bindingAdapter : null;
        if (cVar == null || (p10 = cVar.p()) == null) {
            return;
        }
        p10.h(pVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0106  */
    @Override // q5.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(final p4.p pVar) {
        String str;
        boolean z10;
        String E;
        jc.l.f(pVar, "anime");
        j4.o oVar = this.f6990b;
        oVar.f8588h.setText(pVar.n());
        oVar.f8589i.setText(pVar.c0());
        AppCompatImageView appCompatImageView = oVar.f8590j;
        jc.l.e(appCompatImageView, "star");
        appCompatImageView.setVisibility(pVar.q() != null ? 0 : 8);
        SingleLineTextView singleLineTextView = oVar.f8585e;
        jc.l.e(singleLineTextView, "seriesRating");
        singleLineTextView.setVisibility(pVar.q() != null ? 0 : 8);
        oVar.f8585e.setText(pVar.j0());
        if (pVar.g0()) {
            AppCompatImageView appCompatImageView2 = oVar.f8590j;
            jc.l.e(appCompatImageView2, "star");
            appCompatImageView2.setVisibility(8);
            SingleLineTextView singleLineTextView2 = oVar.f8585e;
            jc.l.e(singleLineTextView2, "seriesRating");
            singleLineTextView2.setVisibility(8);
        }
        SingleLineTextView singleLineTextView3 = oVar.f8583c;
        String E2 = pVar.E();
        if (E2 == null) {
            E2 = pVar.l();
        }
        singleLineTextView3.setText(E2);
        SingleLineTextView singleLineTextView4 = oVar.f8587g;
        String E3 = pVar.E();
        boolean z11 = E3 == null || E3.length() == 0;
        String str2 = "";
        if (z11) {
            str = pVar.Z();
        } else {
            if (z11) {
                throw new NoWhenBranchMatchedException();
            }
            str = "";
        }
        singleLineTextView4.setText(str);
        SingleLineTextView singleLineTextView5 = oVar.f8586f;
        String E4 = pVar.E();
        boolean z12 = E4 == null || E4.length() == 0;
        if (z12) {
            str2 = pVar.k0();
        } else if (z12) {
            throw new NoWhenBranchMatchedException();
        }
        singleLineTextView5.setText(str2);
        SingleLineTextView singleLineTextView6 = this.f6990b.f8586f;
        jc.l.e(singleLineTextView6, "binding.seriesSeason");
        String E5 = pVar.E();
        if (E5 == null || E5.length() == 0) {
            String t10 = pVar.t();
            if (t10 == null || t10.length() == 0) {
                z10 = true;
                singleLineTextView6.setVisibility(z10 ? 8 : 0);
                E = pVar.E();
                if (!(E != null || E.length() == 0)) {
                    if (Build.VERSION.SDK_INT >= 19) {
                        oVar.f8583c.setLayerType(1, null);
                    }
                    oVar.f8583c.setShadowLayer(30.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, -65536);
                    oVar.f8583c.setOnClickListener(new View.OnClickListener() { // from class: g6.n
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            o.g(o.this, pVar, view);
                        }
                    });
                }
                SlayerImage slayerImage = this.f6990b.f8584d;
                jc.l.e(slayerImage, "binding.seriesImage");
                l7.p.f(slayerImage, 0, 1, null);
                h(pVar);
            }
        }
        z10 = false;
        singleLineTextView6.setVisibility(z10 ? 8 : 0);
        E = pVar.E();
        if (!(E != null || E.length() == 0)) {
        }
        SlayerImage slayerImage2 = this.f6990b.f8584d;
        jc.l.e(slayerImage2, "binding.seriesImage");
        l7.p.f(slayerImage2, 0, 1, null);
        h(pVar);
    }

    public void h(p4.p pVar) {
        jc.l.f(pVar, "anime");
        d4.a.a(this.itemView.getContext()).m(this.f6990b.f8584d);
        d4.a.a(this.itemView.getContext()).s(pVar.e()).g(r7.j.f12974c).G0().T(R.color.transparent).u0(this.f6990b.f8584d);
    }
}
