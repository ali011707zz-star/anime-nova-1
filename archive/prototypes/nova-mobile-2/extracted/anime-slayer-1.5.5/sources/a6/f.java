package a6;

import a6.a;
import android.R;
import android.view.View;
import android.widget.ImageButton;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import j4.s;
import jc.l;
import p4.p;
import r7.j;

/* compiled from: AddAnimeHolder.kt */
/* loaded from: classes.dex */
public final class f extends RecyclerView.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final a.b f441a;

    /* renamed from: b, reason: collision with root package name */
    public final s f442b;

    /* renamed from: c, reason: collision with root package name */
    public p f443c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(View view, a.b bVar) {
        super(view);
        l.f(view, "view");
        l.f(bVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f441a = bVar;
        s a10 = s.a(view);
        l.e(a10, "bind(view)");
        this.f442b = a10;
        a10.f8698b.setOnClickListener(new View.OnClickListener() { // from class: a6.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.c(f.this, view2);
            }
        });
        a10.f8701e.setOnClickListener(new View.OnClickListener() { // from class: a6.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.d(f.this, view2);
            }
        });
    }

    public static final void c(f fVar, View view) {
        l.f(fVar, "this$0");
        a.b bVar = fVar.f441a;
        p pVar = fVar.f443c;
        if (pVar == null) {
            l.v("anime");
            pVar = null;
        }
        bVar.g(pVar, fVar.getBindingAdapterPosition());
    }

    public static final void d(f fVar, View view) {
        l.f(fVar, "this$0");
        a.b bVar = fVar.f441a;
        p pVar = fVar.f443c;
        if (pVar == null) {
            l.v("anime");
            pVar = null;
        }
        bVar.d(pVar, fVar.getBindingAdapterPosition());
    }

    public final void e(p pVar) {
        l.f(pVar, "anime");
        this.f443c = pVar;
        this.f442b.f8700d.setText(pVar.n());
        ImageButton imageButton = this.f442b.f8698b;
        l.e(imageButton, "binding.add");
        imageButton.setVisibility(pVar.f0() ? 8 : 0);
        ImageButton imageButton2 = this.f442b.f8701e;
        l.e(imageButton2, "binding.remove");
        imageButton2.setVisibility(pVar.f0() ? 0 : 8);
        d4.a.a(this.itemView.getContext()).m(this.f442b.f8699c);
        d4.a.a(this.itemView.getContext()).s(pVar.e()).g(j.f12975d).G0().T(R.color.transparent).u0(this.f442b.f8699c);
    }

    public final void f(boolean z10) {
        p pVar = null;
        if (z10) {
            ImageButton imageButton = this.f442b.f8701e;
            l.e(imageButton, "binding.remove");
            imageButton.setVisibility(0);
            ImageButton imageButton2 = this.f442b.f8698b;
            l.e(imageButton2, "binding.add");
            imageButton2.setVisibility(8);
            p pVar2 = this.f443c;
            if (pVar2 == null) {
                l.v("anime");
            } else {
                pVar = pVar2;
            }
            pVar.u0(true);
            return;
        }
        ImageButton imageButton3 = this.f442b.f8701e;
        l.e(imageButton3, "binding.remove");
        imageButton3.setVisibility(8);
        ImageButton imageButton4 = this.f442b.f8698b;
        l.e(imageButton4, "binding.add");
        imageButton4.setVisibility(0);
        p pVar3 = this.f443c;
        if (pVar3 == null) {
            l.v("anime");
        } else {
            pVar = pVar3;
        }
        pVar.u0(false);
    }
}
