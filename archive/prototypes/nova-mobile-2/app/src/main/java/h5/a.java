package h5;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.j;
import com.anslayer.R;
import h5.a;
import ic.p;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportViewHolder;
import java.util.ArrayList;
import java.util.List;
import rc.g1;
import rc.l0;
import rc.n2;
import rc.q0;
import wb.s;
import wb.t;

/* compiled from: EpisodeAdapter.kt */
/* loaded from: classes.dex */
public final class a extends n5.d<p4.k> {

    /* renamed from: m, reason: collision with root package name */
    public List<p4.k> f7268m;

    /* compiled from: EpisodeAdapter.kt */
    /* renamed from: h5.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0139a extends j.b {

        /* renamed from: a, reason: collision with root package name */
        public final List<p4.k> f7269a;

        /* renamed from: b, reason: collision with root package name */
        public final List<p4.k> f7270b;

        public C0139a(List<p4.k> list, List<p4.k> list2) {
            jc.l.f(list, "oldItems");
            jc.l.f(list2, "newItems");
            this.f7269a = list;
            this.f7270b = list2;
        }

        @Override // androidx.recyclerview.widget.j.b
        public boolean a(int i10, int i11) {
            return jc.l.a(this.f7269a.get(i10).n(), this.f7270b.get(i11).n());
        }

        @Override // androidx.recyclerview.widget.j.b
        public boolean b(int i10, int i11) {
            return this.f7269a.get(i10).e() == this.f7270b.get(i11).e();
        }

        @Override // androidx.recyclerview.widget.j.b
        public Object c(int i10, int i11) {
            return this.f7270b.get(i11);
        }

        @Override // androidx.recyclerview.widget.j.b
        public int d() {
            return this.f7270b.size();
        }

        @Override // androidx.recyclerview.widget.j.b
        public int e() {
            return this.f7269a.size();
        }
    }

    /* compiled from: EpisodeAdapter.kt */
    /* loaded from: classes.dex */
    public static final class b extends SupportViewHolder<p4.k> {

        /* renamed from: f, reason: collision with root package name */
        public final j4.i f7271f;

        /* renamed from: g, reason: collision with root package name */
        public final a f7272g;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public b(j4.i iVar, a aVar) {
            super(r0);
            jc.l.f(iVar, "binding");
            jc.l.f(aVar, "adapter");
            FrameLayout b10 = iVar.b();
            jc.l.e(b10, "binding.root");
            this.f7271f = iVar;
            this.f7272g = aVar;
            iVar.f8428f.setOnClickListener(new View.OnClickListener() { // from class: h5.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.b.e(a.b.this, view);
                }
            });
            iVar.f8424b.setOnClickListener(new View.OnClickListener() { // from class: h5.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.b.f(a.b.this, view);
                }
            });
            iVar.f8425c.setOnClickListener(new View.OnClickListener() { // from class: h5.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.b.g(a.b.this, view);
                }
            });
            iVar.f8426d.setOnClickListener(new View.OnClickListener() { // from class: h5.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.b.h(a.b.this, view);
                }
            });
        }

        public static final void e(b bVar, View view) {
            jc.l.f(bVar, "this$0");
            p4.k i10 = bVar.i(bVar.getBindingAdapterPosition());
            if (i10 == null) {
                return;
            }
            jc.l.e(view, "it");
            bVar.performClick(i10, view);
        }

        public static final void f(b bVar, View view) {
            jc.l.f(bVar, "this$0");
            p4.k i10 = bVar.i(bVar.getBindingAdapterPosition());
            if (i10 == null) {
                return;
            }
            jc.l.e(view, "it");
            bVar.performClick(i10, view);
        }

        public static final void g(b bVar, View view) {
            jc.l.f(bVar, "this$0");
            p4.k i10 = bVar.i(bVar.getBindingAdapterPosition());
            if (i10 == null) {
                return;
            }
            if (i10.s()) {
                jc.l.e(view, "it");
                bVar.performClick(i10, view);
            } else {
                k7.b.q(bVar.getContext(), R.string.episode_comment_disabled, 0, 2, null);
            }
        }

        public static final void h(b bVar, View view) {
            jc.l.f(bVar, "this$0");
            p4.k i10 = bVar.i(bVar.getBindingAdapterPosition());
            if (i10 == null) {
                return;
            }
            jc.l.e(view, "it");
            bVar.performClick(i10, view);
        }

        public final p4.k i(int i10) {
            if (i10 < 0 || i10 >= this.f7272g.getItemCount()) {
                return null;
            }
            return (p4.k) this.f7272g.h().get(i10);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(p4.k kVar) {
            jc.l.f(kVar, "model");
            this.f7271f.f8427e.setText(h7.b.a(kVar));
            AppCompatTextView appCompatTextView = this.f7271f.f8426d;
            jc.l.e(appCompatTextView, "binding.episodeFiller");
            appCompatTextView.setVisibility(h7.b.b(kVar) ? 0 : 8);
            if (kVar.s()) {
                this.f7271f.f8425c.setImageResource(R.drawable.ic_chat_grey_600_18dp);
            } else {
                this.f7271f.f8425c.setImageResource(R.drawable.ic_baseline_speaker_notes_off_18);
            }
            k(kVar);
        }

        public final void k(p4.k kVar) {
            Drawable compatDrawable;
            jc.l.f(kVar, "model");
            if (h7.b.c(kVar)) {
                compatDrawable = SupportExtentionKt.getCompatDrawable(getContext(), R.drawable.ic_remove_red_eye_grey_600_18dp, R.color.colorAccentLight);
            } else {
                compatDrawable = SupportExtentionKt.getCompatDrawable(getContext(), R.drawable.ic_remove_red_eye_grey_600_18dp, R.color.colorTextSubtitleDark);
            }
            this.f7271f.f8428f.setImageDrawable(compatDrawable);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            jc.l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
        }
    }

    /* compiled from: EpisodeAdapter.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodeAdapter", f = "EpisodeAdapter.kt", l = {37, 40}, m = "submitList")
    /* loaded from: classes.dex */
    public static final class c extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f7273f;

        /* renamed from: g, reason: collision with root package name */
        public Object f7274g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f7275h;

        /* renamed from: j, reason: collision with root package name */
        public int f7277j;

        public c(ac.d<? super c> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f7275h = obj;
            this.f7277j |= Integer.MIN_VALUE;
            return a.this.A(null, this);
        }
    }

    /* compiled from: EpisodeAdapter.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodeAdapter$submitList$2", f = "EpisodeAdapter.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7278f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ j.e f7279g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ a f7280h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ List<p4.k> f7281i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(j.e eVar, a aVar, List<p4.k> list, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f7279g = eVar;
            this.f7280h = aVar;
            this.f7281i = list;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f7279g, this.f7280h, this.f7281i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f7278f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            this.f7279g.d(this.f7280h);
            SupportExtentionKt.replaceWith(this.f7280h.h(), this.f7281i);
            return vb.p.f15031a;
        }
    }

    /* compiled from: EpisodeAdapter.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodeAdapter$submitList$result$1", f = "EpisodeAdapter.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements p<q0, ac.d<? super j.e>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7282f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ List<p4.k> f7284h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(List<p4.k> list, ac.d<? super e> dVar) {
            super(2, dVar);
            this.f7284h = list;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new e(this.f7284h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super j.e> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f7282f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            return androidx.recyclerview.widget.j.b(new C0139a(a.this.h(), this.f7284h));
        }
    }

    public a() {
        setHasStableIds(true);
        this.f7268m = new ArrayList();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0077 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object A(List<p4.k> list, ac.d<? super vb.p> dVar) {
        c cVar;
        Object d10;
        int i10;
        a aVar;
        n2 c10;
        d dVar2;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i11 = cVar.f7277j;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                cVar.f7277j = i11 - Integer.MIN_VALUE;
                Object obj = cVar.f7275h;
                d10 = bc.c.d();
                i10 = cVar.f7277j;
                if (i10 != 0) {
                    vb.k.b(obj);
                    l0 a10 = g1.a();
                    e eVar = new e(list, null);
                    cVar.f7273f = this;
                    cVar.f7274g = list;
                    cVar.f7277j = 1;
                    obj = rc.i.g(a10, eVar, cVar);
                    if (obj == d10) {
                        return d10;
                    }
                    aVar = this;
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                        return vb.p.f15031a;
                    }
                    list = (List) cVar.f7274g;
                    aVar = (a) cVar.f7273f;
                    vb.k.b(obj);
                }
                jc.l.e(obj, "suspend fun submitList(n…(newData)\n        }\n    }");
                c10 = g1.c();
                dVar2 = new d((j.e) obj, aVar, list, null);
                cVar.f7273f = null;
                cVar.f7274g = null;
                cVar.f7277j = 2;
                if (rc.i.g(c10, dVar2, cVar) == d10) {
                    return d10;
                }
                return vb.p.f15031a;
            }
        }
        cVar = new c(dVar);
        Object obj2 = cVar.f7275h;
        d10 = bc.c.d();
        i10 = cVar.f7277j;
        if (i10 != 0) {
        }
        jc.l.e(obj2, "suspend fun submitList(n…(newData)\n        }\n    }");
        c10 = g1.c();
        dVar2 = new d((j.e) obj2, aVar, list, null);
        cVar.f7273f = null;
        cVar.f7274g = null;
        cVar.f7277j = 2;
        if (rc.i.g(c10, dVar2, cVar) == d10) {
        }
        return vb.p.f15031a;
    }

    @Override // n5.d, androidx.recyclerview.widget.RecyclerView.h
    public long getItemId(int i10) {
        return h().get(i10).e();
    }

    public final List<p4.k> v() {
        return this.f7268m;
    }

    public final void w(List<p4.k> list) {
        if (list != null) {
            this.f7268m = t.R(list);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(SupportViewHolder<p4.k> supportViewHolder, int i10, List<Object> list) {
        jc.l.f(supportViewHolder, "holder");
        jc.l.f(list, "payloads");
        if (!list.isEmpty()) {
            Object obj = list.get(0);
            p4.k kVar = obj instanceof p4.k ? (p4.k) obj : null;
            if (kVar == null) {
                return;
            }
            ((b) supportViewHolder).k(kVar);
            return;
        }
        onBindViewHolder(supportViewHolder, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<p4.k> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        Context context = viewGroup.getContext();
        jc.l.e(context, "parent.context");
        j4.i c10 = j4.i.c(SupportExtentionKt.getLayoutInflater(context), viewGroup, false);
        jc.l.e(c10, "inflate(inflater, parent, false)");
        return new b(c10, this);
    }

    public final void z() {
        if (!h().isEmpty()) {
            s.v(h());
            notifyDataSetChanged();
        }
    }
}
