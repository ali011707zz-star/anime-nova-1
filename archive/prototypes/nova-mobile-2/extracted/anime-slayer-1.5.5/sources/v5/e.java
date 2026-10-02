package v5;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.anslayer.widget.SlayerCard;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportViewHolder;
import jc.l;
import v5.e;

/* compiled from: NotificationAdapter.kt */
/* loaded from: classes.dex */
public final class e extends n5.d<w4.b> {

    /* compiled from: NotificationAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends SupportViewHolder<w4.b> {

        /* renamed from: f, reason: collision with root package name */
        public final j4.k f14806f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(j4.k kVar) {
            super(r0);
            l.f(kVar, "binding");
            SlayerCard b10 = kVar.b();
            l.e(b10, "binding.root");
            this.f14806f = kVar;
        }

        public static final void e(a aVar, w4.b bVar, View view) {
            l.f(aVar, "this$0");
            l.f(bVar, "$model");
            l.e(view, "it");
            aVar.performClick(bVar, view);
        }

        public static final void f(a aVar, w4.b bVar, View view) {
            l.f(aVar, "this$0");
            l.f(bVar, "$model");
            l.e(view, "it");
            aVar.performClick(bVar, view);
        }

        public static final void g(a aVar, w4.b bVar, View view) {
            l.f(aVar, "this$0");
            l.f(bVar, "$model");
            l.e(view, "it");
            aVar.performClick(bVar, view);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final w4.b bVar) {
            l.f(bVar, "model");
            this.f14806f.f8482d.setText(bVar.a());
            if (l.a(bVar.m(), "0")) {
                this.f14806f.f8480b.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                View view = this.f14806f.f8480b;
                l.e(view, "binding.backdrop");
                SupportExtentionKt.gone(view);
            } else {
                this.f14806f.f8480b.setAlpha(0.2f);
                View view2 = this.f14806f.f8480b;
                l.e(view2, "binding.backdrop");
                SupportExtentionKt.visible(view2);
            }
            this.f14806f.f8485g.setText(bVar.f());
            this.f14806f.f8486h.setText(bVar.n());
            this.f14806f.f8483e.setText(bVar.l());
            this.f14806f.f8481c.setOnClickListener(new View.OnClickListener() { // from class: v5.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    e.a.e(e.a.this, bVar, view3);
                }
            });
            this.f14806f.f8486h.setOnClickListener(new View.OnClickListener() { // from class: v5.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    e.a.f(e.a.this, bVar, view3);
                }
            });
            this.f14806f.f8484f.setOnClickListener(new View.OnClickListener() { // from class: v5.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    e.a.g(e.a.this, bVar, view3);
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<w4.b> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        Context context = viewGroup.getContext();
        l.e(context, "parent.context");
        j4.k c10 = j4.k.c(SupportExtentionKt.getLayoutInflater(context), viewGroup, false);
        l.e(c10, "inflate(inflater, parent, false)");
        return new a(c10);
    }
}
