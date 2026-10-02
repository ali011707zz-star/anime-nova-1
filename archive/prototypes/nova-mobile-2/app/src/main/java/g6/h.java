package g6;

import android.content.Context;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
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
import io.wax911.support.SupportExtentionKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: BrowseFragmentUser.kt */
/* loaded from: classes.dex */
public class h extends e {

    /* renamed from: p, reason: collision with root package name */
    public final int f6973p = R.string.empty_list;

    /* renamed from: q, reason: collision with root package name */
    public final z<d2.u> f6974q = new z() { // from class: g6.g
        @Override // androidx.lifecycle.z
        public final void B(Object obj) {
            h.b0(h.this, (d2.u) obj);
        }
    };

    /* compiled from: BrowseFragmentUser.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6975a;

        static {
            int[] iArr = new int[u.a.values().length];
            iArr[u.a.SUCCEEDED.ordinal()] = 1;
            iArr[u.a.FAILED.ordinal()] = 2;
            f6975a = iArr;
        }
    }

    /* compiled from: BrowseFragmentUser.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ActionMode f6977g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ActionMode actionMode) {
            super(1);
            this.f6977g = actionMode;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            h.this.a0(this.f6977g);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: BrowseFragmentUser.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.q<s2.c, Integer, CharSequence, vb.p> {
        public c() {
            super(3);
        }

        public final void a(s2.c cVar, int i10, CharSequence charSequence) {
            jc.l.f(cVar, "$noName_0");
            jc.l.f(charSequence, "$noName_2");
            h.this.L().h0(y3.a.f16424a.d()[i10]);
            g6.c G = h.this.G();
            if (G == null) {
                return;
            }
            G.h();
        }

        @Override // ic.q
        public /* bridge */ /* synthetic */ vb.p i(s2.c cVar, Integer num, CharSequence charSequence) {
            a(cVar, num.intValue(), charSequence);
            return vb.p.f15031a;
        }
    }

    public static final void b0(h hVar, d2.u uVar) {
        jc.l.f(hVar, "this$0");
        u.a a10 = uVar == null ? null : uVar.a();
        int i10 = a10 == null ? -1 : a.f6975a[a10.ordinal()];
        if (i10 == 1) {
            g6.c G = hVar.G();
            if (G == null) {
                return;
            }
            G.h();
            return;
        }
        if (i10 != 2) {
            hVar.toString();
            return;
        }
        androidx.fragment.app.e activity = hVar.getActivity();
        if (activity == null) {
            return;
        }
        k7.b.q(activity, R.string.text_request_error, 0, 2, null);
    }

    @Override // g6.e
    public int I() {
        return this.f6973p;
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
        Bundle arguments = getArguments();
        String string = arguments == null ? null : arguments.getString("list_type");
        if (string != null) {
            switch (string.hashCode()) {
                case -1785238953:
                    if (string.equals("favorites")) {
                        g10.g("arg_request_type", "REMOVE_FROM_FAVOURITES");
                        break;
                    }
                    break;
                case -1433185695:
                    if (string.equals("plan_to_watch")) {
                        g10.g("arg_request_type", "REMOVE_FROM_PLANNING_LIST");
                        break;
                    }
                    break;
                case -1326157025:
                    if (string.equals("on_hold")) {
                        g10.g("arg_request_type", "REMOVE_FROM_ON_HOLD");
                        break;
                    }
                    break;
                case -209266941:
                    if (string.equals("watched_history")) {
                        g10.g("arg_request_type", "REMOVE_FROM_WATCH_HISTORY");
                        break;
                    }
                    break;
                case 545156275:
                    if (string.equals("watching")) {
                        g10.g("arg_request_type", "REMOVE_FROM_WATCHING");
                        break;
                    }
                    break;
                case 1125964206:
                    if (string.equals("watched")) {
                        g10.g("arg_request_type", "REMOVE_FROM_WATCHED");
                        break;
                    }
                    break;
                case 1925736384:
                    if (string.equals("dropped")) {
                        g10.g("arg_request_type", "REMOVE_FROM_DROPPED");
                        break;
                    }
                    break;
            }
        }
        androidx.work.a a10 = g10.a();
        jc.l.e(a10, "dataBuilder.build()");
        d0(a10);
        actionMode.finish();
    }

    public final void c0() {
        s2.c v10;
        String D = L().D();
        if (D == null) {
            D = "latest_first";
        }
        s2.c a10 = k7.c.a(getActivity());
        if (a10 != null) {
            s2.c y10 = s2.c.y(a10, Integer.valueOf(R.string.action_sort), null, 2, null);
            if (y10 != null && (v10 = s2.c.v(y10, Integer.valueOf(R.string.text_ok), null, null, 6, null)) != null) {
                Context context = getContext();
                s2.c b10 = b3.b.b(v10, null, context != null ? SupportExtentionKt.getStringList(context, R.array.user_sort) : null, null, wb.i.r(y3.a.f16424a.d(), D), false, new c(), 21, null);
                if (b10 == null) {
                    return;
                }
                b10.show();
            }
        }
    }

    public final void d0(androidx.work.a aVar) {
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
        i10.j(nVar.a()).i((androidx.fragment.app.e) context, this.f6974q);
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

    @Override // g6.e, androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        jc.l.f(menu, "menu");
        jc.l.f(menuInflater, "inflater");
        menuInflater.inflate(R.menu.user_list, menu);
        MenuItem findItem = menu.findItem(R.id.action_display_mode);
        if (findItem == null) {
            return;
        }
        findItem.setIcon(L().H() ? R.drawable.ic_view_module_white_24dp : R.drawable.ic_list_grey_600_24dp);
    }

    @Override // g6.e, androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_sort_toggle) {
            c0();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
