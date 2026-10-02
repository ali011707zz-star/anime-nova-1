package a5;

import a5.d;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import com.anslayer.R;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.ui.anime.characters.details.CharacterDetailsActivity;
import ic.l;
import io.wax911.support.util.InstanceUtil;
import java.util.List;
import jc.g;
import jc.m;
import jc.y;
import vb.i;
import vb.n;

/* compiled from: ActorAnimeCharacterBrowseFragment.kt */
/* loaded from: classes.dex */
public final class b extends p5.d<p4.c, r5.a, List<? extends p4.c>> {

    /* renamed from: u, reason: collision with root package name */
    public static final a f385u = new a(null);

    /* renamed from: q, reason: collision with root package name */
    public final int f386q = R.integer.single_list_size;

    /* renamed from: r, reason: collision with root package name */
    public final vb.e f387r = vb.f.a(e.f394f);

    /* renamed from: s, reason: collision with root package name */
    public final vb.e f388s = vb.f.a(new C0009b());

    /* renamed from: t, reason: collision with root package name */
    public final vb.e f389t = c0.a(this, y.b(a5.d.class), new d(new c(this)), new f());

    /* compiled from: ActorAnimeCharacterBrowseFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<b, Bundle> {

        /* compiled from: ActorAnimeCharacterBrowseFragment.kt */
        /* renamed from: a5.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0008a extends m implements l<Bundle, b> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0008a f390f = new C0008a();

            public C0008a() {
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
            super(C0008a.f390f);
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: ActorAnimeCharacterBrowseFragment.kt */
    /* renamed from: a5.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0009b extends m implements ic.a<r5.a> {
        public C0009b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(b.this.getContext());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f392f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment) {
            super(0);
            this.f392f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f392f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f393f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ic.a aVar) {
            super(0);
            this.f393f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f393f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: ActorAnimeCharacterBrowseFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<z4.g> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f394f = new e();

        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final z4.g invoke() {
            return new z4.g();
        }
    }

    /* compiled from: ActorAnimeCharacterBrowseFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<l0.b> {
        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = b.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new d.a(requireActivity, b.this);
        }
    }

    @Override // p5.d
    public int S() {
        return this.f386q;
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
        a5.d m02 = m0();
        i[] iVarArr = new i[2];
        iVarArr[0] = n.a("arg_json", com.github.salomonbrys.kotson.a.b(n.a("_limit", 30), n.a("_offset", Integer.valueOf(p().getCurrentOffset()))).toString());
        Bundle arguments = getArguments();
        iVarArr[1] = n.a("actor_id", arguments == null ? null : Integer.valueOf(arguments.getInt("actor_id")));
        m02.queryFor(m0.b.a(iVarArr), getContext());
    }

    @Override // n5.a
    /* renamed from: k0, reason: merged with bridge method [inline-methods] */
    public r5.a p() {
        return (r5.a) this.f388s.getValue();
    }

    @Override // p5.d
    /* renamed from: l0, reason: merged with bridge method [inline-methods] */
    public z4.g X() {
        return (z4.g) this.f387r.getValue();
    }

    @Override // n5.a
    public void m() {
        Z(R.string.empty_response);
    }

    public a5.d m0() {
        return (a5.d) this.f389t.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public void B(List<p4.c> list) {
        b0(list, R.string.empty_response);
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemClick(View view, s3.c<p4.c> cVar) {
        androidx.fragment.app.e activity;
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
        int id2 = view.getId();
        if (id2 != R.id.anime_container) {
            if (id2 == R.id.character_container && (activity = getActivity()) != null) {
                startActivity(CharacterDetailsActivity.f4162l.a(activity, cVar.b().d(), cVar.b().f()));
                return;
            }
            return;
        }
        androidx.fragment.app.e activity2 = getActivity();
        if (activity2 == null) {
            return;
        }
        p4.c b10 = cVar.b();
        startActivity(SeriesActivity.f4161l.a(activity2, b10.b(), b10.c(), b10.h(), b10.i()));
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemLongClick(View view, s3.c<p4.c> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
    }
}
