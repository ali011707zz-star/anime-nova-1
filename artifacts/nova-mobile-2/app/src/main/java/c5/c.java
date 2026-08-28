package c5;

import android.R;
import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import c5.c;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportViewHolder;
import io.wax911.support.util.SupportActionUtil;
import j4.g0;
import j4.h0;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: CharacterAdapter.kt */
/* loaded from: classes.dex */
public final class c extends n5.d<p4.e> {

    /* renamed from: m, reason: collision with root package name */
    public final boolean f3673m;

    /* compiled from: CharacterAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends SupportViewHolder<p4.e> {

        /* renamed from: f, reason: collision with root package name */
        public final g0 f3674f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(g0 g0Var) {
            super(r0);
            jc.l.f(g0Var, "binding");
            FrameLayout b10 = g0Var.b();
            jc.l.e(b10, "binding.root");
            this.f3674f = g0Var;
        }

        public static final void d(a aVar, p4.e eVar, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(eVar, "$model");
            jc.l.e(view, "it");
            aVar.performClick(eVar, view);
        }

        public static final boolean e(a aVar, p4.e eVar, View view) {
            jc.l.f(aVar, "this$0");
            jc.l.f(eVar, "$model");
            jc.l.e(view, "it");
            return aVar.performLongClick(eVar, view);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final p4.e eVar) {
            jc.l.f(eVar, "model");
            Context context = this.f3674f.b().getContext();
            if (Build.VERSION.SDK_INT >= 21) {
                this.f3674f.f8377c.setClipToOutline(true);
            }
            this.f3674f.f8382h.setText(eVar.d());
            View view = this.f3674f.f8379e;
            jc.l.e(view, "binding.gradient2");
            view.setVisibility(eVar.f() ? 0 : 8);
            LinearLayout linearLayout = this.f3674f.f8380f;
            jc.l.e(linearLayout, "binding.heartContent");
            linearLayout.setVisibility(eVar.f() ? 0 : 8);
            TextView textView = this.f3674f.f8381g;
            String format = String.format(Locale.US, "%,d", Arrays.copyOf(new Object[]{Integer.valueOf(eVar.g())}, 1));
            jc.l.e(format, "format(locale, this, *args)");
            textView.setText(format);
            d4.a.a(context).m(this.f3674f.f8376b);
            d4.a.a(context).s(eVar.c()).g(r7.j.f12975d).H0().G0().T(R.color.transparent).u0(this.f3674f.f8376b);
            this.f3674f.b().setOnClickListener(new View.OnClickListener() { // from class: c5.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    c.a.d(c.a.this, eVar, view2);
                }
            });
            this.f3674f.b().setOnLongClickListener(new View.OnLongClickListener() { // from class: c5.b
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    boolean e10;
                    e10 = c.a.e(c.a.this, eVar, view2);
                    return e10;
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
        }
    }

    /* compiled from: CharacterAdapter.kt */
    /* loaded from: classes.dex */
    public static final class b extends SupportViewHolder<p4.e> {

        /* renamed from: f, reason: collision with root package name */
        public final h0 f3675f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public b(h0 h0Var) {
            super(r0);
            jc.l.f(h0Var, "binding");
            FrameLayout b10 = h0Var.b();
            jc.l.e(b10, "binding.root");
            this.f3675f = h0Var;
        }

        public static final void c(b bVar, p4.e eVar, View view) {
            jc.l.f(bVar, "this$0");
            jc.l.f(eVar, "$model");
            jc.l.e(view, "it");
            bVar.performClick(eVar, view);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final p4.e eVar) {
            jc.l.f(eVar, "model");
            Context context = this.f3675f.b().getContext();
            if (Build.VERSION.SDK_INT >= 21) {
                this.f3675f.f8408c.setClipToOutline(true);
            }
            this.f3675f.f8410e.setText(eVar.d());
            d4.a.a(context).m(this.f3675f.f8407b);
            d4.a.a(context).s(eVar.c()).g(r7.j.f12975d).H0().G0().T(R.color.transparent).u0(this.f3675f.f8407b);
            this.f3675f.b().setOnClickListener(new View.OnClickListener() { // from class: c5.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.b.c(c.b.this, eVar, view);
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
        }
    }

    public c() {
        this(false, 1, null);
    }

    public c(boolean z10) {
        this.f3673m = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<p4.e> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        Context context = viewGroup.getContext();
        jc.l.e(context, "parent.context");
        LayoutInflater layoutInflater = SupportExtentionKt.getLayoutInflater(context);
        if (this.f3673m) {
            g0 c10 = g0.c(layoutInflater, viewGroup, false);
            jc.l.e(c10, "inflate(inflater, parent, false)");
            return new a(c10);
        }
        h0 c11 = h0.c(layoutInflater, viewGroup, false);
        jc.l.e(c11, "inflate(inflater, parent, false)");
        return new b(c11);
    }

    public final void v() {
        SupportActionUtil<p4.e> i10;
        if (!j() || (i10 = i()) == null) {
            return;
        }
        i10.selectAllItems(h());
    }

    public /* synthetic */ c(boolean z10, int i10, jc.g gVar) {
        this((i10 & 1) != 0 ? false : z10);
    }
}
