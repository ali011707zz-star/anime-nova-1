package d5;

import android.R;
import android.content.Context;
import android.os.Build;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import j4.b3;
import java.util.List;
import p4.q;
import qc.u;
import wb.t;

/* compiled from: VoiceActorHolder.kt */
/* loaded from: classes.dex */
public final class l extends RecyclerView.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final b3 f5661a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(b3 b3Var) {
        super(b3Var.b());
        jc.l.f(b3Var, "binding");
        this.f5661a = b3Var;
    }

    public final void a(q qVar) {
        List d02;
        jc.l.f(qVar, "actor");
        Context context = this.f5661a.b().getContext();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f5661a.f8163b.setClipToOutline(true);
        }
        this.f5661a.f8165d.setText(qVar.d());
        TextView textView = this.f5661a.f8164c;
        String c10 = qVar.c();
        String str = null;
        if (c10 != null && (d02 = u.d0(c10, new String[]{","}, false, 0, 6, null)) != null) {
            str = t.G(d02, ", ", null, null, 0, null, null, 62, null);
        }
        textView.setText(str);
        d4.a.a(context).m(this.f5661a.f8163b);
        d4.a.a(context).s(qVar.b()).D0(a8.c.j(350)).g(r7.j.f12975d).G0().T(R.color.transparent).u0(this.f5661a.f8163b);
    }
}
