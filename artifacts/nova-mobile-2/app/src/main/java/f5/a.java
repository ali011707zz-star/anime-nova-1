package f5;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import com.anslayer.R;
import com.anslayer.ui.anime.characters.details.CharacterDetailsActivity;
import f5.c;
import ic.l;
import io.wax911.support.util.InstanceUtil;
import java.util.List;
import jc.g;
import jc.m;
import jc.y;
import vb.i;
import vb.n;

/* compiled from: BrowseAnimeCharacterFragment.kt */
/* loaded from: classes.dex */
public class a extends p5.d<p4.e, r5.a, List<? extends p4.e>> {

    /* renamed from: u, reason: collision with root package name */
    public static final C0120a f6429u = new C0120a(null);

    /* renamed from: q, reason: collision with root package name */
    public final int f6430q = R.integer.grid_list_x3;

    /* renamed from: r, reason: collision with root package name */
    public final vb.e f6431r = vb.f.a(e.f6438f);

    /* renamed from: s, reason: collision with root package name */
    public final vb.e f6432s = vb.f.a(new b());

    /* renamed from: t, reason: collision with root package name */
    public final vb.e f6433t = c0.a(this, y.b(f5.c.class), new d(new c(this)), new f());

    /* compiled from: BrowseAnimeCharacterFragment.kt */
    /* renamed from: f5.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0120a extends InstanceUtil<a, Bundle> {

        /* compiled from: BrowseAnimeCharacterFragment.kt */
        /* renamed from: f5.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0121a extends m implements l<Bundle, a> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0121a f6434f = new C0121a();

            public C0121a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final a invoke(Bundle bundle) {
                a aVar = new a();
                aVar.setArguments(bundle);
                return aVar;
            }
        }

        public C0120a() {
            super(C0121a.f6434f);
        }

        public /* synthetic */ C0120a(g gVar) {
            this();
        }
    }

    /* compiled from: BrowseAnimeCharacterFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<r5.a> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(a.this.getContext());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f6436f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment) {
            super(0);
            this.f6436f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f6436f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f6437f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ic.a aVar) {
            super(0);
            this.f6437f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f6437f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: BrowseAnimeCharacterFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<c5.c> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f6438f = new e();

        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final c5.c invoke() {
            return new c5.c(true);
        }
    }

    /* compiled from: BrowseAnimeCharacterFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<l0.b> {
        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = a.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new c.a(requireActivity, a.this);
        }
    }

    @Override // p5.d
    public int S() {
        return this.f6430q;
    }

    @Override // p5.d
    public void Y(Bundle bundle) {
    }

    @Override // p5.d
    public boolean a0(String str) {
        jc.l.f(str, "key");
        return false;
    }

    @Override // p5.d
    public int d0() {
        return R.string.action_retry;
    }

    @Override // n5.a
    public void e() {
        f5.c m02 = m0();
        i[] iVarArr = new i[6];
        iVarArr[0] = n.a("_limit", 30);
        iVarArr[1] = n.a("_offset", Integer.valueOf(p().getCurrentOffset()));
        Bundle arguments = getArguments();
        iVarArr[2] = n.a("character_name", arguments == null ? null : arguments.getString("character_name"));
        Bundle arguments2 = getArguments();
        iVarArr[3] = n.a("anime_id", arguments2 == null ? null : Long.valueOf(arguments2.getLong("anime_id")));
        iVarArr[4] = n.a("type", "actor");
        Bundle arguments3 = getArguments();
        iVarArr[5] = n.a("role", jc.l.a(arguments3 == null ? null : arguments3.getString("role"), "main") ? "Main" : "Supporting");
        i[] iVarArr2 = new i[2];
        iVarArr2[0] = n.a("arg_json", com.github.salomonbrys.kotson.a.b(iVarArr).toString());
        Bundle arguments4 = getArguments();
        iVarArr2[1] = n.a("list_type", arguments4 != null ? arguments4.getString("list_type") : null);
        m02.queryFor(m0.b.a(iVarArr2), getContext());
    }

    @Override // n5.a
    /* renamed from: k0, reason: merged with bridge method [inline-methods] */
    public r5.a p() {
        return (r5.a) this.f6432s.getValue();
    }

    @Override // p5.d
    /* renamed from: l0, reason: merged with bridge method [inline-methods] */
    public c5.c X() {
        return (c5.c) this.f6431r.getValue();
    }

    @Override // n5.a
    public void m() {
        Z(R.string.empty_response);
    }

    public f5.c m0() {
        return (f5.c) this.f6433t.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public void B(List<p4.e> list) {
        b0(list, R.string.empty_response);
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        jc.l.f(menu, "menu");
        jc.l.f(menuInflater, "inflater");
        super.onCreateOptionsMenu(menu, menuInflater);
        MenuItem findItem = menu.findItem(R.id.action_display_mode);
        if (findItem == null) {
            return;
        }
        findItem.setVisible(false);
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemClick(View view, s3.c<p4.e> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        startActivity(CharacterDetailsActivity.f4162l.a(activity, cVar.b().b(), cVar.b().d()));
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemLongClick(View view, s3.c<p4.e> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
    }
}
