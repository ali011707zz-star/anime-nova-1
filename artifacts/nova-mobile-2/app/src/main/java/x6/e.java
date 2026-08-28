package x6;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.j;
import androidx.recyclerview.widget.o;
import com.google.android.material.button.MaterialButton;
import j4.x1;
import x6.e;

/* compiled from: ArchiveAdapter.kt */
/* loaded from: classes.dex */
public final class e extends o<String, a> {

    /* renamed from: c, reason: collision with root package name */
    public final String f16051c;

    /* renamed from: d, reason: collision with root package name */
    public final c f16052d;

    /* compiled from: ArchiveAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public final x1 f16053a;

        /* renamed from: b, reason: collision with root package name */
        public final e f16054b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(x1 x1Var, e eVar) {
            super(x1Var.b());
            jc.l.f(x1Var, "binding");
            jc.l.f(eVar, "adapter");
            this.f16053a = x1Var;
            this.f16054b = eVar;
            x1Var.f8813e.setOnClickListener(new View.OnClickListener() { // from class: x6.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.a.e(e.a.this, view);
                }
            });
            x1Var.f8811c.setOnClickListener(new View.OnClickListener() { // from class: x6.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.a.f(e.a.this, view);
                }
            });
            x1Var.f8812d.setOnClickListener(new View.OnClickListener() { // from class: x6.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.a.g(e.a.this, view);
                }
            });
            x1Var.f8810b.setOnClickListener(new View.OnClickListener() { // from class: x6.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.a.h(e.a.this, view);
                }
            });
        }

        public static final void e(a aVar, View view) {
            jc.l.f(aVar, "this$0");
            String i10 = e.i(aVar.f16054b, aVar.getBindingAdapterPosition());
            if (i10 == null) {
                return;
            }
            aVar.f16054b.j().w(i10);
        }

        public static final void f(a aVar, View view) {
            jc.l.f(aVar, "this$0");
            String i10 = e.i(aVar.f16054b, aVar.getBindingAdapterPosition());
            if (i10 == null) {
                return;
            }
            aVar.f16054b.j().r(i10);
        }

        public static final void g(a aVar, View view) {
            jc.l.f(aVar, "this$0");
            String i10 = e.i(aVar.f16054b, aVar.getBindingAdapterPosition());
            if (i10 == null) {
                return;
            }
            aVar.f16054b.j().f(i10);
        }

        public static final void h(a aVar, View view) {
            jc.l.f(aVar, "this$0");
            String i10 = e.i(aVar.f16054b, aVar.getBindingAdapterPosition());
            if (i10 == null) {
                return;
            }
            aVar.f16054b.j().k(i10);
        }

        public final void i(String str) {
            jc.l.f(str, "year");
            this.f16053a.f8814f.setText(str);
            if (getBindingAdapterPosition() == 0) {
                String k10 = this.f16054b.k();
                if (k10 != null) {
                    int hashCode = k10.hashCode();
                    if (hashCode != -1811812819) {
                        if (hashCode != -1807340593) {
                            if (hashCode == -1703869723 && k10.equals("Winter")) {
                                MaterialButton materialButton = this.f16053a.f8810b;
                                jc.l.e(materialButton, "binding.fall");
                                materialButton.setVisibility(8);
                                MaterialButton materialButton2 = this.f16053a.f8811c;
                                jc.l.e(materialButton2, "binding.spring");
                                materialButton2.setVisibility(8);
                                MaterialButton materialButton3 = this.f16053a.f8812d;
                                jc.l.e(materialButton3, "binding.summer");
                                materialButton3.setVisibility(8);
                                MaterialButton materialButton4 = this.f16053a.f8813e;
                                jc.l.e(materialButton4, "binding.winter");
                                materialButton4.setVisibility(0);
                                return;
                            }
                        } else if (k10.equals("Summer")) {
                            MaterialButton materialButton5 = this.f16053a.f8810b;
                            jc.l.e(materialButton5, "binding.fall");
                            materialButton5.setVisibility(8);
                            MaterialButton materialButton6 = this.f16053a.f8811c;
                            jc.l.e(materialButton6, "binding.spring");
                            materialButton6.setVisibility(0);
                            MaterialButton materialButton7 = this.f16053a.f8812d;
                            jc.l.e(materialButton7, "binding.summer");
                            materialButton7.setVisibility(0);
                            MaterialButton materialButton8 = this.f16053a.f8813e;
                            jc.l.e(materialButton8, "binding.winter");
                            materialButton8.setVisibility(0);
                            return;
                        }
                    } else if (k10.equals("Spring")) {
                        MaterialButton materialButton9 = this.f16053a.f8810b;
                        jc.l.e(materialButton9, "binding.fall");
                        materialButton9.setVisibility(8);
                        MaterialButton materialButton10 = this.f16053a.f8811c;
                        jc.l.e(materialButton10, "binding.spring");
                        materialButton10.setVisibility(0);
                        MaterialButton materialButton11 = this.f16053a.f8812d;
                        jc.l.e(materialButton11, "binding.summer");
                        materialButton11.setVisibility(8);
                        MaterialButton materialButton12 = this.f16053a.f8813e;
                        jc.l.e(materialButton12, "binding.winter");
                        materialButton12.setVisibility(0);
                        return;
                    }
                }
                MaterialButton materialButton13 = this.f16053a.f8810b;
                jc.l.e(materialButton13, "binding.fall");
                materialButton13.setVisibility(0);
                MaterialButton materialButton14 = this.f16053a.f8811c;
                jc.l.e(materialButton14, "binding.spring");
                materialButton14.setVisibility(0);
                MaterialButton materialButton15 = this.f16053a.f8812d;
                jc.l.e(materialButton15, "binding.summer");
                materialButton15.setVisibility(0);
                MaterialButton materialButton16 = this.f16053a.f8813e;
                jc.l.e(materialButton16, "binding.winter");
                materialButton16.setVisibility(0);
            }
        }
    }

    /* compiled from: ArchiveAdapter.kt */
    /* loaded from: classes.dex */
    public static final class b extends j.f<String> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(String str, String str2) {
            jc.l.f(str, "oldItem");
            jc.l.f(str2, "newItem");
            return jc.l.a(str, str2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(String str, String str2) {
            jc.l.f(str, "oldItem");
            jc.l.f(str2, "newItem");
            return jc.l.a(str, str2);
        }
    }

    /* compiled from: ArchiveAdapter.kt */
    /* loaded from: classes.dex */
    public interface c {
        void f(String str);

        void k(String str);

        void r(String str);

        void w(String str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(i iVar, String str) {
        super(new b());
        jc.l.f(iVar, "fragment");
        this.f16051c = str;
        this.f16052d = iVar;
    }

    public static final /* synthetic */ String i(e eVar, int i10) {
        return eVar.f(i10);
    }

    public final c j() {
        return this.f16052d;
    }

    public final String k() {
        return this.f16051c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a aVar, int i10) {
        jc.l.f(aVar, "holder");
        String f10 = f(i10);
        if (f10 == null) {
            return;
        }
        aVar.i(f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        x1 c10 = x1.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        jc.l.e(c10, "inflate(inflater, parent, false)");
        return new a(c10, this);
    }
}
