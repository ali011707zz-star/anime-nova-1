package g5;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import com.anslayer.R;
import g5.c;
import ic.l;
import io.wax911.support.util.InstanceUtil;
import java.util.List;
import jc.g;
import jc.m;
import jc.y;
import p4.q;
import vb.i;
import vb.n;

/* compiled from: BrowseStaffFragment.kt */
/* loaded from: classes.dex */
public final class a extends p5.d<q, r5.a, List<? extends q>> {

    /* renamed from: u, reason: collision with root package name */
    public static final C0127a f6909u = new C0127a(null);

    /* renamed from: q, reason: collision with root package name */
    public final int f6910q = R.integer.grid_list_x3;

    /* renamed from: r, reason: collision with root package name */
    public final vb.e f6911r = vb.f.a(e.f6918f);

    /* renamed from: s, reason: collision with root package name */
    public final vb.e f6912s = vb.f.a(new b());

    /* renamed from: t, reason: collision with root package name */
    public final vb.e f6913t = c0.a(this, y.b(g5.c.class), new d(new c(this)), new f());

    /* compiled from: BrowseStaffFragment.kt */
    /* renamed from: g5.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0127a extends InstanceUtil<a, Bundle> {

        /* compiled from: BrowseStaffFragment.kt */
        /* renamed from: g5.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0128a extends m implements l<Bundle, a> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0128a f6914f = new C0128a();

            public C0128a() {
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

        public C0127a() {
            super(C0128a.f6914f);
        }

        public /* synthetic */ C0127a(g gVar) {
            this();
        }
    }

    /* compiled from: BrowseStaffFragment.kt */
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
        public final /* synthetic */ Fragment f6916f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment) {
            super(0);
            this.f6916f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f6916f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f6917f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ic.a aVar) {
            super(0);
            this.f6917f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f6917f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: BrowseStaffFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<c5.l> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f6918f = new e();

        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final c5.l invoke() {
            return new c5.l(true);
        }
    }

    /* compiled from: BrowseStaffFragment.kt */
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
        return this.f6910q;
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
        g5.c m02 = m0();
        i[] iVarArr = new i[4];
        iVarArr[0] = n.a("_limit", 30);
        iVarArr[1] = n.a("_offset", Integer.valueOf(p().getCurrentOffset()));
        Bundle arguments = getArguments();
        iVarArr[2] = n.a("anime_id", arguments == null ? null : Long.valueOf(arguments.getLong("anime_id")));
        iVarArr[3] = n.a("type", "staff");
        m02.queryFor(m0.b.a(n.a("arg_json", com.github.salomonbrys.kotson.a.b(iVarArr).toString())), getContext());
    }

    @Override // n5.a
    /* renamed from: k0, reason: merged with bridge method [inline-methods] */
    public r5.a p() {
        return (r5.a) this.f6912s.getValue();
    }

    @Override // p5.d
    /* renamed from: l0, reason: merged with bridge method [inline-methods] */
    public c5.l X() {
        return (c5.l) this.f6911r.getValue();
    }

    @Override // n5.a
    public void m() {
        Z(R.string.empty_response);
    }

    public g5.c m0() {
        return (g5.c) this.f6913t.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public void B(List<q> list) {
        b0(list, R.string.empty_response);
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemClick(View view, s3.c<q> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemLongClick(View view, s3.c<q> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
    }
}
