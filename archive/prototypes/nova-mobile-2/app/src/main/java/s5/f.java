package s5;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.anslayer.widget.SlayerImage;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportViewHolder;
import io.wax911.support.custom.widget.SingleLineTextView;
import jc.l;
import p4.p;
import s5.f;

/* compiled from: SeriesItemAdapter.kt */
/* loaded from: classes.dex */
public final class f extends n5.d<p> {

    /* compiled from: SeriesItemAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends SupportViewHolder<p> {

        /* renamed from: f, reason: collision with root package name */
        public final j4.p f13744f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(j4.p pVar) {
            super(r0);
            l.f(pVar, "binding");
            FrameLayout b10 = pVar.b();
            l.e(b10, "binding.root");
            this.f13744f = pVar;
        }

        public static final void g(a aVar, p pVar, View view) {
            l.f(aVar, "this$0");
            l.f(pVar, "$model");
            l.e(view, "it");
            aVar.performClick(pVar, view);
        }

        public static final void h(a aVar, p pVar, View view) {
            l.f(aVar, "this$0");
            l.f(pVar, "$model");
            l.e(view, "it");
            aVar.performClick(pVar, view);
        }

        public static final void i(a aVar, p pVar, View view) {
            l.f(aVar, "this$0");
            l.f(pVar, "$model");
            l.e(view, "it");
            aVar.performClick(pVar, view);
        }

        public static final boolean j(a aVar, p pVar, View view) {
            l.f(aVar, "this$0");
            l.f(pVar, "$model");
            l.e(view, "it");
            return aVar.performLongClick(pVar, view);
        }

        public static final boolean k(a aVar, p pVar, View view) {
            l.f(aVar, "this$0");
            l.f(pVar, "$model");
            l.e(view, "it");
            return aVar.performLongClick(pVar, view);
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x011a  */
        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(final p pVar) {
            boolean z10;
            String E;
            l.f(pVar, "model");
            LinearLayout linearLayout = this.f13744f.f8608b;
            l.e(linearLayout, "binding.badge");
            l7.p.f(linearLayout, 0, 1, null);
            LinearLayout linearLayout2 = this.f13744f.f8608b;
            l.e(linearLayout2, "binding.badge");
            linearLayout2.setVisibility(pVar.Q() != null ? 0 : 8);
            this.f13744f.f8611e.setText(pVar.Q());
            SlayerImage slayerImage = this.f13744f.f8612f;
            l.e(slayerImage, "binding.seriesImage");
            l7.p.f(slayerImage, 0, 1, null);
            SlayerImage slayerImage2 = this.f13744f.f8612f;
            l.e(slayerImage2, "binding.seriesImage");
            l7.b.b(slayerImage2, pVar.e());
            this.f13744f.f8614h.setText(pVar.n());
            this.f13744f.f8615i.setText(pVar.Z());
            AppCompatImageView appCompatImageView = this.f13744f.f8617k;
            l.e(appCompatImageView, "binding.star");
            appCompatImageView.setVisibility(pVar.q() != null ? 0 : 8);
            SingleLineTextView singleLineTextView = this.f13744f.f8613g;
            l.e(singleLineTextView, "binding.seriesRating");
            singleLineTextView.setVisibility(pVar.q() != null ? 0 : 8);
            this.f13744f.f8613g.setText(pVar.j0());
            if (pVar.g0()) {
                AppCompatImageView appCompatImageView2 = this.f13744f.f8617k;
                l.e(appCompatImageView2, "binding.star");
                appCompatImageView2.setVisibility(8);
                SingleLineTextView singleLineTextView2 = this.f13744f.f8613g;
                l.e(singleLineTextView2, "binding.seriesRating");
                singleLineTextView2.setVisibility(8);
            }
            j4.p pVar2 = this.f13744f;
            TextView textView = pVar2.f8616j;
            String E2 = pVar.E();
            if (E2 == null) {
                E2 = pVar.t();
            }
            textView.setText(E2);
            TextView textView2 = pVar2.f8616j;
            l.e(textView2, "seriesYear");
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
                        pVar2.f8616j.setOnClickListener(new View.OnClickListener() { // from class: s5.a
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                f.a.g(f.a.this, pVar, view);
                            }
                        });
                        pVar2.f8616j.setShadowLayer(30.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, -65536);
                        pVar2.f8616j.setGravity(8388611);
                    }
                    pVar2.f8610d.setOnClickListener(new View.OnClickListener() { // from class: s5.c
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            f.a.h(f.a.this, pVar, view);
                        }
                    });
                    pVar2.f8612f.setOnClickListener(new View.OnClickListener() { // from class: s5.b
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            f.a.i(f.a.this, pVar, view);
                        }
                    });
                    pVar2.f8610d.setOnLongClickListener(new View.OnLongClickListener() { // from class: s5.d
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean j10;
                            j10 = f.a.j(f.a.this, pVar, view);
                            return j10;
                        }
                    });
                    pVar2.f8612f.setOnLongClickListener(new View.OnLongClickListener() { // from class: s5.e
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean k10;
                            k10 = f.a.k(f.a.this, pVar, view);
                            return k10;
                        }
                    });
                }
            }
            z10 = false;
            textView2.setVisibility(z10 ? 8 : 0);
            E = pVar.E();
            if (!(E != null || E.length() == 0)) {
            }
            pVar2.f8610d.setOnClickListener(new View.OnClickListener() { // from class: s5.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    f.a.h(f.a.this, pVar, view);
                }
            });
            pVar2.f8612f.setOnClickListener(new View.OnClickListener() { // from class: s5.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    f.a.i(f.a.this, pVar, view);
                }
            });
            pVar2.f8610d.setOnLongClickListener(new View.OnLongClickListener() { // from class: s5.d
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean j10;
                    j10 = f.a.j(f.a.this, pVar, view);
                    return j10;
                }
            });
            pVar2.f8612f.setOnLongClickListener(new View.OnLongClickListener() { // from class: s5.e
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean k10;
                    k10 = f.a.k(f.a.this, pVar, view);
                    return k10;
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
            this.f13744f.f8612f.onViewRecycled();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<p> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        Context context = viewGroup.getContext();
        l.e(context, "parent.context");
        j4.p c10 = j4.p.c(SupportExtentionKt.getLayoutInflater(context), viewGroup, false);
        l.e(c10, "inflate(inflater, parent, false)");
        return new a(c10);
    }
}
