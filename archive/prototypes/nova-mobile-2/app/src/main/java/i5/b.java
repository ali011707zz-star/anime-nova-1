package i5;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;

/* compiled from: AnimeCoverSheet.kt */
/* loaded from: classes.dex */
public final class b extends m7.c {

    /* renamed from: f, reason: collision with root package name */
    public final x f7594f;

    /* renamed from: g, reason: collision with root package name */
    public final String f7595g;

    /* renamed from: h, reason: collision with root package name */
    public j4.t f7596h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public b(x xVar, String str) {
        super(r0);
        jc.l.f(xVar, "fragment");
        jc.l.f(str, "coverUrl");
        Context requireContext = xVar.requireContext();
        jc.l.e(requireContext, "fragment.requireContext()");
        this.f7594f = xVar;
        this.f7595g = str;
    }

    public static final void c(b bVar, View view) {
        jc.l.f(bVar, "this$0");
        bVar.d();
    }

    @Override // m7.c
    public View a(LayoutInflater layoutInflater) {
        jc.l.f(layoutInflater, "inflater");
        j4.t tVar = null;
        j4.t c10 = j4.t.c(this.f7594f.requireActivity().getLayoutInflater(), null, false);
        jc.l.e(c10, "inflate(fragment.require…outInflater, null, false)");
        this.f7596h = c10;
        if (c10 == null) {
            jc.l.v("binding");
            c10 = null;
        }
        c10.f8716b.setOnClickListener(new View.OnClickListener() { // from class: i5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.c(b.this, view);
            }
        });
        j4.t tVar2 = this.f7596h;
        if (tVar2 == null) {
            jc.l.v("binding");
        } else {
            tVar = tVar2;
        }
        LinearLayout b10 = tVar.b();
        jc.l.e(b10, "binding.root");
        return b10;
    }

    public final void d() {
        this.f7594f.z0(this.f7595g);
        dismiss();
    }
}
