package g6;

import android.content.Context;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.MenuItem;
import android.widget.ProgressBar;
import androidx.lifecycle.z;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.a;
import com.anslayer.R;
import com.anslayer.data.ListManagementWorker;
import d2.n;
import d2.u;
import d2.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: LastWatchedFragment.kt */
/* loaded from: classes.dex */
public final class s extends e {

    /* renamed from: p, reason: collision with root package name */
    public final int f7010p = R.string.empty_list;

    /* renamed from: q, reason: collision with root package name */
    public final z<d2.u> f7011q = new z() { // from class: g6.r
        @Override // androidx.lifecycle.z
        public final void B(Object obj) {
            s.b0(s.this, (d2.u) obj);
        }
    };

    /* compiled from: LastWatchedFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7012a;

        static {
            int[] iArr = new int[u.a.values().length];
            iArr[u.a.SUCCEEDED.ordinal()] = 1;
            iArr[u.a.FAILED.ordinal()] = 2;
            f7012a = iArr;
        }
    }

    /* compiled from: LastWatchedFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ActionMode f7014g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ActionMode actionMode) {
            super(1);
            this.f7014g = actionMode;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            s.this.a0(this.f7014g);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    public static final void b0(s sVar, d2.u uVar) {
        jc.l.f(sVar, "this$0");
        u.a a10 = uVar == null ? null : uVar.a();
        int i10 = a10 == null ? -1 : a.f7012a[a10.ordinal()];
        if (i10 == 1) {
            c G = sVar.G();
            if (G == null) {
                return;
            }
            G.h();
            return;
        }
        if (i10 != 2) {
            sVar.toString();
            return;
        }
        androidx.fragment.app.e activity = sVar.getActivity();
        if (activity == null) {
            return;
        }
        k7.b.q(activity, R.string.text_request_error, 0, 2, null);
    }

    @Override // g6.e
    public int I() {
        return this.f7010p;
    }

    public final void a0(ActionMode actionMode) {
        List<p4.p> c10 = N().c();
        ArrayList arrayList = new ArrayList(wb.m.q(c10, 10));
        Iterator<T> it2 = c10.iterator();
        while (it2.hasNext()) {
            arrayList.add(String.valueOf(((p4.p) it2.next()).m()));
        }
        a.C0058a g10 = new a.C0058a().g("anime_ids", e7.c.a(arrayList));
        jc.l.e(g10, "Builder()\n              …ype.seriesIds, seriesIds)");
        g10.g("arg_request_type", "REMOVE_FROM_WATCH_HISTORY");
        androidx.work.a a10 = g10.a();
        jc.l.e(a10, "dataBuilder.build()");
        c0(a10);
        actionMode.finish();
    }

    public final void c0(androidx.work.a aVar) {
        Context context = getContext();
        if (context == null) {
            return;
        }
        RecyclerView M = M();
        if (M != null) {
            M.setVisibility(8);
        }
        ProgressBar progressBar = H().f8182o;
        jc.l.e(progressBar, "binding.progress");
        progressBar.setVisibility(0);
        d2.n b10 = new n.a(ListManagementWorker.class).g(aVar).b();
        jc.l.e(b10, "Builder(ListManagementWo…                 .build()");
        d2.n nVar = b10;
        v i10 = v.i(context);
        i10.g("ListManagementWorker#Published0003", d2.f.REPLACE, nVar);
        i10.j(nVar.a()).i((androidx.fragment.app.e) context, this.f7011q);
    }

    @Override // g6.e, android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        jc.l.f(actionMode, "mode");
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_delete) {
            androidx.fragment.app.e requireActivity = requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            s2.c.v(s2.c.p(s2.c.n(new s2.c(requireActivity, null, 2, null), null, "هل انت متأكد من حذف الانميات المحددة؟", null, 5, null), Integer.valueOf(R.string.Cancel), null, null, 6, null), Integer.valueOf(R.string.remove), null, new b(actionMode), 2, null).show();
            return true;
        }
        return super.onActionItemClicked(actionMode, menuItem);
    }

    @Override // g6.e, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        F(true);
    }
}
