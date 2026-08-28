package w5;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import ic.l;
import j4.r2;
import java.util.Arrays;
import java.util.Locale;
import p4.h;
import p4.i;
import r7.j;
import vb.p;

/* compiled from: TopContributorsHolder.kt */
/* loaded from: classes.dex */
public final class f extends RecyclerView.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final r2 f15254a;

    /* renamed from: b, reason: collision with root package name */
    public h f15255b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(View view, final l<? super h, p> lVar) {
        super(view);
        jc.l.f(view, "view");
        jc.l.f(lVar, "onClick");
        r2 a10 = r2.a(view);
        jc.l.e(a10, "bind(view)");
        this.f15254a = a10;
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: w5.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.b(l.this, this, view2);
            }
        });
    }

    public static final void b(l lVar, f fVar, View view) {
        jc.l.f(lVar, "$onClick");
        jc.l.f(fVar, "this$0");
        h hVar = fVar.f15255b;
        if (hVar == null) {
            jc.l.v("contributor");
            hVar = null;
        }
        lVar.invoke(hVar);
    }

    public final void c(h hVar) {
        jc.l.f(hVar, "contributor");
        this.f15255b = hVar;
        String str = hVar.e() < 10 ? "0" : "";
        this.f15254a.f8692d.setText('#' + str + hVar.e());
        this.f15254a.f8695g.setText(hVar.g());
        this.f15254a.f8691c.setText(this.itemView.getContext().getString(R.string.top_contributors_points, Long.valueOf(hVar.d())));
        TextView textView = this.f15254a.f8693e;
        String format = String.format(Locale.US, "%,d", Arrays.copyOf(new Object[]{Integer.valueOf(i.a(hVar))}, 1));
        jc.l.e(format, "format(locale, this, *args)");
        textView.setText(format);
        if (hVar.i().length() == 0) {
            return;
        }
        d4.a.a(this.itemView.getContext()).m(this.f15254a.f8694f);
        d4.a.a(this.itemView.getContext()).s(hVar.i()).g(j.f12975d).T(android.R.color.transparent).G0().H0().u0(this.f15254a.f8694f);
    }
}
