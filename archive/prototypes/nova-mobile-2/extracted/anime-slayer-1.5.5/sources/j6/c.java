package j6;

import android.content.Context;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.j;
import androidx.recyclerview.widget.o;
import com.anslayer.R;
import com.anslayer.ui.anime.SeriesActivity;
import ic.l;
import io.wax911.support.base.event.ItemClickListener;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import j4.k1;
import j6.c;
import java.util.LinkedHashMap;
import java.util.Map;
import vb.p;

/* compiled from: PeopleListAnimeAdapter.kt */
/* loaded from: classes.dex */
public final class c extends o<w4.d, b> {

    /* renamed from: c, reason: collision with root package name */
    public final l<Integer, p> f8896c;

    /* renamed from: d, reason: collision with root package name */
    public final Map<String, Parcelable> f8897d;

    /* renamed from: e, reason: collision with root package name */
    public final RecyclerView.v f8898e;

    /* compiled from: PeopleListAnimeAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<w4.d> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(w4.d dVar, w4.d dVar2) {
            jc.l.f(dVar, "oldItem");
            jc.l.f(dVar2, "newItem");
            return jc.l.a(dVar, dVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(w4.d dVar, w4.d dVar2) {
            jc.l.f(dVar, "oldItem");
            jc.l.f(dVar2, "newItem");
            return dVar.b() == dVar2.b();
        }
    }

    /* compiled from: PeopleListAnimeAdapter.kt */
    /* loaded from: classes.dex */
    public final class b extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public final k1 f8899a;

        /* renamed from: b, reason: collision with root package name */
        public w4.d f8900b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ c f8901c;

        /* compiled from: PeopleListAnimeAdapter.kt */
        /* loaded from: classes.dex */
        public static final class a implements ItemClickListener<p4.p> {
            @Override // io.wax911.support.base.event.ItemClickListener
            public void onItemClick(View view, s3.c<p4.p> cVar) {
                Context context;
                jc.l.f(view, "target");
                jc.l.f(cVar, "data");
                int id2 = view.getId();
                if ((id2 == R.id.container || id2 == R.id.seriesImage) && (context = view.getContext()) != null) {
                    p4.p b10 = cVar.b();
                    context.startActivity(SeriesActivity.f4161l.a(context, b10.m(), b10.n(), b10.g0(), b10.i0()));
                }
            }

            @Override // io.wax911.support.base.event.ItemClickListener
            public void onItemLongClick(View view, s3.c<p4.p> cVar) {
                jc.l.f(view, "target");
                jc.l.f(cVar, "data");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c cVar, View view, final l<? super Integer, p> lVar) {
            super(view);
            jc.l.f(cVar, "this$0");
            jc.l.f(view, "view");
            jc.l.f(lVar, "onClick");
            this.f8901c = cVar;
            k1 a10 = k1.a(view);
            jc.l.e(a10, "bind(view)");
            this.f8899a = a10;
            a10.f8496e.setOnClickListener(new View.OnClickListener() { // from class: j6.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    c.b.b(l.this, this, view2);
                }
            });
        }

        public static final void b(l lVar, b bVar, View view) {
            jc.l.f(lVar, "$onClick");
            jc.l.f(bVar, "this$0");
            lVar.invoke(Integer.valueOf(bVar.e().b()));
        }

        public final void c(w4.d dVar) {
            jc.l.f(dVar, "peopleSection");
            f(dVar);
            TextView textView = this.f8899a.f8496e;
            jc.l.e(textView, "binding.seeMore");
            textView.setVisibility(dVar.a().size() == 5 ? 0 : 8);
            this.f8899a.f8494c.setText(this.itemView.getContext().getString(dVar.b()));
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.itemView.getContext(), 0, true);
            linearLayoutManager.setInitialPrefetchItemCount(4);
            this.f8899a.f8495d.setNestedScrollingEnabled(false);
            this.f8899a.f8495d.setRecycledViewPool(this.f8901c.f8898e);
            this.f8899a.f8495d.setLayoutManager(linearLayoutManager);
            SupportRecyclerView supportRecyclerView = this.f8899a.f8495d;
            s5.f fVar = new s5.f();
            fVar.onItemsInserted(dVar.a());
            fVar.p(new a());
            supportRecyclerView.setAdapter(fVar);
            Parcelable parcelable = (Parcelable) this.f8901c.f8897d.get(this.f8901c.l(getLayoutPosition()));
            if (parcelable != null) {
                RecyclerView.p layoutManager = this.f8899a.f8495d.getLayoutManager();
                if (layoutManager == null) {
                    return;
                }
                layoutManager.onRestoreInstanceState(parcelable);
                return;
            }
            RecyclerView.p layoutManager2 = this.f8899a.f8495d.getLayoutManager();
            if (layoutManager2 == null) {
                return;
            }
            layoutManager2.scrollToPosition(0);
        }

        public final k1 d() {
            return this.f8899a;
        }

        public final w4.d e() {
            w4.d dVar = this.f8900b;
            if (dVar != null) {
                return dVar;
            }
            jc.l.v("peopleSection");
            return null;
        }

        public final void f(w4.d dVar) {
            jc.l.f(dVar, "<set-?>");
            this.f8900b = dVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public c(l<? super Integer, p> lVar) {
        super(new a());
        jc.l.f(lVar, "onClick");
        this.f8896c = lVar;
        this.f8897d = new LinkedHashMap();
        this.f8898e = new RecyclerView.v();
    }

    public final String l(int i10) {
        return String.valueOf(f(i10).b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(b bVar, int i10) {
        jc.l.f(bVar, "holder");
        w4.d f10 = f(i10);
        if (f10 == null) {
            return;
        }
        bVar.c(f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.people_list_anime_item, viewGroup, false);
        jc.l.e(inflate, "inflater.inflate(R.layou…nime_item, parent, false)");
        return new b(this, inflate, this.f8896c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public void onViewRecycled(b bVar) {
        jc.l.f(bVar, "holder");
        super.onViewRecycled(bVar);
        String l10 = l(bVar.getLayoutPosition());
        Map<String, Parcelable> map = this.f8897d;
        RecyclerView.p layoutManager = bVar.d().f8495d.getLayoutManager();
        map.put(l10, layoutManager == null ? null : layoutManager.onSaveInstanceState());
    }
}
