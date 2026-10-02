package u5;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.anslayer.R;
import com.anslayer.ui.comment.CommentActivity;
import com.anslayer.widget.SlayerAvatar;
import com.anslayer.widget.SlayerCommentAction;
import com.google.android.gms.common.api.Api;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportViewHolder;
import org.apache.http.cookie.ClientCookie;
import qc.t;
import u5.g;

/* compiled from: CommentAdapter.kt */
/* loaded from: classes.dex */
public final class g extends n5.d<m4.b> {

    /* renamed from: v, reason: collision with root package name */
    public static final c f14346v = new c(null);

    /* renamed from: m, reason: collision with root package name */
    public final m f14347m;

    /* renamed from: n, reason: collision with root package name */
    public final String f14348n;

    /* renamed from: o, reason: collision with root package name */
    public final Long f14349o;

    /* renamed from: p, reason: collision with root package name */
    public final int f14350p;

    /* renamed from: q, reason: collision with root package name */
    public final int f14351q;

    /* renamed from: r, reason: collision with root package name */
    public final vb.e f14352r;

    /* renamed from: s, reason: collision with root package name */
    public final vb.e f14353s;

    /* renamed from: t, reason: collision with root package name */
    public final d f14354t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f14355u;

    /* compiled from: CommentAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends SupportViewHolder<m4.b> {

        /* renamed from: f, reason: collision with root package name */
        public final j4.h f14356f;

        /* renamed from: g, reason: collision with root package name */
        public final String f14357g;

        /* renamed from: h, reason: collision with root package name */
        public final Long f14358h;

        /* renamed from: i, reason: collision with root package name */
        public final g f14359i;

        /* renamed from: j, reason: collision with root package name */
        public final vb.e f14360j;

        /* compiled from: CommentAdapter.kt */
        /* renamed from: u5.g$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0361a extends jc.m implements ic.a<r5.a> {
            public C0361a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final r5.a invoke() {
                return r5.a.f12858f.newInstance(a.this.getContext());
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(j4.h hVar, String str, Long l10, g gVar) {
            super(r0);
            jc.l.f(hVar, "binding");
            jc.l.f(gVar, "adapter");
            FrameLayout b10 = hVar.b();
            jc.l.e(b10, "binding.root");
            this.f14356f = hVar;
            this.f14357g = str;
            this.f14358h = l10;
            this.f14359i = gVar;
            this.f14360j = vb.f.a(new C0361a());
        }

        public static final void h(m4.b bVar, a aVar, View view) {
            jc.l.f(bVar, "$parentComment");
            jc.l.f(aVar, "this$0");
            if (d7.g.d(bVar)) {
                aVar.f14356f.f8394d.setText(jc.l.a(bVar.g(), aVar.f14356f.f8394d.getText()) ? aVar.getContext().getString(R.string.text_contains_spoilers) : bVar.g());
            }
        }

        public static final void i(a aVar, m4.b bVar, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(bVar, "$parentComment");
            jc.l.e(view, "it");
            aVar.performClick(bVar, view);
        }

        public static final void j(m4.b bVar, a aVar, View view) {
            jc.l.f(bVar, "$model");
            jc.l.f(aVar, "this$0");
            if (d7.g.d(bVar)) {
                aVar.f14356f.f8401k.setText(jc.l.a(bVar.g(), aVar.f14356f.f8401k.getText()) ? aVar.getContext().getString(R.string.text_contains_spoilers) : bVar.g());
            }
        }

        public static final void k(a aVar, m4.b bVar, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(bVar, "$model");
            jc.l.e(view, "it");
            aVar.performClick(bVar, view);
        }

        public static final void l(a aVar, m4.b bVar, m4.b bVar2, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(bVar, "$model");
            jc.l.f(bVar2, "$parentComment");
            e7.d dVar = new e7.d();
            dVar.d().put("_limit", 30);
            dVar.d().put("_offset", Integer.valueOf(aVar.f().getCurrentOffset()));
            f4.d e10 = aVar.f().e();
            boolean z10 = true;
            dVar.d().put("_order_by", e10 == null ? null : e10.u(true));
            Context context = aVar.getContext();
            Bundle bundle = new Bundle();
            String j10 = bVar.j();
            if (j10 != null && !t.s(j10)) {
                z10 = false;
            }
            long e11 = bVar2.e();
            dVar.d().put(z10 ? "anime_comment_id" : "episode_comment_id", Long.valueOf(e11));
            bundle.putString("arg_json", dVar.b());
            bundle.putString("arg_request_type", z10 ? "GET_SERIES_COMMENT_REPLIES" : "GET_EPISODE_COMMENT_REPLIES");
            Intent intent = new Intent(context, (Class<?>) CommentActivity.class);
            intent.setFlags(268435456);
            intent.putExtras(bundle);
            if (context == null) {
                return;
            }
            context.startActivity(intent);
        }

        public final r5.a f() {
            return (r5.a) this.f14360j.getValue();
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final m4.b bVar) {
            Long l10;
            jc.l.f(bVar, "model");
            final m4.b m10 = bVar.m();
            jc.l.c(m10);
            if (m10.a() < 1 && (l10 = this.f14358h) != null) {
                m10.B(l10.longValue());
            }
            SlayerCommentAction slayerCommentAction = this.f14356f.f8395e;
            jc.l.e(slayerCommentAction, "binding.commentWidget");
            l7.e.a(slayerCommentAction, m10, this.f14359i);
            SlayerAvatar slayerAvatar = this.f14356f.f8392b;
            jc.l.e(slayerAvatar, "binding.commentAvatar");
            l7.b.a(slayerAvatar, m10.v());
            this.f14356f.f8397g.setText(m10.q());
            this.f14356f.f8393c.setText(m10.w());
            if (d7.g.d(m10)) {
                this.f14356f.f8394d.setText(this.itemView.getContext().getString(R.string.text_contains_spoilers));
                AppCompatTextView appCompatTextView = this.f14356f.f8394d;
                Context context = this.itemView.getContext();
                jc.l.e(context, "itemView.context");
                appCompatTextView.setTextColor(SupportExtentionKt.getColorFromAttr(context, R.attr.colorError));
            } else {
                this.f14356f.f8394d.setText(m10.g());
                AppCompatTextView appCompatTextView2 = this.f14356f.f8394d;
                Context context2 = this.itemView.getContext();
                jc.l.e(context2, "itemView.context");
                appCompatTextView2.setTextColor(SupportExtentionKt.getColorFromAttr(context2, android.R.attr.textColorSecondary));
            }
            this.f14356f.f8394d.setOnClickListener(new View.OnClickListener() { // from class: u5.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.a.h(m4.b.this, this, view);
                }
            });
            this.f14356f.f8392b.setOnClickListener(new View.OnClickListener() { // from class: u5.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.a.i(g.a.this, m10, view);
                }
            });
            this.f14356f.f8395e.setClickListener(getClickListener());
            this.f14356f.f8395e.setParentRequestType(this.f14357g);
            this.f14356f.f8404n.setText(bVar.q());
            this.f14356f.f8402l.setText(bVar.w());
            SlayerAvatar slayerAvatar2 = this.f14356f.f8400j;
            jc.l.e(slayerAvatar2, "binding.highlightAvatr");
            l7.b.a(slayerAvatar2, bVar.v());
            SlayerCommentAction slayerCommentAction2 = this.f14356f.f8399i;
            jc.l.e(slayerCommentAction2, "binding.highlightActions");
            l7.e.a(slayerCommentAction2, bVar, this.f14359i);
            if (d7.g.d(bVar)) {
                this.f14356f.f8401k.setText(this.itemView.getContext().getString(R.string.text_contains_spoilers));
                TextView textView = this.f14356f.f8401k;
                Context context3 = this.itemView.getContext();
                jc.l.e(context3, "itemView.context");
                textView.setTextColor(SupportExtentionKt.getColorFromAttr(context3, R.attr.colorError));
            } else {
                this.f14356f.f8401k.setText(bVar.g());
                TextView textView2 = this.f14356f.f8401k;
                Context context4 = this.itemView.getContext();
                jc.l.e(context4, "itemView.context");
                textView2.setTextColor(SupportExtentionKt.getColorFromAttr(context4, android.R.attr.textColorSecondary));
            }
            this.f14356f.f8401k.setOnClickListener(new View.OnClickListener() { // from class: u5.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.a.j(m4.b.this, this, view);
                }
            });
            this.f14356f.f8400j.setOnClickListener(new View.OnClickListener() { // from class: u5.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.a.k(g.a.this, bVar, view);
                }
            });
            this.f14356f.f8399i.setClickListener(null);
            this.f14356f.f8399i.setParentRequestType(this.f14357g);
            this.f14356f.f8405o.setOnClickListener(new View.OnClickListener() { // from class: u5.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.a.l(g.a.this, bVar, m10, view);
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
            j4.h hVar = this.f14356f;
            hVar.f8392b.onViewRecycled();
            hVar.f8400j.onViewRecycled();
        }
    }

    /* compiled from: CommentAdapter.kt */
    /* loaded from: classes.dex */
    public static final class b extends SupportViewHolder<m4.b> {

        /* renamed from: f, reason: collision with root package name */
        public final j4.g f14362f;

        /* renamed from: g, reason: collision with root package name */
        public final String f14363g;

        /* renamed from: h, reason: collision with root package name */
        public final Long f14364h;

        /* renamed from: i, reason: collision with root package name */
        public final g f14365i;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public b(j4.g gVar, String str, Long l10, g gVar2) {
            super(r0);
            jc.l.f(gVar, "binding");
            jc.l.f(gVar2, "adapter");
            LinearLayout b10 = gVar.b();
            jc.l.e(b10, "binding.root");
            this.f14362f = gVar;
            this.f14363g = str;
            this.f14364h = l10;
            this.f14365i = gVar2;
            gVar.f8369d.setOnClickListener(new View.OnClickListener() { // from class: u5.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.b.d(g.b.this, view);
                }
            });
        }

        public static final void d(b bVar, View view) {
            jc.l.f(bVar, "this$0");
            bVar.f14362f.f8370e.f8490d.setMaxLines(Api.BaseClientBuilder.API_PRIORITY_OTHER);
            TextView textView = bVar.f14362f.f8369d;
            jc.l.e(textView, "binding.commentExpandButton");
            textView.setVisibility(8);
        }

        public static final void f(m4.b bVar, b bVar2, View view) {
            String g10;
            jc.l.f(bVar, "$model");
            jc.l.f(bVar2, "this$0");
            if (d7.g.d(bVar)) {
                TextView textView = bVar2.f14362f.f8370e.f8490d;
                if (jc.l.a(bVar.g(), bVar2.f14362f.f8370e.f8490d.getText())) {
                    g10 = bVar2.getContext().getString(R.string.text_contains_spoilers);
                } else {
                    g10 = bVar.g();
                }
                textView.setText(g10);
            }
        }

        public static final void g(b bVar, m4.b bVar2, View view) {
            jc.l.f(bVar, "this$0");
            jc.l.f(bVar2, "$model");
            jc.l.e(view, "it");
            bVar.performClick(bVar2, view);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final m4.b bVar) {
            Long l10;
            jc.l.f(bVar, "model");
            if (bVar.a() < 1 && (l10 = this.f14364h) != null) {
                bVar.B(l10.longValue());
            }
            SlayerCommentAction slayerCommentAction = this.f14362f.f8372g;
            jc.l.e(slayerCommentAction, "binding.commentWidget");
            l7.e.b(slayerCommentAction, bVar, this.f14365i.z(), this.f14365i);
            h(bVar);
            this.f14362f.f8370e.f8491e.setText(bVar.q());
            this.f14362f.f8370e.f8489c.setText(bVar.w());
            this.f14362f.f8370e.f8490d.setOnClickListener(new View.OnClickListener() { // from class: u5.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.b.f(m4.b.this, this, view);
                }
            });
            if (d7.g.d(bVar)) {
                this.f14362f.f8370e.f8490d.setText(getContext().getString(R.string.text_contains_spoilers));
                TextView textView = this.f14362f.f8370e.f8490d;
                Context context = this.itemView.getContext();
                jc.l.e(context, "itemView.context");
                textView.setTextColor(SupportExtentionKt.getColorFromAttr(context, R.attr.colorError));
                TextView textView2 = this.f14362f.f8369d;
                jc.l.e(textView2, "binding.commentExpandButton");
                textView2.setVisibility(8);
            } else {
                this.f14362f.f8370e.f8490d.setText(bVar.g());
                TextView textView3 = this.f14362f.f8370e.f8490d;
                Context context2 = this.itemView.getContext();
                jc.l.e(context2, "itemView.context");
                textView3.setTextColor(SupportExtentionKt.getColorFromAttr(context2, android.R.attr.textColorPrimary));
                if (d7.g.a(bVar) > 5) {
                    TextView textView4 = this.f14362f.f8369d;
                    jc.l.e(textView4, "binding.commentExpandButton");
                    textView4.setVisibility(0);
                    this.f14362f.f8370e.f8490d.setMaxLines(5);
                } else {
                    TextView textView5 = this.f14362f.f8369d;
                    jc.l.e(textView5, "binding.commentExpandButton");
                    textView5.setVisibility(8);
                }
            }
            this.f14362f.f8367b.setOnClickListener(new View.OnClickListener() { // from class: u5.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    g.b.g(g.b.this, bVar, view);
                }
            });
            this.f14362f.f8372g.setClickListener(getClickListener());
            this.f14362f.f8372g.setParentRequestType(this.f14363g);
        }

        public final void h(m4.b bVar) {
            jc.l.f(bVar, ClientCookie.COMMENT_ATTR);
            d4.a.a(this.itemView.getContext()).m(this.f14362f.f8367b);
            if (bVar.v().length() > 0) {
                d4.a.a(this.itemView.getContext()).s(bVar.v()).g(r7.j.f12974c).G0().H0().T(R.drawable.avatar_placeholder).u0(this.f14362f.f8367b);
            }
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
        }
    }

    /* compiled from: CommentAdapter.kt */
    /* loaded from: classes.dex */
    public static final class c {
        public c() {
        }

        public /* synthetic */ c(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CommentAdapter.kt */
    /* loaded from: classes.dex */
    public interface d {
        void v(m4.b bVar, MenuItem menuItem);
    }

    /* compiled from: CommentAdapter.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.a<w4.e> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final w4.e invoke() {
            return g.this.y().N().get();
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f14367f = new f();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public f() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public g(m mVar, String str, Long l10) {
        jc.l.f(mVar, "fragment");
        this.f14347m = mVar;
        this.f14348n = str;
        this.f14349o = l10;
        Context requireContext = mVar.requireContext();
        jc.l.e(requireContext, "fragment.requireContext()");
        this.f14350p = SupportExtentionKt.getCompatColor(requireContext, R.color.yt_material_blue_500);
        Context requireContext2 = mVar.requireContext();
        jc.l.e(requireContext2, "fragment.requireContext()");
        this.f14351q = SupportExtentionKt.getCompatColor(requireContext2, R.color.yt_grey3);
        this.f14352r = vb.f.a(f.f14367f);
        this.f14353s = vb.f.a(new e());
        this.f14354t = mVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<m4.b> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        Context context = viewGroup.getContext();
        jc.l.e(context, "parent.context");
        LayoutInflater layoutInflater = SupportExtentionKt.getLayoutInflater(context);
        if (i10 == 1) {
            j4.h c10 = j4.h.c(layoutInflater, viewGroup, false);
            jc.l.e(c10, "inflate(inflater, parent, false)");
            return new a(c10, this.f14348n, this.f14349o, this);
        }
        j4.g c11 = j4.g.c(layoutInflater, viewGroup, false);
        jc.l.e(c11, "inflate(inflater, parent, false)");
        return new b(c11, this.f14348n, this.f14349o, this);
    }

    public final void B(boolean z10) {
        this.f14355u = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        return h().get(i10).m() == null ? 0 : 1;
    }

    public final int u() {
        return this.f14350p;
    }

    public final w4.e v() {
        return (w4.e) this.f14353s.getValue();
    }

    public final d w() {
        return this.f14354t;
    }

    public final int x() {
        return this.f14351q;
    }

    public final f4.d y() {
        return (f4.d) this.f14352r.getValue();
    }

    public final boolean z() {
        return this.f14355u;
    }
}
