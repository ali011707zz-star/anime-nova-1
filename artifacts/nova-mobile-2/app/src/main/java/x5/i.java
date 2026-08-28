package x5;

import android.os.Build;
import android.view.View;
import android.widget.CheckBox;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import ic.p;
import j4.s0;
import jc.l;

/* compiled from: CustomListHolder.kt */
/* loaded from: classes.dex */
public final class i extends RecyclerView.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final View f16019a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f16020b;

    /* renamed from: c, reason: collision with root package name */
    public final s0 f16021c;

    /* renamed from: d, reason: collision with root package name */
    public p4.j f16022d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(View view, final p<? super p4.j, ? super Boolean, vb.p> pVar, boolean z10) {
        super(view);
        l.f(view, "view");
        l.f(pVar, "onClick");
        this.f16019a = view;
        this.f16020b = z10;
        s0 a10 = s0.a(view);
        l.e(a10, "bind(view)");
        this.f16021c = a10;
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: x5.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                i.c(i.this, pVar, view2);
            }
        });
        CheckBox checkBox = a10.f8705d;
        l.e(checkBox, "binding.check");
        checkBox.setVisibility(z10 ? 0 : 8);
        if (z10) {
            a10.f8705d.setOnClickListener(new View.OnClickListener() { // from class: x5.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    i.d(i.this, pVar, view2);
                }
            });
        }
    }

    public static final void c(i iVar, p pVar, View view) {
        l.f(iVar, "this$0");
        l.f(pVar, "$onClick");
        iVar.f16021c.f8705d.setChecked(!r3.isChecked());
        pVar.invoke(iVar.f(), Boolean.valueOf(iVar.f16021c.f8705d.isChecked()));
    }

    public static final void d(i iVar, p pVar, View view) {
        l.f(iVar, "this$0");
        l.f(pVar, "$onClick");
        pVar.invoke(iVar.f(), Boolean.valueOf(iVar.f16021c.f8705d.isChecked()));
    }

    public final void e(p4.j jVar) {
        l.f(jVar, "model");
        h(jVar);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f16021c.f8704c.setClipToOutline(true);
        }
        this.f16021c.f8705d.setChecked(jVar.a());
        this.f16021c.f8707f.setText(jVar.e());
        g(jVar);
    }

    public final p4.j f() {
        p4.j jVar = this.f16022d;
        if (jVar != null) {
            return jVar;
        }
        l.v("model");
        return null;
    }

    public final void g(p4.j jVar) {
        d4.a.a(this.itemView.getContext()).m(this.f16021c.f8703b);
        String b10 = jVar.b();
        if (b10 == null || b10.length() == 0) {
            this.f16021c.f8703b.setImageResource(R.drawable.cover_art);
        } else {
            d4.a.a(this.itemView.getContext()).s(jVar.b()).g(r7.j.f12975d).G0().T(android.R.color.transparent).u0(this.f16021c.f8703b);
        }
    }

    public final void h(p4.j jVar) {
        l.f(jVar, "<set-?>");
        this.f16022d = jVar;
    }
}
