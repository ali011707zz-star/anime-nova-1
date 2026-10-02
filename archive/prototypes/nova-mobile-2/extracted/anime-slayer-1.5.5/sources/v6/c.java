package v6;

import android.R;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import io.wax911.support.custom.widget.SingleLineTextView;
import j4.p;
import jc.l;
import r7.j;

/* compiled from: ScheduleAnimeHolder.kt */
/* loaded from: classes.dex */
public final class c extends RecyclerView.e0 {

    /* renamed from: b, reason: collision with root package name */
    public static final a f14845b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final p f14846a;

    /* compiled from: ScheduleAnimeHolder.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final c a(ViewGroup viewGroup) {
            l.f(viewGroup, "parent");
            p c10 = p.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            l.e(c10, "inflate(inflater, parent, false)");
            return new c(c10, null);
        }
    }

    public c(p pVar) {
        super(pVar.b());
        this.f14846a = pVar;
    }

    public /* synthetic */ c(p pVar, jc.g gVar) {
        this(pVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0090, code lost:
    
        if ((r1 == null || r1.length() == 0) != false) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(p4.p pVar) {
        l.f(pVar, "anime");
        p pVar2 = this.f14846a;
        pVar2.f8614h.setText(pVar.n());
        pVar2.f8615i.setText(pVar.Z());
        AppCompatImageView appCompatImageView = pVar2.f8617k;
        l.e(appCompatImageView, "star");
        boolean z10 = true;
        appCompatImageView.setVisibility(pVar.q() != null ? 0 : 8);
        SingleLineTextView singleLineTextView = pVar2.f8613g;
        l.e(singleLineTextView, "seriesRating");
        singleLineTextView.setVisibility(pVar.q() != null ? 0 : 8);
        pVar2.f8613g.setText(pVar.j0());
        TextView textView = pVar2.f8616j;
        String E = pVar.E();
        if (E == null) {
            E = pVar.t();
        }
        textView.setText(E);
        TextView textView2 = pVar2.f8616j;
        l.e(textView2, "seriesYear");
        String E2 = pVar.E();
        if (E2 == null || E2.length() == 0) {
            String t10 = pVar.t();
        }
        z10 = false;
        textView2.setVisibility(z10 ? 8 : 0);
        b(pVar);
    }

    public final void b(p4.p pVar) {
        d4.a.a(this.itemView.getContext()).m(this.f14846a.f8612f);
        d4.a.a(this.itemView.getContext()).s(pVar.e()).g(j.f12974c).G0().T(R.color.transparent).u0(this.f14846a.f8612f);
    }
}
