package g6;

import android.R;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.widget.SlayerImage;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g6.c;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: BrowseGridHolder.kt */
/* loaded from: classes.dex */
public final class m extends q5.a {

    /* renamed from: c, reason: collision with root package name */
    public static final a f6985c = new a(null);

    /* renamed from: b, reason: collision with root package name */
    public final j4.p f6986b;

    /* compiled from: BrowseGridHolder.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final m a(ViewGroup viewGroup) {
            jc.l.f(viewGroup, "parent");
            j4.p c10 = j4.p.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            jc.l.e(c10, "inflate(inflater, parent, false)");
            return new m(c10, null);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public m(j4.p pVar) {
        super(r0);
        FrameLayout b10 = pVar.b();
        jc.l.e(b10, "binding.root");
        this.f6986b = pVar;
    }

    public /* synthetic */ m(j4.p pVar, jc.g gVar) {
        this(pVar);
    }

    public static final void g(m mVar, p4.p pVar, View view) {
        c.b p10;
        jc.l.f(mVar, "this$0");
        jc.l.f(pVar, "$anime");
        RecyclerView.h<? extends RecyclerView.e0> bindingAdapter = mVar.getBindingAdapter();
        c cVar = bindingAdapter instanceof c ? (c) bindingAdapter : null;
        if (cVar == null || (p10 = cVar.p()) == null) {
            return;
        }
        p10.h(pVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c5  */
    @Override // q5.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(final p4.p pVar) {
        boolean z10;
        String E;
        jc.l.f(pVar, "anime");
        j4.p pVar2 = this.f6986b;
        pVar2.f8614h.setText(pVar.n());
        pVar2.f8615i.setText(pVar.Z());
        AppCompatImageView appCompatImageView = pVar2.f8617k;
        jc.l.e(appCompatImageView, "star");
        appCompatImageView.setVisibility(pVar.q() != null ? 0 : 8);
        SingleLineTextView singleLineTextView = pVar2.f8613g;
        jc.l.e(singleLineTextView, "seriesRating");
        singleLineTextView.setVisibility(pVar.q() != null ? 0 : 8);
        pVar2.f8613g.setText(pVar.j0());
        if (pVar.g0()) {
            AppCompatImageView appCompatImageView2 = pVar2.f8617k;
            jc.l.e(appCompatImageView2, "star");
            appCompatImageView2.setVisibility(8);
            SingleLineTextView singleLineTextView2 = pVar2.f8613g;
            jc.l.e(singleLineTextView2, "seriesRating");
            singleLineTextView2.setVisibility(8);
        }
        TextView textView = pVar2.f8616j;
        String E2 = pVar.E();
        if (E2 == null) {
            E2 = pVar.t();
        }
        textView.setText(E2);
        TextView textView2 = pVar2.f8616j;
        jc.l.e(textView2, "seriesYear");
        String E3 = pVar.E();
        if (E3 == null || E3.length() == 0) {
            String t10 = pVar.t();
            if (t10 == null || t10.length() == 0) {
                z10 = true;
                textView2.setVisibility(z10 ? 8 : 0);
                E = pVar.E();
                if (!(E != null || E.length() == 0)) {
                    if (Build.VERSION.SDK_INT >= 19) {
                        pVar2.f8616j.setLayerType(1, null);
                    }
                    pVar2.f8616j.setOnClickListener(new View.OnClickListener() { // from class: g6.l
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            m.g(m.this, pVar, view);
                        }
                    });
                    pVar2.f8616j.setShadowLayer(30.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, -65536);
                    pVar2.f8616j.setGravity(8388611);
                }
                SlayerImage slayerImage = this.f6986b.f8612f;
                jc.l.e(slayerImage, "binding.seriesImage");
                l7.p.f(slayerImage, 0, 1, null);
                h(pVar);
            }
        }
        z10 = false;
        textView2.setVisibility(z10 ? 8 : 0);
        E = pVar.E();
        if (!(E != null || E.length() == 0)) {
        }
        SlayerImage slayerImage2 = this.f6986b.f8612f;
        jc.l.e(slayerImage2, "binding.seriesImage");
        l7.p.f(slayerImage2, 0, 1, null);
        h(pVar);
    }

    public void h(p4.p pVar) {
        jc.l.f(pVar, "anime");
        d4.a.a(this.itemView.getContext()).m(this.f6986b.f8612f);
        d4.a.a(this.itemView.getContext()).s(pVar.e()).g(r7.j.f12974c).G0().T(R.color.transparent).u0(this.f6986b.f8612f);
    }
}
