package q5;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import jc.l;
import p4.p;

/* compiled from: BrowseHolder.kt */
/* loaded from: classes.dex */
public abstract class a extends RecyclerView.e0 {

    /* renamed from: a, reason: collision with root package name */
    public d7.a f12464a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(View view) {
        super(view);
        l.f(view, "view");
    }

    public abstract void a(p pVar);

    public final boolean b(p pVar) {
        l.f(pVar, "clicked");
        d7.a aVar = this.f12464a;
        if (aVar == null) {
            return true;
        }
        return aVar.e(this, pVar);
    }

    public final boolean c(p pVar) {
        l.f(pVar, "clicked");
        d7.a aVar = this.f12464a;
        if (aVar == null) {
            return true;
        }
        return aVar.d(this, pVar);
    }

    public final d7.a d(p pVar) {
        l.f(pVar, "model");
        d7.a aVar = this.f12464a;
        if (aVar == null) {
            return null;
        }
        aVar.h(this, aVar.c().contains(pVar));
        return aVar;
    }

    public final void e(d7.a aVar) {
        this.f12464a = aVar;
    }
}
