package v6;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import j4.t1;
import jc.l;
import p4.o;

/* compiled from: ScheduleSeparatorHolder.kt */
/* loaded from: classes.dex */
public final class f extends RecyclerView.e0 {

    /* renamed from: b, reason: collision with root package name */
    public static final a f14859b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final t1 f14860a;

    /* compiled from: ScheduleSeparatorHolder.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final f a(ViewGroup viewGroup) {
            l.f(viewGroup, "parent");
            t1 c10 = t1.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            l.e(c10, "inflate(inflater, parent, false)");
            return new f(c10, null);
        }
    }

    public f(t1 t1Var) {
        super(t1Var.b());
        this.f14860a = t1Var;
    }

    public /* synthetic */ f(t1 t1Var, jc.g gVar) {
        this(t1Var);
    }

    public final void a(o.b bVar) {
        l.f(bVar, "day");
        this.f14860a.f8722b.setText(bVar.a());
    }
}
