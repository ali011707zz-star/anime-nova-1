package z4;

import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import io.wax911.support.custom.recycler.SupportViewHolder;
import j4.d0;
import jc.l;

/* compiled from: CharacterAnimeHolder.kt */
/* loaded from: classes.dex */
public final class j extends SupportViewHolder<p4.c> {

    /* renamed from: f, reason: collision with root package name */
    public final d0 f17325f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j(d0 d0Var) {
        super(r0);
        l.f(d0Var, "binding");
        ConstraintLayout b10 = d0Var.b();
        l.e(b10, "binding.root");
        this.f17325f = d0Var;
    }

    public static final void d(j jVar, p4.c cVar, View view) {
        l.f(jVar, "this$0");
        l.f(cVar, "$model");
        l.e(view, "it");
        jVar.performClick(cVar, view);
    }

    public static final void e(j jVar, p4.c cVar, View view) {
        l.f(jVar, "this$0");
        l.f(cVar, "$model");
        l.e(view, "it");
        jVar.performClick(cVar, view);
    }

    @Override // io.wax911.support.custom.recycler.SupportViewHolder
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(final p4.c cVar) {
        l.f(cVar, "model");
        if (Build.VERSION.SDK_INT >= 21) {
            this.f17325f.f8234g.setClipToOutline(true);
            this.f17325f.f8235h.setClipToOutline(true);
        }
        this.f17325f.f8232e.setText(cVar.c());
        ImageView imageView = this.f17325f.f8231d;
        l.e(imageView, "binding.animeImage");
        f(imageView, cVar.a());
        this.f17325f.f8240m.setText(cVar.g());
        this.f17325f.f8239l.setText(cVar.f());
        ImageView imageView2 = this.f17325f.f8238k;
        l.e(imageView2, "binding.characterImage");
        f(imageView2, cVar.e());
        this.f17325f.f8229b.setOnClickListener(new View.OnClickListener() { // from class: z4.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j.d(j.this, cVar, view);
            }
        });
        this.f17325f.f8236i.setOnClickListener(new View.OnClickListener() { // from class: z4.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                j.e(j.this, cVar, view);
            }
        });
    }

    public final void f(ImageView imageView, String str) {
        d4.a.a(this.itemView.getContext()).m(imageView);
        d4.a.a(this.itemView.getContext()).s(str).G0().g(r7.j.f12975d).u0(imageView);
    }

    @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
    public void onClick(View view) {
        l.f(view, "v");
    }

    @Override // io.wax911.support.custom.recycler.SupportViewHolder
    public void onViewRecycled() {
    }
}
