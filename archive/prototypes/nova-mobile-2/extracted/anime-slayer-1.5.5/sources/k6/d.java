package k6;

import android.R;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import j4.g0;
import jc.g;
import jc.l;
import r7.j;

/* compiled from: BrowseCharacterGridHolder.kt */
/* loaded from: classes.dex */
public final class d extends RecyclerView.e0 {

    /* renamed from: d, reason: collision with root package name */
    public static final a f10034d = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final g0 f10035a;

    /* renamed from: b, reason: collision with root package name */
    public final k6.a f10036b;

    /* renamed from: c, reason: collision with root package name */
    public p4.e f10037c;

    /* compiled from: BrowseCharacterGridHolder.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final d a(ViewGroup viewGroup, k6.a aVar) {
            l.f(viewGroup, "parent");
            l.f(aVar, "adapter");
            g0 c10 = g0.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            l.e(c10, "inflate(inflater, parent, false)");
            return new d(c10, aVar, null);
        }
    }

    public d(g0 g0Var, k6.a aVar) {
        super(g0Var.b());
        this.f10035a = g0Var;
        this.f10036b = aVar;
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: k6.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.b(d.this, view);
            }
        });
    }

    public /* synthetic */ d(g0 g0Var, k6.a aVar, g gVar) {
        this(g0Var, aVar);
    }

    public static final void b(d dVar, View view) {
        l.f(dVar, "this$0");
        p4.e eVar = dVar.f10037c;
        if (eVar == null) {
            return;
        }
        dVar.d().m().j(eVar);
    }

    public final void c(p4.e eVar) {
        l.f(eVar, "character");
        this.f10037c = eVar;
        if (Build.VERSION.SDK_INT >= 21) {
            this.f10035a.f8377c.setClipToOutline(true);
        }
        this.f10035a.f8382h.setText(eVar.d());
        View view = this.f10035a.f8379e;
        l.e(view, "binding.gradient2");
        view.setVisibility(eVar.f() ? 0 : 8);
        LinearLayout linearLayout = this.f10035a.f8380f;
        l.e(linearLayout, "binding.heartContent");
        linearLayout.setVisibility(eVar.f() ? 0 : 8);
        this.f10035a.f8381g.setText(String.valueOf(eVar.g()));
        d4.a.a(this.itemView.getContext()).m(this.f10035a.f8376b);
        d4.a.a(this.itemView.getContext()).s(eVar.c()).g(j.f12975d).H0().G0().T(R.color.transparent).u0(this.f10035a.f8376b);
    }

    public final k6.a d() {
        return this.f10036b;
    }
}
