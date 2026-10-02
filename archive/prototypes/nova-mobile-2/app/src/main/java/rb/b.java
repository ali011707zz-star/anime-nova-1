package rb;

import android.content.Context;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* compiled from: ChangeLogRecyclerViewAdapter.java */
/* loaded from: classes.dex */
public class b extends RecyclerView.h<RecyclerView.e0> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f13211a;

    /* renamed from: b, reason: collision with root package name */
    public int f13212b = qb.a.f12674b;

    /* renamed from: c, reason: collision with root package name */
    public int f13213c = qb.a.f12675c;

    /* renamed from: d, reason: collision with root package name */
    public int f13214d = qb.a.f12676d;

    /* renamed from: e, reason: collision with root package name */
    public List<c> f13215e;

    /* compiled from: ChangeLogRecyclerViewAdapter.java */
    /* loaded from: classes.dex */
    public static class a extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public TextView f13216a;

        /* renamed from: b, reason: collision with root package name */
        public TextView f13217b;

        public a(View view) {
            super(view);
            this.f13216a = (TextView) view.findViewById(pb.a.f12201b);
            this.f13217b = (TextView) view.findViewById(pb.a.f12200a);
        }
    }

    /* compiled from: ChangeLogRecyclerViewAdapter.java */
    /* renamed from: rb.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0325b extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public TextView f13218a;

        /* renamed from: b, reason: collision with root package name */
        public TextView f13219b;

        public C0325b(View view) {
            super(view);
            this.f13218a = (TextView) view.findViewById(pb.a.f12202c);
            this.f13219b = (TextView) view.findViewById(pb.a.f12203d);
        }
    }

    public b(Context context, List<c> list) {
        this.f13211a = context;
        this.f13215e = list == null ? new ArrayList<>() : list;
    }

    public void e(LinkedList<c> linkedList) {
        int size = this.f13215e.size();
        this.f13215e.addAll(linkedList);
        notifyItemRangeInserted(size, linkedList.size() + size);
    }

    public final c f(int i10) {
        return this.f13215e.get(i10);
    }

    public final boolean g(int i10) {
        return f(i10).d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f13215e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        return g(i10) ? 1 : 0;
    }

    public final void h(a aVar, int i10) {
        c f10 = f(i10);
        if (f10 != null) {
            if (aVar.f13216a != null) {
                StringBuilder sb2 = new StringBuilder();
                String string = this.f13211a.getString(this.f13214d);
                if (string != null) {
                    sb2.append(string);
                }
                sb2.append(f10.f13221b);
                aVar.f13216a.setText(sb2.toString());
            }
            TextView textView = aVar.f13217b;
            if (textView != null) {
                String str = f10.f13223d;
                if (str != null) {
                    textView.setText(str);
                    aVar.f13217b.setVisibility(0);
                } else {
                    textView.setText("");
                    aVar.f13217b.setVisibility(8);
                }
            }
        }
    }

    public final void i(C0325b c0325b, int i10) {
        c f10 = f(i10);
        if (f10 != null) {
            TextView textView = c0325b.f13218a;
            if (textView != null) {
                textView.setText(Html.fromHtml(f10.b(this.f13211a)));
                c0325b.f13218a.setMovementMethod(LinkMovementMethod.getInstance());
            }
            if (c0325b.f13219b != null) {
                if (f10.c()) {
                    c0325b.f13219b.setVisibility(0);
                } else {
                    c0325b.f13219b.setVisibility(8);
                }
            }
        }
    }

    public void j(int i10) {
        this.f13213c = i10;
    }

    public void k(int i10) {
        this.f13212b = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onBindViewHolder(RecyclerView.e0 e0Var, int i10) {
        if (g(i10)) {
            h((a) e0Var, i10);
        } else {
            i((C0325b) e0Var, i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public RecyclerView.e0 onCreateViewHolder(ViewGroup viewGroup, int i10) {
        if (i10 == 1) {
            return new a(LayoutInflater.from(viewGroup.getContext()).inflate(this.f13213c, viewGroup, false));
        }
        return new C0325b(LayoutInflater.from(viewGroup.getContext()).inflate(this.f13212b, viewGroup, false));
    }
}
