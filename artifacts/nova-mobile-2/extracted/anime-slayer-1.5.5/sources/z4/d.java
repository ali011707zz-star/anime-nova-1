package z4;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.anslayer.R;
import com.anslayer.ui.actor.more.ActorAnimeCharacterBrowseActivity;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.ui.anime.characters.details.CharacterDetailsActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.google.android.material.button.MaterialButton;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.event.ItemClickListener;
import io.wax911.support.util.InstanceUtil;
import j4.a3;
import jc.m;
import jc.o;
import jc.y;
import z4.f;

/* compiled from: ActorDetailsFragment.kt */
/* loaded from: classes.dex */
public final class d extends p5.a<p4.b, r5.a, p4.b> {

    /* renamed from: j, reason: collision with root package name */
    public final kc.a f17301j = FragmentExtensionsKt.a(this);

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f17302k = vb.f.a(new c());

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f17303l = c0.a(this, y.b(z4.f.class), new e(new C0439d(this)), new f());

    /* renamed from: m, reason: collision with root package name */
    public g f17304m;

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f17300o = {y.e(new o(d.class, "binding", "getBinding()Lcom/anslayer/databinding/VoiceActorDetailsFragmentBinding;", 0))};

    /* renamed from: n, reason: collision with root package name */
    public static final a f17299n = new a(null);

    /* compiled from: ActorDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<d, Bundle> {

        /* compiled from: ActorDetailsFragment.kt */
        /* renamed from: z4.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0438a extends m implements l<Bundle, d> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0438a f17305f = new C0438a();

            public C0438a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final d invoke(Bundle bundle) {
                d dVar = new d();
                dVar.setArguments(bundle);
                return dVar;
            }
        }

        public a() {
            super(C0438a.f17305f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: ActorDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class b implements ItemClickListener<p4.c> {
        public b() {
        }

        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemClick(View view, s3.c<p4.c> cVar) {
            androidx.fragment.app.e activity;
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
            int id2 = view.getId();
            if (id2 != R.id.anime_container) {
                if (id2 == R.id.character_container && (activity = d.this.getActivity()) != null) {
                    d.this.startActivity(CharacterDetailsActivity.f4162l.a(activity, cVar.b().d(), cVar.b().f()));
                    return;
                }
                return;
            }
            androidx.fragment.app.e activity2 = d.this.getActivity();
            if (activity2 == null) {
                return;
            }
            p4.c b10 = cVar.b();
            d.this.startActivity(SeriesActivity.f4161l.a(activity2, b10.b(), b10.c(), b10.h(), b10.i()));
        }

        @Override // io.wax911.support.base.event.ItemClickListener
        public void onItemLongClick(View view, s3.c<p4.c> cVar) {
            jc.l.f(view, "target");
            jc.l.f(cVar, "data");
        }
    }

    /* compiled from: ActorDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<r5.a> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(d.this.getContext());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* renamed from: z4.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0439d extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f17308f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0439d(Fragment fragment) {
            super(0);
            this.f17308f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f17308f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f17309f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ic.a aVar) {
            super(0);
            this.f17309f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f17309f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: ActorDetailsFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<l0.b> {
        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = d.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new f.a(requireActivity, d.this);
        }
    }

    public static final void S(d dVar, View view) {
        jc.l.f(dVar, "this$0");
        ProgressLayout progressLayout = dVar.O().f8147h;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showContentLoading(progressLayout);
        dVar.e();
    }

    public static final void U(d dVar, p4.b bVar, View view) {
        jc.l.f(dVar, "this$0");
        jc.l.f(bVar, "$model");
        androidx.fragment.app.e activity = dVar.getActivity();
        if (activity == null) {
            return;
        }
        Intent intent = new Intent(activity, (Class<?>) ActorAnimeCharacterBrowseActivity.class);
        intent.putExtra("arg_title", bVar.a().b());
        Bundle arguments = dVar.getArguments();
        intent.putExtra("actor_id", arguments == null ? null : Integer.valueOf(arguments.getInt("actor_id")));
        dVar.startActivity(intent);
    }

    public final a3 O() {
        return (a3) this.f17301j.f(this, f17300o[0]);
    }

    @Override // n5.a
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public r5.a p() {
        return (r5.a) this.f17302k.getValue();
    }

    public z4.f Q() {
        return (z4.f) this.f17303l.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: R, reason: merged with bridge method [inline-methods] */
    public void B(p4.b bVar) {
        if (bVar == null) {
            k7.b.m(getContext(), O().f8147h, R.string.empty_response, R.string.action_retry, new View.OnClickListener() { // from class: z4.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.S(d.this, view);
                }
            });
        } else {
            m();
        }
    }

    public final void T(a3 a3Var) {
        this.f17301j.a(this, f17300o[0], a3Var);
    }

    @Override // n5.a
    public void e() {
        z4.f Q = Q();
        Bundle bundle = new Bundle();
        bundle.putAll(getArguments());
        Q.queryFor(bundle, getContext());
    }

    @Override // n5.a
    public void m() {
        View view;
        final p4.b modelData = Q().getModelData();
        if (modelData == null || (view = getView()) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            O().f8141b.setClipToOutline(true);
        }
        d4.a.a(view.getContext()).m(O().f8141b);
        d4.a.a(view.getContext()).s(modelData.a().a()).g(r7.j.f12975d).G0().T(android.R.color.transparent).u0(O().f8141b);
        O().f8142c.setText(modelData.a().b());
        O().f8143d.setText(modelData.a().c());
        TextView textView = O().f8143d;
        jc.l.e(textView, "binding.actorNation");
        textView.setVisibility(modelData.a().c().length() > 0 ? 0 : 8);
        g gVar = this.f17304m;
        if (gVar != null) {
            gVar.onItemsInserted(modelData.b());
        }
        MaterialButton materialButton = O().f8146g;
        jc.l.e(materialButton, "binding.more");
        materialButton.setVisibility(modelData.b().size() == 10 ? 0 : 8);
        O().f8146g.setOnClickListener(new View.OnClickListener() { // from class: z4.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                d.U(d.this, modelData, view2);
            }
        });
        ProgressLayout progressLayout = O().f8147h;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showLoadedContent(progressLayout);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        a3 c10 = a3.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        T(c10);
        ProgressLayout b10 = O().b();
        jc.l.e(b10, "binding.root");
        return b10;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f17304m = null;
        super.onDestroyView();
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ProgressLayout progressLayout = O().f8147h;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showContentLoading(progressLayout);
        if (Q().hasModelData()) {
            m();
        } else {
            e();
        }
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        g gVar = new g();
        gVar.p(new b());
        this.f17304m = gVar;
        O().f8144e.setAdapter(this.f17304m);
        O().f8144e.setLayoutManager(new StaggeredGridLayoutManager(view.getContext().getResources().getInteger(R.integer.single_list_size), 1));
        O().f8144e.setHasFixedSize(true);
    }
}
