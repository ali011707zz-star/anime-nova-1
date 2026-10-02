package y6;

import android.content.Context;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.j;
import com.anslayer.R;
import com.google.android.material.button.MaterialButton;
import io.wax911.support.SupportExtentionKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import y6.j;

/* compiled from: ServerAdapter.kt */
/* loaded from: classes.dex */
public final class j extends androidx.recyclerview.widget.o<w, c> {

    /* renamed from: c, reason: collision with root package name */
    public b f16475c;

    /* renamed from: d, reason: collision with root package name */
    public List<v4.b> f16476d;

    /* renamed from: e, reason: collision with root package name */
    public String f16477e;

    /* renamed from: f, reason: collision with root package name */
    public String f16478f;

    /* renamed from: g, reason: collision with root package name */
    public final int f16479g;

    /* renamed from: h, reason: collision with root package name */
    public final int f16480h;

    /* compiled from: ServerAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<w> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(w wVar, w wVar2) {
            jc.l.f(wVar, "oldItem");
            jc.l.f(wVar2, "newItem");
            return jc.l.a(wVar, wVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(w wVar, w wVar2) {
            jc.l.f(wVar, "oldItem");
            jc.l.f(wVar2, "newItem");
            return jc.l.a(wVar.b(), wVar2.b());
        }
    }

    /* compiled from: ServerAdapter.kt */
    /* loaded from: classes.dex */
    public interface b {
        void c(v4.b bVar, String str, String str2, int i10, w wVar);
    }

    /* compiled from: ServerAdapter.kt */
    /* loaded from: classes.dex */
    public static final class c extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public final j4.q f16481a;

        /* renamed from: b, reason: collision with root package name */
        public final j f16482b;

        /* compiled from: ServerAdapter.kt */
        /* loaded from: classes.dex */
        public /* synthetic */ class a {

            /* renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f16483a;

            static {
                int[] iArr = new int[y.values().length];
                iArr[y.NORMAL_DEFAULT.ordinal()] = 1;
                iArr[y.WORKING.ordinal()] = 2;
                iArr[y.NOT_WORKING.ordinal()] = 3;
                f16483a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(j4.q qVar, j jVar) {
            super(qVar.b());
            jc.l.f(qVar, "binding");
            jc.l.f(jVar, "adapter");
            this.f16481a = qVar;
            this.f16482b = jVar;
            qVar.f8641b.setOnClickListener(new View.OnClickListener() { // from class: y6.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    j.c.c(j.c.this, view);
                }
            });
            this.itemView.setOnKeyListener(new View.OnKeyListener() { // from class: y6.l
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
                    boolean d10;
                    d10 = j.c.d(j.c.this, view, i10, keyEvent);
                    return d10;
                }
            });
        }

        public static final void c(c cVar, View view) {
            Object obj;
            jc.l.f(cVar, "this$0");
            w i10 = j.i(cVar.f16482b, cVar.getBindingAdapterPosition());
            if (i10 == null) {
                return;
            }
            Iterator<T> it2 = cVar.f16482b.m().iterator();
            while (true) {
                obj = null;
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (qc.u.C(i10.b(), ((v4.b) next).f(), false, 2, null)) {
                    obj = next;
                    break;
                }
            }
            cVar.f16482b.l().c((v4.b) obj, cVar.f16482b.k(), cVar.f16482b.n(), cVar.getBindingAdapterPosition(), i10);
        }

        public static final boolean d(c cVar, View view, int i10, KeyEvent keyEvent) {
            w i11;
            Object obj;
            jc.l.f(cVar, "this$0");
            if (keyEvent.getAction() != 0 || i10 != 66 || (i11 = j.i(cVar.f16482b, cVar.getBindingAdapterPosition())) == null || !i11.e()) {
                return false;
            }
            Iterator<T> it2 = cVar.f16482b.m().iterator();
            while (true) {
                obj = null;
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (qc.u.C(i11.b(), ((v4.b) next).f(), false, 2, null)) {
                    obj = next;
                    break;
                }
            }
            cVar.f16482b.l().c((v4.b) obj, cVar.f16482b.k(), cVar.f16482b.n(), cVar.getBindingAdapterPosition(), i11);
            return false;
        }

        public final void e(w wVar) {
            jc.l.f(wVar, "server");
            f(wVar.e());
            this.f16481a.f8643d.setText(g(wVar.b(), this.f16482b.m()));
            if (wVar.c()) {
                this.f16481a.f8643d.setText("سيرفر احتياطي");
                this.f16481a.f8643d.setTextColor(this.f16482b.o());
                this.f16481a.f8644e.setImageResource(R.drawable.ic_radio_button_checked_green_600_24dp);
            } else {
                this.f16481a.f8643d.setText(g(wVar.b(), this.f16482b.m()));
                this.f16481a.f8643d.setTextColor(this.f16482b.j());
                h(wVar);
            }
        }

        public final void f(boolean z10) {
            MaterialButton materialButton = this.f16481a.f8641b;
            materialButton.setEnabled(z10);
            materialButton.setAlpha(z10 ? 1.0f : 0.5f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final String g(String str, List<v4.b> list) {
            v4.b bVar = null;
            if (list != null) {
                Iterator<T> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (qc.u.C(str, ((v4.b) next).f(), false, 2, null)) {
                        bVar = next;
                        break;
                    }
                }
                bVar = bVar;
            }
            if (bVar == null) {
                return "سيرفر";
            }
            if (bVar.d() == 1) {
                return "سيرفر : " + bVar.h() + " (للمشاهدة) ";
            }
            return jc.l.m("سيرفر : ", bVar.h());
        }

        public final void h(w wVar) {
            int i10;
            jc.l.f(wVar, "server");
            int i11 = a.f16483a[wVar.a().ordinal()];
            if (i11 == 1) {
                i10 = R.drawable.ic_info_outline_orange_600_24dp;
            } else if (i11 == 2) {
                i10 = R.drawable.ic_radio_button_checked_green_600_24dp;
            } else {
                if (i11 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                i10 = R.drawable.ic_radio_button_checked_red_600_24dp;
            }
            this.f16481a.f8644e.setImageResource(i10);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Context context, b bVar, List<v4.b> list, String str, String str2) {
        super(new a());
        jc.l.f(context, "context");
        jc.l.f(bVar, "serverinterface");
        jc.l.f(list, "serversModels");
        jc.l.f(str, "title");
        jc.l.f(str2, "ol6");
        this.f16475c = bVar;
        this.f16476d = list;
        this.f16477e = str;
        this.f16478f = str2;
        setHasStableIds(true);
        this.f16479g = SupportExtentionKt.getColorFromAttr(context, android.R.attr.textColorSecondary);
        this.f16480h = SupportExtentionKt.getCompatColor(context, R.color.colorStateGreen);
    }

    public static final /* synthetic */ w i(j jVar, int i10) {
        return jVar.f(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public long getItemId(int i10) {
        return f(i10).b().hashCode();
    }

    public final int j() {
        return this.f16479g;
    }

    public final String k() {
        return this.f16478f;
    }

    public final b l() {
        return this.f16475c;
    }

    public final List<v4.b> m() {
        return this.f16476d;
    }

    public final String n() {
        return this.f16477e;
    }

    public final int o() {
        return this.f16480h;
    }

    public final boolean p() {
        List<w> e10 = e();
        jc.l.e(e10, "currentList");
        ArrayList arrayList = new ArrayList();
        for (Object obj : e10) {
            if (!((w) obj).f()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (!((w) it2.next()).d()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(c cVar, int i10) {
        jc.l.f(cVar, "holder");
        w f10 = f(i10);
        if (f10 == null) {
            return;
        }
        cVar.e(f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public c onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        j4.q c10 = j4.q.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        jc.l.e(c10, "inflate(inflater, parent, false)");
        return new c(c10, this);
    }

    public final void s(String str) {
        jc.l.f(str, "<set-?>");
        this.f16478f = str;
    }

    public final void t(List<v4.b> list) {
        jc.l.f(list, "<set-?>");
        this.f16476d = list;
    }

    public final void u(String str) {
        jc.l.f(str, "<set-?>");
        this.f16477e = str;
    }
}
