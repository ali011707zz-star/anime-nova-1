package e6;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import com.anslayer.widget.SlayerImage;
import e6.b;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportViewHolder;
import j4.j;
import jc.l;
import l7.p;
import n5.d;
import r4.f;

/* compiled from: MediaItemAdapter.kt */
/* loaded from: classes.dex */
public final class b extends d<f> {

    /* compiled from: MediaItemAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends SupportViewHolder<f> {

        /* renamed from: f, reason: collision with root package name */
        public final j f6191f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(j jVar) {
            super(r0);
            l.f(jVar, "binding");
            CardView b10 = jVar.b();
            l.e(b10, "binding.root");
            this.f6191f = jVar;
        }

        public static final void c(a aVar, f fVar, View view) {
            l.f(aVar, "this$0");
            l.f(fVar, "$model");
            l.e(view, "it");
            aVar.performClick(fVar, view);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final f fVar) {
            l.f(fVar, "model");
            SlayerImage slayerImage = this.f6191f.f8444c;
            l.e(slayerImage, "binding.seriesImage");
            p.f(slayerImage, 0, 1, null);
            SlayerImage slayerImage2 = this.f6191f.f8444c;
            l.e(slayerImage2, "binding.seriesImage");
            l7.b.b(slayerImage2, fVar.a());
            this.f6191f.f8445d.setText(fVar.c());
            this.f6191f.f8443b.setOnClickListener(new View.OnClickListener() { // from class: e6.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b.a.c(b.a.this, fVar, view);
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
            this.f6191f.f8444c.onViewRecycled();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<f> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        Context context = viewGroup.getContext();
        l.e(context, "parent.context");
        j c10 = j.c(SupportExtentionKt.getLayoutInflater(context), viewGroup, false);
        l.e(c10, "inflate(inflater, parent, false)");
        return new a(c10);
    }
}
