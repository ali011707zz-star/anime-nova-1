package z2;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.recyclerview.widget.RecyclerView;
import jc.l;
import s2.i;

/* compiled from: SingleChoiceDialogAdapter.kt */
/* loaded from: classes.dex */
public final class f extends RecyclerView.e0 implements View.OnClickListener {

    /* renamed from: f, reason: collision with root package name */
    public final AppCompatRadioButton f17275f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f17276g;

    /* renamed from: h, reason: collision with root package name */
    public final e f17277h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(View view, e eVar) {
        super(view);
        l.g(view, "itemView");
        l.g(eVar, "adapter");
        this.f17277h = eVar;
        view.setOnClickListener(this);
        View findViewById = view.findViewById(i.f13700g);
        l.b(findViewById, "itemView.findViewById(R.id.md_control)");
        this.f17275f = (AppCompatRadioButton) findViewById;
        View findViewById2 = view.findViewById(i.f13703j);
        l.b(findViewById2, "itemView.findViewById(R.id.md_title)");
        this.f17276g = (TextView) findViewById2;
    }

    public final AppCompatRadioButton a() {
        return this.f17275f;
    }

    public final TextView b() {
        return this.f17276g;
    }

    public final void c(boolean z10) {
        View view = this.itemView;
        l.b(view, "itemView");
        view.setEnabled(z10);
        this.f17275f.setEnabled(z10);
        this.f17276g.setEnabled(z10);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.g(view, "view");
        this.f17277h.f(getAdapterPosition());
    }
}
