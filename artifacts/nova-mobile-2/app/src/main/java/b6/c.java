package b6;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import j4.w0;
import java.util.List;
import jc.l;

/* compiled from: DownloadAdapter.kt */
/* loaded from: classes.dex */
public final class c extends RecyclerView.h<a> {

    /* renamed from: a, reason: collision with root package name */
    public List<b6.a> f3520a;

    /* renamed from: b, reason: collision with root package name */
    public final b f3521b;

    /* compiled from: DownloadAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public final w0 f3522a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view) {
            super(view);
            l.f(view, "view");
            w0 a10 = w0.a(view);
            l.e(a10, "bind(view)");
            this.f3522a = a10;
        }

        public final void a(b6.a aVar) {
            l.f(aVar, "download");
            this.f3522a.f8784b.setText(aVar.a());
        }

        public final w0 b() {
            return this.f3522a;
        }
    }

    /* compiled from: DownloadAdapter.kt */
    /* loaded from: classes.dex */
    public interface b {
        void z(b6.a aVar);
    }

    public c(d dVar, List<b6.a> list) {
        l.f(dVar, "context");
        l.f(list, "downloads");
        this.f3520a = list;
        this.f3521b = dVar;
    }

    public static final void h(c cVar, b6.a aVar, View view) {
        l.f(cVar, "this$0");
        l.f(aVar, "$item");
        cVar.f3521b.z(aVar);
    }

    public final List<b6.a> f() {
        return this.f3520a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a aVar, int i10) {
        l.f(aVar, "holder");
        final b6.a aVar2 = this.f3520a.get(i10);
        aVar.b().f8784b.setOnClickListener(new View.OnClickListener() { // from class: b6.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.h(c.this, aVar2, view);
            }
        });
        aVar.a(aVar2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f3520a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.download_item, viewGroup, false);
        l.e(inflate, "view");
        return new a(inflate);
    }

    public final void j(b6.a aVar) {
        l.f(aVar, "download");
        this.f3520a.remove(aVar);
    }

    public final void k(List<b6.a> list) {
        l.f(list, "<set-?>");
        this.f3520a = list;
    }
}
