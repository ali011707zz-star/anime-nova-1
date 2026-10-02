package h7;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.anslayer.R;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.ui.news.detail.NewsDetailsActivity;
import com.anslayer.ui.recommend.RecommendActivity;
import ic.l;
import io.wax911.support.base.event.ItemClickListener;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import java.util.ArrayList;
import java.util.List;
import p4.q;
import r4.f;
import vb.p;
import wb.m;

/* compiled from: SeriesExtensions.kt */
/* loaded from: classes.dex */
public final class c {

    /* compiled from: SeriesExtensions.kt */
    /* loaded from: classes.dex */
    public static final class a implements ItemClickListener<p4.e> {

        /* renamed from: f */
        public final /* synthetic */ l<p4.e, p> f7377f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(l<? super p4.e, p> lVar) {
            this.f7377f = lVar;
        }

        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemClick(View view, s3.c<p4.e> cVar) {
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
            l<p4.e, p> lVar = this.f7377f;
            p4.e b10 = cVar.b();
            jc.l.e(b10, "data.second");
            lVar.invoke(b10);
        }

        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemLongClick(View view, s3.c<p4.e> cVar) {
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
        }
    }

    /* compiled from: SeriesExtensions.kt */
    /* loaded from: classes.dex */
    public static final class b implements ItemClickListener<f> {

        /* renamed from: f */
        public final /* synthetic */ List<s4.a> f7378f;

        public b(List<s4.a> list) {
            this.f7378f = list;
        }

        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemClick(View view, s3.c<f> cVar) {
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
            int id2 = view.getId();
            if (id2 == R.id.container || id2 == R.id.seriesImage) {
                Context context = view.getContext();
                Bundle bundle = new Bundle();
                bundle.putParcelable("arg_model", this.f7378f.get(cVar.a()));
                Intent intent = new Intent(context, (Class<?>) NewsDetailsActivity.class);
                intent.setFlags(268435456);
                intent.putExtras(bundle);
                if (context == null) {
                    return;
                }
                context.startActivity(intent);
            }
        }

        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemLongClick(View view, s3.c<f> cVar) {
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
        }
    }

    /* compiled from: SeriesExtensions.kt */
    /* renamed from: h7.c$c */
    /* loaded from: classes.dex */
    public static final class C0144c implements ItemClickListener<f> {

        /* renamed from: f */
        public final /* synthetic */ List<u4.a> f7379f;

        public C0144c(List<u4.a> list) {
            this.f7379f = list;
        }

        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemClick(View view, s3.c<f> cVar) {
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
            int id2 = view.getId();
            if (id2 == R.id.container || id2 == R.id.seriesImage) {
                Context context = view.getContext();
                Bundle bundle = new Bundle();
                bundle.putParcelable("arg_model", this.f7379f.get(cVar.a()));
                bundle.putString("list_type", "recommendation_details");
                Intent intent = new Intent(context, (Class<?>) RecommendActivity.class);
                intent.setFlags(268435456);
                intent.putExtras(bundle);
                if (context == null) {
                    return;
                }
                context.startActivity(intent);
            }
        }

        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemLongClick(View view, s3.c<f> cVar) {
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
        }
    }

    /* compiled from: SeriesExtensions.kt */
    /* loaded from: classes.dex */
    public static final class d implements ItemClickListener<p4.p> {
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

    /* compiled from: SeriesExtensions.kt */
    /* loaded from: classes.dex */
    public static final class e implements ItemClickListener<q> {
        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemClick(View view, s3.c<q> cVar) {
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
        }

        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemLongClick(View view, s3.c<q> cVar) {
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
        }
    }

    public static final void a(List<p4.e> list, SupportRecyclerView supportRecyclerView, boolean z10, l<? super p4.e, p> lVar) {
        StaggeredGridLayoutManager staggeredGridLayoutManager;
        jc.l.f(list, "<this>");
        jc.l.f(supportRecyclerView, "supportRecyclerView");
        jc.l.f(lVar, "action");
        supportRecyclerView.setHasFixedSize(true);
        supportRecyclerView.setNestedScrollingEnabled(true);
        if (z10) {
            staggeredGridLayoutManager = new StaggeredGridLayoutManager(supportRecyclerView.getContext().getResources().getInteger(R.integer.grid_list_x3), 1);
        } else {
            staggeredGridLayoutManager = new StaggeredGridLayoutManager(supportRecyclerView.getContext().getResources().getInteger(R.integer.single_list_size), 0);
            staggeredGridLayoutManager.setReverseLayout(true);
        }
        supportRecyclerView.setLayoutManager(staggeredGridLayoutManager);
        c5.c cVar = new c5.c(z10);
        cVar.onItemsInserted(list);
        cVar.p(new a(lVar));
        supportRecyclerView.setAdapter(cVar);
    }

    public static /* synthetic */ void b(List list, SupportRecyclerView supportRecyclerView, boolean z10, l lVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        a(list, supportRecyclerView, z10, lVar);
    }

    public static final void c(List<s4.a> list, SupportRecyclerView supportRecyclerView, boolean z10) {
        jc.l.f(list, "<this>");
        jc.l.f(supportRecyclerView, "supportRecyclerView");
        e6.b bVar = new e6.b();
        ArrayList arrayList = new ArrayList(m.q(list, 10));
        for (s4.a aVar : list) {
            arrayList.add(new f(aVar.f(), aVar.j(), aVar.g()));
        }
        bVar.onItemsInserted(arrayList);
        bVar.p(new b(list));
        l7.p.h(supportRecyclerView, bVar, z10, null, 4, null);
    }

    public static /* synthetic */ void d(List list, SupportRecyclerView supportRecyclerView, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        c(list, supportRecyclerView, z10);
    }

    public static final void e(List<u4.a> list, SupportRecyclerView supportRecyclerView, boolean z10) {
        jc.l.f(list, "<this>");
        jc.l.f(supportRecyclerView, "supportRecyclerView");
        e6.b bVar = new e6.b();
        ArrayList arrayList = new ArrayList(m.q(list, 10));
        for (u4.a aVar : list) {
            arrayList.add(new f(aVar.o(), aVar.p(), aVar.n()));
        }
        bVar.onItemsInserted(arrayList);
        bVar.p(new C0144c(list));
        l7.p.h(supportRecyclerView, bVar, z10, null, 4, null);
    }

    public static /* synthetic */ void f(List list, SupportRecyclerView supportRecyclerView, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        e(list, supportRecyclerView, z10);
    }

    public static final void g(List<p4.p> list, SupportRecyclerView supportRecyclerView, boolean z10) {
        jc.l.f(list, "<this>");
        jc.l.f(supportRecyclerView, "supportRecyclerView");
        s5.f fVar = new s5.f();
        fVar.onItemsInserted(list);
        fVar.p(new d());
        l7.p.h(supportRecyclerView, fVar, z10, null, 4, null);
    }

    public static /* synthetic */ void h(List list, SupportRecyclerView supportRecyclerView, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        g(list, supportRecyclerView, z10);
    }

    public static final void i(List<q> list, SupportRecyclerView supportRecyclerView, boolean z10) {
        StaggeredGridLayoutManager staggeredGridLayoutManager;
        jc.l.f(list, "<this>");
        jc.l.f(supportRecyclerView, "supportRecyclerView");
        supportRecyclerView.setHasFixedSize(true);
        supportRecyclerView.setNestedScrollingEnabled(true);
        if (z10) {
            staggeredGridLayoutManager = new StaggeredGridLayoutManager(supportRecyclerView.getContext().getResources().getInteger(R.integer.grid_list_x3), 1);
        } else {
            staggeredGridLayoutManager = new StaggeredGridLayoutManager(supportRecyclerView.getContext().getResources().getInteger(R.integer.single_list_size), 0);
            staggeredGridLayoutManager.setReverseLayout(true);
        }
        supportRecyclerView.setLayoutManager(staggeredGridLayoutManager);
        c5.l lVar = new c5.l(z10);
        lVar.onItemsInserted(list);
        lVar.p(new e());
        supportRecyclerView.setAdapter(lVar);
    }

    public static /* synthetic */ void j(List list, SupportRecyclerView supportRecyclerView, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        i(list, supportRecyclerView, z10);
    }

    public static final int k(p4.p pVar) {
        jc.l.f(pVar, "<this>");
        String f10 = pVar.f();
        if (f10 == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < f10.length(); i11++) {
            if (f10.charAt(i11) == '\n') {
                i10++;
            }
        }
        if (i10 > 5) {
            return i10;
        }
        Rect rect = new Rect();
        Paint paint = new Paint();
        paint.setTextSize(k7.b.i(14));
        paint.setTypeface(Typeface.SANS_SERIF);
        paint.getTextBounds(f10, 0, f10.length(), rect);
        return (int) Math.ceil(rect.width() / (Resources.getSystem().getDisplayMetrics().widthPixels - k7.b.g(64)));
    }
}
