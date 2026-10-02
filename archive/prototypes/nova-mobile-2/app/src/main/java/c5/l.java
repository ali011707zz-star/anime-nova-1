package c5;

import android.R;
import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportViewHolder;
import j4.n2;
import j4.o2;
import java.util.List;
import p4.q;
import qc.u;
import wb.t;

/* compiled from: StaffAdapter.kt */
/* loaded from: classes.dex */
public final class l extends n5.d<q> {

    /* renamed from: m, reason: collision with root package name */
    public final boolean f3708m;

    /* compiled from: StaffAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends SupportViewHolder<q> {

        /* renamed from: f, reason: collision with root package name */
        public final n2 f3709f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(n2 n2Var) {
            super(r0);
            jc.l.f(n2Var, "binding");
            FrameLayout b10 = n2Var.b();
            jc.l.e(b10, "binding.root");
            this.f3709f = n2Var;
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(q qVar) {
            List d02;
            jc.l.f(qVar, "model");
            Context context = this.f3709f.b().getContext();
            if (Build.VERSION.SDK_INT >= 21) {
                this.f3709f.f8577c.setClipToOutline(true);
            }
            this.f3709f.f8580f.setText(qVar.d());
            TextView textView = this.f3709f.f8579e;
            String e10 = qVar.e();
            String str = null;
            if (e10 != null && (d02 = u.d0(e10, new String[]{","}, false, 0, 6, null)) != null) {
                str = t.G(d02, ", ", null, null, 0, null, null, 62, null);
            }
            textView.setText(str);
            d4.a.a(context).m(this.f3709f.f8576b);
            d4.a.a(context).s(qVar.b()).g(r7.j.f12975d).G0().T(R.color.transparent).u0(this.f3709f.f8576b);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
        }
    }

    /* compiled from: StaffAdapter.kt */
    /* loaded from: classes.dex */
    public static final class b extends SupportViewHolder<q> {

        /* renamed from: f, reason: collision with root package name */
        public final o2 f3710f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public b(o2 o2Var) {
            super(r0);
            jc.l.f(o2Var, "binding");
            FrameLayout b10 = o2Var.b();
            jc.l.e(b10, "binding.root");
            this.f3710f = o2Var;
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(q qVar) {
            List d02;
            jc.l.f(qVar, "model");
            Context context = this.f3710f.b().getContext();
            if (Build.VERSION.SDK_INT >= 21) {
                this.f3710f.f8603c.setClipToOutline(true);
            }
            this.f3710f.f8606f.setText(qVar.d());
            TextView textView = this.f3710f.f8605e;
            String e10 = qVar.e();
            String str = null;
            if (e10 != null && (d02 = u.d0(e10, new String[]{","}, false, 0, 6, null)) != null) {
                str = t.G(d02, ", ", null, null, 0, null, null, 62, null);
            }
            textView.setText(str);
            d4.a.a(context).m(this.f3710f.f8602b);
            d4.a.a(context).s(qVar.b()).g(r7.j.f12975d).G0().T(R.color.transparent).u0(this.f3710f.f8602b);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
        }
    }

    public l() {
        this(false, 1, null);
    }

    public l(boolean z10) {
        this.f3708m = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<q> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        Context context = viewGroup.getContext();
        jc.l.e(context, "parent.context");
        LayoutInflater layoutInflater = SupportExtentionKt.getLayoutInflater(context);
        if (this.f3708m) {
            n2 c10 = n2.c(layoutInflater, viewGroup, false);
            jc.l.e(c10, "inflate(inflater, parent, false)");
            return new a(c10);
        }
        o2 c11 = o2.c(layoutInflater, viewGroup, false);
        jc.l.e(c11, "inflate(inflater, parent, false)");
        return new b(c11);
    }

    public /* synthetic */ l(boolean z10, int i10, jc.g gVar) {
        this((i10 & 1) != 0 ? false : z10);
    }
}
