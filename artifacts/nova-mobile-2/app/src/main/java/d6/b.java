package d6;

import android.content.Context;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.lifecycle.z;
import androidx.work.a;
import com.anslayer.R;
import com.anslayer.data.ListManagementWorker;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import d2.f;
import d2.n;
import d2.u;
import d2.v;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.util.InstanceUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.g;
import jc.m;
import p4.e;
import vb.p;

/* compiled from: CharacterUserListFragment.kt */
/* loaded from: classes.dex */
public final class b extends f5.a {

    /* renamed from: w, reason: collision with root package name */
    public static final a f5663w = new a(null);

    /* renamed from: v, reason: collision with root package name */
    public final z<u> f5664v = new z() { // from class: d6.a
        @Override // androidx.lifecycle.z
        public final void B(Object obj) {
            b.t0(b.this, (u) obj);
        }
    };

    /* compiled from: CharacterUserListFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<b, Bundle> {

        /* compiled from: CharacterUserListFragment.kt */
        /* renamed from: d6.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0102a extends m implements l<Bundle, b> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0102a f5665f = new C0102a();

            public C0102a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final b invoke(Bundle bundle) {
                b bVar = new b();
                bVar.setArguments(bundle);
                return bVar;
            }
        }

        public a() {
            super(C0102a.f5665f);
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: CharacterUserListFragment.kt */
    /* renamed from: d6.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class C0103b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5666a;

        static {
            int[] iArr = new int[u.a.values().length];
            iArr[u.a.SUCCEEDED.ordinal()] = 1;
            iArr[u.a.FAILED.ordinal()] = 2;
            f5666a = iArr;
        }
    }

    /* compiled from: CharacterUserListFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements l<s2.c, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ActionMode f5668g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ActionMode actionMode) {
            super(1);
            this.f5668g = actionMode;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            b.this.r0(this.f5668g);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: CharacterUserListFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements l<s2.c, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ s3.c<e> f5670g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(s3.c<e> cVar) {
            super(1);
            this.f5670g = cVar;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            b.this.s0(this.f5670g.b().b());
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    public static final void t0(b bVar, u uVar) {
        jc.l.f(bVar, "this$0");
        u.a a10 = uVar == null ? null : uVar.a();
        int i10 = a10 == null ? -1 : C0103b.f5666a[a10.ordinal()];
        if (i10 == 1) {
            bVar.X().f();
            bVar.b();
        } else {
            if (i10 != 2) {
                bVar.toString();
                return;
            }
            Toast.makeText(bVar.getContext(), R.string.text_request_error, 0).show();
            ProgressLayout T = bVar.T();
            if (T == null) {
                return;
            }
            SupportExtentionKt.showLoadedContent(T);
        }
    }

    @Override // f5.a, p5.d
    public void Y(Bundle bundle) {
        F().setEnabled(false);
    }

    @Override // p5.a, android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        jc.l.f(actionMode, "mode");
        jc.l.f(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_delete) {
            androidx.fragment.app.e requireActivity = requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            s2.c.v(s2.c.p(s2.c.n(new s2.c(requireActivity, null, 2, null), null, "هل انت متأكد من حذف الشخصيات المحددة؟", null, 5, null), Integer.valueOf(R.string.Cancel), null, null, 6, null), Integer.valueOf(R.string.remove), null, new c(actionMode), 2, null).show();
        } else if (itemId == R.id.action_select_all) {
            X().v();
        }
        return super.onActionItemClicked(actionMode, menuItem);
    }

    @Override // p5.a, android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        jc.l.f(actionMode, "mode");
        jc.l.f(menu, "menu");
        actionMode.getMenuInflater().inflate(R.menu.action_menu, menu);
        return true;
    }

    @Override // f5.a, p5.a, androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        jc.l.f(menu, "menu");
        jc.l.f(menuInflater, "inflater");
        super.onCreateOptionsMenu(menu, menuInflater);
        MenuItem findItem = menu.findItem(R.id.action_sort);
        if (findItem == null) {
            return;
        }
        findItem.setVisible(true);
    }

    @Override // f5.a, p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemLongClick(View view, s3.c<e> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        s2.c.p(s2.c.v(s2.c.n(new s2.c(activity, null, 2, null), null, "ازالة " + cVar.b().d() + " من المفضلة", null, 5, null), null, "ازالة", new d(cVar), 1, null), Integer.valueOf(R.string.Cancel), null, null, 6, null).show();
    }

    @Override // p5.a, io.wax911.support.base.event.ActionModeListener
    public void onSelectionChanged(ActionMode actionMode, int i10) {
        if (actionMode == null) {
            return;
        }
        actionMode.setTitle(String.valueOf(i10));
    }

    public final void r0(ActionMode actionMode) {
        List<e> selectedItems = F().getSelectedItems();
        ArrayList arrayList = new ArrayList(wb.m.q(selectedItems, 10));
        Iterator<T> it2 = selectedItems.iterator();
        while (it2.hasNext()) {
            arrayList.add(String.valueOf(((e) it2.next()).b()));
        }
        a.C0058a g10 = new a.C0058a().g("anime_ids", e7.c.a(arrayList));
        jc.l.e(g10, "Builder()\n              …ype.seriesIds, seriesIds)");
        g10.g("arg_request_type", "REMOVE_FROM_CHARACTER_FAV");
        androidx.work.a a10 = g10.a();
        jc.l.e(a10, "dataBuilder.build()");
        u0(a10);
        actionMode.finish();
    }

    public final void s0(int i10) {
        a.C0058a g10 = new a.C0058a().g("anime_ids", String.valueOf(i10));
        jc.l.e(g10, "Builder()\n              …seriesIds, id.toString())");
        g10.g("arg_request_type", "REMOVE_FROM_CHARACTER_FAV");
        androidx.work.a a10 = g10.a();
        jc.l.e(a10, "dataBuilder.build()");
        u0(a10);
    }

    public final void u0(androidx.work.a aVar) {
        jc.l.f(aVar, "inputData");
        Context context = getContext();
        if (context == null) {
            return;
        }
        n b10 = new n.a(ListManagementWorker.class).g(aVar).b();
        jc.l.e(b10, "Builder(ListManagementWo…                 .build()");
        n nVar = b10;
        v i10 = v.i(context);
        i10.g("ListManagementWorker#Published0003", f.REPLACE, nVar);
        i10.j(nVar.a()).i((androidx.fragment.app.e) context, this.f5664v);
        ProgressLayout T = T();
        if (T == null) {
            return;
        }
        SupportExtentionKt.showContentLoading(T);
    }
}
