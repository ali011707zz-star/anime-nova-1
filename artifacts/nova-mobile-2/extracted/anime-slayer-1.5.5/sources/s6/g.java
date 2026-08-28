package s6;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.anslayer.R;
import com.anslayer.widget.SlayerAvatar;
import com.anslayer.widget.SlayerCard;
import com.anslayer.widget.SlayerImage;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportViewHolder;
import io.wax911.support.custom.widget.SingleLineTextView;
import l7.p;
import s6.g;

/* compiled from: RecommendAdapter.kt */
/* loaded from: classes.dex */
public final class g extends n5.d<u4.a> {

    /* renamed from: m, reason: collision with root package name */
    public final boolean f13756m;

    /* compiled from: RecommendAdapter.kt */
    /* loaded from: classes.dex */
    public final class a extends SupportViewHolder<u4.a> {

        /* renamed from: f, reason: collision with root package name */
        public final j4.l f13757f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ g f13758g;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(g gVar, j4.l lVar) {
            super(r2);
            jc.l.f(gVar, "this$0");
            jc.l.f(lVar, "binding");
            this.f13758g = gVar;
            SlayerCard b10 = lVar.b();
            jc.l.e(b10, "binding.root");
            this.f13757f = lVar;
        }

        public static final void g(a aVar, u4.a aVar2, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(aVar2, "$model");
            jc.l.e(view, "it");
            aVar.performClick(aVar2, view);
        }

        public static final void h(a aVar, u4.a aVar2, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(aVar2, "$model");
            jc.l.e(view, "it");
            aVar.performClick(aVar2, view);
        }

        public static final void i(a aVar, u4.a aVar2, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(aVar2, "$model");
            jc.l.e(view, "it");
            aVar.performClick(aVar2, view);
        }

        public static final void j(a aVar, u4.a aVar2, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(aVar2, "$model");
            jc.l.e(view, "it");
            aVar.performClick(aVar2, view);
        }

        public static final void k(a aVar, u4.a aVar2, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(aVar2, "$model");
            jc.l.e(view, "it");
            aVar.performClick(aVar2, view);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final u4.a aVar) {
            jc.l.f(aVar, "model");
            SlayerImage slayerImage = this.f13757f.f8507h;
            jc.l.e(slayerImage, "binding.seriesImage");
            p.f(slayerImage, 0, 1, null);
            SlayerImage slayerImage2 = this.f13757f.f8507h;
            jc.l.e(slayerImage2, "binding.seriesImage");
            l7.b.b(slayerImage2, aVar.e());
            this.f13757f.f8509j.setText(aVar.g());
            SlayerImage slayerImage3 = this.f13757f.f8508i;
            jc.l.e(slayerImage3, "binding.seriesImageRecommended");
            p.f(slayerImage3, 0, 1, null);
            SlayerImage slayerImage4 = this.f13757f.f8508i;
            jc.l.e(slayerImage4, "binding.seriesImageRecommended");
            l7.b.b(slayerImage4, aVar.n());
            this.f13757f.f8503d.setText(aVar.p());
            this.f13757f.f8505f.setText(aVar.m());
            this.f13757f.f8504e.setText(aVar.q());
            if (this.f13758g.u()) {
                SingleLineTextView singleLineTextView = this.f13757f.f8504e;
                jc.l.e(singleLineTextView, "binding.recommendationAuthor");
                singleLineTextView.setVisibility(8);
                SingleLineTextView singleLineTextView2 = this.f13757f.f8506g;
                jc.l.e(singleLineTextView2, "binding.recommendationReadMore");
                singleLineTextView2.setVisibility(8);
                this.f13757f.f8505f.setSingleLine(false);
                ImageView imageView = this.f13757f.f8502c;
                jc.l.e(imageView, "binding.delete");
                imageView.setVisibility(0);
                ImageView imageView2 = this.f13757f.f8501b;
                jc.l.e(imageView2, "binding.approved");
                imageView2.setVisibility(aVar.u() ? 0 : 8);
                this.f13757f.f8502c.setOnClickListener(new View.OnClickListener() { // from class: s6.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        g.a.g(g.a.this, aVar, view);
                    }
                });
            }
            this.f13757f.f8507h.setOnClickListener(new View.OnClickListener() { // from class: s6.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.a.h(g.a.this, aVar, view);
                }
            });
            this.f13757f.f8504e.setOnClickListener(new View.OnClickListener() { // from class: s6.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.a.i(g.a.this, aVar, view);
                }
            });
            this.f13757f.f8508i.setOnClickListener(new View.OnClickListener() { // from class: s6.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.a.j(g.a.this, aVar, view);
                }
            });
            this.f13757f.f8506g.setOnClickListener(new View.OnClickListener() { // from class: s6.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.a.k(g.a.this, aVar, view);
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
            this.f13757f.f8507h.onViewRecycled();
            this.f13757f.f8508i.onViewRecycled();
        }
    }

    /* compiled from: RecommendAdapter.kt */
    /* loaded from: classes.dex */
    public static final class b extends SupportViewHolder<u4.a> {

        /* renamed from: f, reason: collision with root package name */
        public final j4.m f13759f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public b(j4.m mVar) {
            super(r0);
            jc.l.f(mVar, "binding");
            SlayerCard b10 = mVar.b();
            jc.l.e(b10, "binding.root");
            this.f13759f = mVar;
        }

        public static final void d(b bVar, u4.a aVar, View view) {
            jc.l.f(bVar, "this$0");
            jc.l.f(aVar, "$model");
            jc.l.e(view, "it");
            bVar.performClick(aVar, view);
        }

        public static final void e(b bVar, u4.a aVar, View view) {
            jc.l.f(bVar, "this$0");
            jc.l.f(aVar, "$model");
            jc.l.e(view, "it");
            bVar.performClick(aVar, view);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final u4.a aVar) {
            jc.l.f(aVar, "model");
            SlayerAvatar slayerAvatar = this.f13759f.f8524c;
            jc.l.e(slayerAvatar, "binding.recommendationAuthorAvatar");
            l7.b.a(slayerAvatar, aVar.t());
            this.f13759f.f8523b.setText(aVar.q());
            this.f13759f.f8525d.setText(aVar.m());
            this.f13759f.f8527f.setText(String.valueOf(aVar.j()));
            if (jc.l.a(aVar.r(), "Yes")) {
                this.f13759f.f8526e.setImageResource(R.drawable.ic_heart_grey_600_24dp);
            } else {
                this.f13759f.f8526e.setImageResource(R.drawable.ic_heart_outline_grey_600_24dp);
            }
            this.f13759f.f8526e.setOnClickListener(new View.OnClickListener() { // from class: s6.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.b.d(g.b.this, aVar, view);
                }
            });
            this.f13759f.f8524c.setOnClickListener(new View.OnClickListener() { // from class: s6.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.b.e(g.b.this, aVar, view);
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
            this.f13759f.f8524c.onViewRecycled();
        }
    }

    /* compiled from: RecommendAdapter.kt */
    /* loaded from: classes.dex */
    public static final class c extends SupportViewHolder<u4.a> {

        /* renamed from: f, reason: collision with root package name */
        public final j4.n f13760f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public c(j4.n nVar) {
            super(r0);
            jc.l.f(nVar, "binding");
            SlayerCard b10 = nVar.b();
            jc.l.e(b10, "binding.root");
            this.f13760f = nVar;
        }

        public static final void d(c cVar, u4.a aVar, View view) {
            jc.l.f(cVar, "this$0");
            jc.l.f(aVar, "$model");
            jc.l.e(view, "it");
            cVar.performClick(aVar, view);
        }

        public static final void e(c cVar, u4.a aVar, View view) {
            jc.l.f(cVar, "this$0");
            jc.l.f(aVar, "$model");
            jc.l.e(view, "it");
            cVar.performClick(aVar, view);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final u4.a aVar) {
            jc.l.f(aVar, "model");
            SlayerImage slayerImage = this.f13760f.f8548c;
            jc.l.e(slayerImage, "binding.seriesImage");
            p.f(slayerImage, 0, 1, null);
            SlayerImage slayerImage2 = this.f13760f.f8548c;
            jc.l.e(slayerImage2, "binding.seriesImage");
            l7.b.b(slayerImage2, aVar.e());
            this.f13760f.f8550e.setText(aVar.g());
            SlayerImage slayerImage3 = this.f13760f.f8549d;
            jc.l.e(slayerImage3, "binding.seriesImageRecommended");
            p.f(slayerImage3, 0, 1, null);
            SlayerImage slayerImage4 = this.f13760f.f8549d;
            jc.l.e(slayerImage4, "binding.seriesImageRecommended");
            l7.b.b(slayerImage4, aVar.n());
            this.f13760f.f8547b.setText(aVar.p());
            this.f13760f.f8548c.setOnClickListener(new View.OnClickListener() { // from class: s6.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.c.d(g.c.this, aVar, view);
                }
            });
            this.f13760f.f8549d.setOnClickListener(new View.OnClickListener() { // from class: s6.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.c.e(g.c.this, aVar, view);
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
            this.f13760f.f8548c.onViewRecycled();
            this.f13760f.f8549d.onViewRecycled();
        }
    }

    public g(boolean z10) {
        this.f13756m = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        if (i10 != -1) {
            return h().get(i10).l();
        }
        return 0;
    }

    public final boolean u() {
        return this.f13756m;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<u4.a> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        Context context = viewGroup.getContext();
        jc.l.e(context, "parent.context");
        LayoutInflater layoutInflater = SupportExtentionKt.getLayoutInflater(context);
        if (i10 == 1) {
            j4.n c10 = j4.n.c(layoutInflater, viewGroup, false);
            jc.l.e(c10, "inflate(inflater, parent, false)");
            return new c(c10);
        }
        if (i10 != 2) {
            j4.l c11 = j4.l.c(layoutInflater, viewGroup, false);
            jc.l.e(c11, "inflate(inflater, parent, false)");
            return new a(this, c11);
        }
        j4.m c12 = j4.m.c(layoutInflater, viewGroup, false);
        jc.l.e(c12, "inflate(inflater, parent, false)");
        return new b(c12);
    }
}
