package b6;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.e;
import b6.c;
import com.anslayer.R;
import com.anslayer.util.system.FragmentExtensionsKt;
import gc.f;
import ic.q;
import io.wax911.support.SupportExtentionKt;
import j4.b1;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import jc.l;
import jc.m;
import jc.o;
import jc.y;
import oc.g;
import qc.t;
import vb.p;
import wb.i;

/* compiled from: DownloadsFragment.kt */
/* loaded from: classes.dex */
public final class d extends Fragment implements c.b {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ g<Object>[] f3523h = {y.e(new o(d.class, "binding", "getBinding()Lcom/anslayer/databinding/FragmentDownloadsBinding;", 0))};

    /* renamed from: f, reason: collision with root package name */
    public b6.c f3524f;

    /* renamed from: g, reason: collision with root package name */
    public final kc.a f3525g = FragmentExtensionsKt.a(this);

    /* compiled from: Comparisons.kt */
    /* loaded from: classes.dex */
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return yb.a.a(Long.valueOf(((File) t11).lastModified()), Long.valueOf(((File) t10).lastModified()));
        }
    }

    /* compiled from: DownloadsFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements q<s2.c, Integer, CharSequence, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ b6.a f3527g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(b6.a aVar) {
            super(3);
            this.f3527g = aVar;
        }

        public final void a(s2.c cVar, int i10, CharSequence charSequence) {
            l.f(cVar, "$noName_0");
            l.f(charSequence, "text");
            if (i10 == 0) {
                d.this.M(this.f3527g);
            } else {
                d.this.O(this.f3527g);
            }
        }

        @Override // ic.q
        public /* bridge */ /* synthetic */ p i(s2.c cVar, Integer num, CharSequence charSequence) {
            a(cVar, num.intValue(), charSequence);
            return p.f15031a;
        }
    }

    /* compiled from: DownloadsFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.l<s2.c, p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ b6.a f3528f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ b6.c f3529g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d f3530h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ e f3531i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(b6.a aVar, b6.c cVar, d dVar, e eVar) {
            super(1);
            this.f3528f = aVar;
            this.f3529g = cVar;
            this.f3530h = dVar;
            this.f3531i = eVar;
        }

        public final void a(s2.c cVar) {
            l.f(cVar, "it");
            try {
                new File(this.f3528f.b()).delete();
                this.f3529g.j(this.f3528f);
                this.f3529g.notifyDataSetChanged();
                if (this.f3529g.f().isEmpty()) {
                    this.f3530h.P();
                }
            } catch (Exception unused) {
                Toast.makeText(this.f3531i, "حدث خطأ اثناء مسح الملف", 0).show();
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    public final b1 H() {
        return (b1) this.f3525g.f(this, f3523h[0]);
    }

    public final List<File> I(File file) {
        File[] listFiles;
        List<File> arrayList = new ArrayList<>();
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            arrayList = i.A(listFiles);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (l.a(f.a((File) obj), "mp4")) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList.size() > 1) {
                wb.p.s(arrayList, new a());
            }
        }
        return arrayList;
    }

    public final boolean J() {
        if (Build.VERSION.SDK_INT < 23 || requireActivity().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        e0.a.t(requireActivity(), new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        return false;
    }

    public final void K() {
        b6.c cVar = this.f3524f;
        if (cVar == null) {
            return;
        }
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath());
        ArrayList arrayList = new ArrayList();
        List<File> I = I(file);
        if (file.exists()) {
            for (File file2 : I) {
                String name = file2.getName();
                l.e(name, "file.name");
                if (t.q(name, ".mp4", false, 2, null)) {
                    String b10 = f.b(file2);
                    String path = file2.getPath();
                    l.e(path, "file.path");
                    arrayList.add(new b6.a(b10, path));
                }
            }
        }
        cVar.k(arrayList);
        cVar.notifyDataSetChanged();
        P();
    }

    public final void L() {
        try {
            startActivity(new Intent("android.intent.action.VIEW_DOWNLOADS"));
        } catch (Exception unused) {
        }
    }

    public final void M(b6.a aVar) {
        File file = new File(aVar.b());
        Context requireContext = requireContext();
        l.e(requireContext, "requireContext()");
        Uri a10 = j7.a.a(file, requireContext);
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(a10, "video/mp4");
            intent.addFlags(1);
            startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public final void N(b1 b1Var) {
        this.f3525g.a(this, f3523h[0], b1Var);
    }

    public final void O(b6.a aVar) {
        b6.c cVar;
        e activity = getActivity();
        if (activity == null || (cVar = this.f3524f) == null) {
            return;
        }
        s2.c.v(s2.c.p(s2.c.n(s2.c.y(new s2.c(activity, null, 2, null), Integer.valueOf(R.string.delete), null, 2, null), null, aVar.a(), null, 5, null), Integer.valueOf(R.string.text_cancel), null, null, 6, null), Integer.valueOf(R.string.Ok), null, new c(aVar, cVar, this, activity), 2, null).show();
    }

    public final void P() {
        b6.c cVar = this.f3524f;
        List<b6.a> f10 = cVar == null ? null : cVar.f();
        if (f10 == null || f10.isEmpty()) {
            TextView textView = H().f8157b;
            l.e(textView, "binding.emptyText");
            SupportExtentionKt.visible(textView);
        } else {
            TextView textView2 = H().f8157b;
            l.e(textView2, "binding.emptyText");
            SupportExtentionKt.gone(textView2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        l.f(menu, "menu");
        l.f(menuInflater, "inflater");
        menuInflater.inflate(R.menu.downloads, menu);
        MenuItem findItem = menu.findItem(R.id.action_search);
        if (findItem != null) {
            findItem.setVisible(false);
        }
        MenuItem findItem2 = menu.findItem(R.id.action_display_mode);
        if (findItem2 == null) {
            return;
        }
        findItem2.setVisible(false);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.f(layoutInflater, "inflater");
        b1 c10 = b1.c(layoutInflater);
        l.e(c10, "inflate(inflater)");
        N(c10);
        return H().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f3524f = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.download_action) {
            L();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        l.f(strArr, "permissions");
        l.f(iArr, "grantResults");
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (iArr[0] == 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Permission: ");
            sb2.append(strArr[0]);
            sb2.append("was ");
            sb2.append(iArr[0]);
            Toast.makeText(getActivity(), "الان يمكنك التحميل", 0).show();
            return;
        }
        Toast.makeText(getActivity(), "لا يمكنك القيام بهذه العمليه الا بعد الموافقه", 0).show();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        K();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        l.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f3524f = new b6.c(this, new ArrayList());
        H().f8158c.setHasFixedSize(true);
        H().f8158c.setAdapter(this.f3524f);
    }

    @Override // b6.c.b
    public void z(b6.a aVar) {
        l.f(aVar, "download");
        e requireActivity = requireActivity();
        l.e(requireActivity, "requireActivity()");
        b3.a.f(new s2.c(requireActivity, null, 2, null), Integer.valueOf(R.array.download), null, null, false, new b(aVar), 14, null).show();
    }
}
