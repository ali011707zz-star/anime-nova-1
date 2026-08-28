package com.anslayer.ui.setting;

import a7.n;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.r;
import androidx.lifecycle.z;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.j;
import androidx.recyclerview.widget.o;
import cc.k;
import com.anslayer.App;
import com.anslayer.R;
import com.anslayer.ui.setting.WordsBlockingActivity;
import io.wax911.support.SupportExtentionKt;
import j4.h3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.l;
import jc.m;
import jc.y;
import org.apache.http.impl.auth.NTLMEngineImpl;
import qc.t;
import qc.u;
import rc.q0;
import vb.p;

/* compiled from: WordsBlockingActivity.kt */
/* loaded from: classes.dex */
public final class WordsBlockingActivity extends o5.a<h3> {

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f4350l = new k0(y.b(n.class), new h(this), new g(this));

    /* renamed from: m, reason: collision with root package name */
    public b f4351m;

    /* compiled from: WordsBlockingActivity.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<k4.a> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(k4.a aVar, k4.a aVar2) {
            l.f(aVar, "oldItem");
            l.f(aVar2, "newItem");
            return l.a(aVar, aVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(k4.a aVar, k4.a aVar2) {
            l.f(aVar, "oldItem");
            l.f(aVar2, "newItem");
            return aVar.a() == aVar2.a();
        }
    }

    /* compiled from: WordsBlockingActivity.kt */
    /* loaded from: classes.dex */
    public final class b extends o<k4.a, RecyclerView.e0> {

        /* renamed from: c, reason: collision with root package name */
        public final Context f4352c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ WordsBlockingActivity f4353d;

        /* compiled from: WordsBlockingActivity.kt */
        /* loaded from: classes.dex */
        public static final class a implements d.a {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ WordsBlockingActivity f4355b;

            /* compiled from: WordsBlockingActivity.kt */
            /* renamed from: com.anslayer.ui.setting.WordsBlockingActivity$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0085a extends m implements ic.l<s2.c, p> {

                /* renamed from: f, reason: collision with root package name */
                public final /* synthetic */ WordsBlockingActivity f4356f;

                /* renamed from: g, reason: collision with root package name */
                public final /* synthetic */ k4.a f4357g;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0085a(WordsBlockingActivity wordsBlockingActivity, k4.a aVar) {
                    super(1);
                    this.f4356f = wordsBlockingActivity;
                    this.f4357g = aVar;
                }

                public final void a(s2.c cVar) {
                    l.f(cVar, "it");
                    this.f4356f.r().d(this.f4357g);
                }

                @Override // ic.l
                public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
                    a(cVar);
                    return p.f15031a;
                }
            }

            public a(WordsBlockingActivity wordsBlockingActivity) {
                this.f4355b = wordsBlockingActivity;
            }

            @Override // com.anslayer.ui.setting.WordsBlockingActivity.d.a
            public void a(k4.a aVar) {
                l.f(aVar, "word");
                s2.c.v(s2.c.p(s2.c.n(new s2.c(b.this.i(), null, 2, null), null, "هل انت متأكد من مسح " + aVar.b() + (char) 1567, null, 5, null), null, "لا", null, 5, null), null, "مسح", new C0085a(this.f4355b, aVar), 1, null).show();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(WordsBlockingActivity wordsBlockingActivity, Context context) {
            super(new a());
            l.f(wordsBlockingActivity, "this$0");
            l.f(context, "context");
            this.f4353d = wordsBlockingActivity;
            this.f4352c = context;
        }

        public final Context i() {
            return this.f4352c;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public void onBindViewHolder(RecyclerView.e0 e0Var, int i10) {
            l.f(e0Var, "holder");
            d dVar = (d) e0Var.itemView;
            k4.a f10 = f(i10);
            l.e(f10, "item");
            dVar.setData(f10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public RecyclerView.e0 onCreateViewHolder(ViewGroup viewGroup, int i10) {
            l.f(viewGroup, "parent");
            d dVar = new d(this.f4352c);
            dVar.setDelegate(new a(this.f4353d));
            dVar.setLayoutParams(new RecyclerView.q(-1, -2));
            return new c(dVar);
        }
    }

    /* compiled from: WordsBlockingActivity.kt */
    /* loaded from: classes.dex */
    public static final class c extends RecyclerView.e0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(view);
            l.f(view, "view");
        }
    }

    /* compiled from: WordsBlockingActivity.kt */
    /* loaded from: classes.dex */
    public static final class d extends FrameLayout {

        /* renamed from: f, reason: collision with root package name */
        public final TextView f4358f;

        /* renamed from: g, reason: collision with root package name */
        public k4.a f4359g;

        /* renamed from: h, reason: collision with root package name */
        public a f4360h;

        /* compiled from: WordsBlockingActivity.kt */
        /* loaded from: classes.dex */
        public interface a {
            void a(k4.a aVar);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context) {
            super(context);
            l.f(context, "context");
            setBackground(SupportExtentionKt.getDrawableFromAttr(context, R.attr.selectableItemBackground));
            TextView textView = new TextView(context);
            textView.setTextColor(SupportExtentionKt.getColorFromAttr(context, android.R.attr.textColorPrimary));
            textView.setTextSize(16.0f);
            textView.setTypeface(g0.h.g(context, R.font.roboto_medium));
            textView.setMaxLines(1);
            textView.setSingleLine(true);
            textView.setLines(1);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setPadding(k7.b.g(12), 0, k7.b.g(12), 0);
            this.f4358f = textView;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 16;
            addView(textView, layoutParams);
            setOnClickListener(new View.OnClickListener() { // from class: a7.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WordsBlockingActivity.d.b(WordsBlockingActivity.d.this, view);
                }
            });
        }

        public static final void b(d dVar, View view) {
            a aVar;
            l.f(dVar, "this$0");
            k4.a aVar2 = dVar.f4359g;
            if (aVar2 == null || (aVar = dVar.f4360h) == null) {
                return;
            }
            aVar.a(aVar2);
        }

        public final a getDelegate() {
            return this.f4360h;
        }

        public final TextView getTextview() {
            return this.f4358f;
        }

        public final k4.a getWord() {
            return this.f4359g;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i10, int i11) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i10), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(k7.b.g(48), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
        }

        public final void setData(k4.a aVar) {
            l.f(aVar, "word");
            this.f4359g = aVar;
            this.f4358f.setText(aVar.b());
        }

        public final void setDelegate(a aVar) {
            this.f4360h = aVar;
        }

        public final void setWord(k4.a aVar) {
            this.f4359g = aVar;
        }
    }

    /* compiled from: WordsBlockingActivity.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.p<s2.c, CharSequence, p> {

        /* compiled from: WordsBlockingActivity.kt */
        @cc.f(c = "com.anslayer.ui.setting.WordsBlockingActivity$onCreate$3$1$1", f = "WordsBlockingActivity.kt", l = {108}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements ic.p<q0, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f4362f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ List<String> f4363g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ WordsBlockingActivity f4364h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ s2.c f4365i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(List<String> list, WordsBlockingActivity wordsBlockingActivity, s2.c cVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f4363g = list;
                this.f4364h = wordsBlockingActivity;
                this.f4365i = cVar;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f4363g, this.f4364h, this.f4365i, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f4362f;
                if (i10 == 0) {
                    vb.k.b(obj);
                    ArrayList arrayList = new ArrayList();
                    for (String str : this.f4363g) {
                        if (!t.s(str)) {
                            arrayList.add(new k4.a(str));
                        }
                    }
                    b4.b b10 = this.f4364h.r().b();
                    this.f4362f = 1;
                    if (b10.c(arrayList, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                this.f4365i.dismiss();
                return p.f15031a;
            }
        }

        public e() {
            super(2);
        }

        public final void a(s2.c cVar, CharSequence charSequence) {
            l.f(cVar, "materialDialog");
            l.f(charSequence, "charSequence");
            rc.k.d(r.a(WordsBlockingActivity.this), null, null, new a(u.d0(charSequence.toString(), new String[]{","}, false, 0, 6, null), WordsBlockingActivity.this, cVar, null), 3, null);
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar, CharSequence charSequence) {
            a(cVar, charSequence);
            return p.f15031a;
        }
    }

    /* compiled from: WordsBlockingActivity.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.l<s2.c, p> {
        public f() {
            super(1);
        }

        public final void a(s2.c cVar) {
            l.f(cVar, "it");
            WordsBlockingActivity.this.r().a();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<l0.b> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4367f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(ComponentActivity componentActivity) {
            super(0);
            this.f4367f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return this.f4367f.getDefaultViewModelProviderFactory();
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4368f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(ComponentActivity componentActivity) {
            super(0);
            this.f4368f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = this.f4368f.getViewModelStore();
            l.e(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    public static final void s(WordsBlockingActivity wordsBlockingActivity, View view) {
        l.f(wordsBlockingActivity, "this$0");
        wordsBlockingActivity.onBackPressed();
    }

    public static final void t(WordsBlockingActivity wordsBlockingActivity, List list) {
        l.f(wordsBlockingActivity, "this$0");
        if (list == null) {
            return;
        }
        App.a aVar = App.f4053h;
        aVar.a().clear();
        List<String> a10 = aVar.a();
        ArrayList arrayList = new ArrayList(wb.m.q(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((k4.a) it2.next()).b());
        }
        a10.addAll(arrayList);
        wordsBlockingActivity.r().c().clear();
        wordsBlockingActivity.r().c().addAll(list);
        b bVar = wordsBlockingActivity.f4351m;
        if (bVar == null) {
            return;
        }
        bVar.h(list);
    }

    public static final void u(WordsBlockingActivity wordsBlockingActivity, View view) {
        l.f(wordsBlockingActivity, "this$0");
        x2.a.d(s2.c.n(new s2.c(wordsBlockingActivity, null, 2, null), null, "ادخل الكلمات المحجوبة", null, 5, null), "كلمة,كلمة,...", null, null, null, 0, null, false, false, new e(), 254, null).show();
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        h3 c10 = h3.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8422d);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8422d.setNavigationOnClickListener(new View.OnClickListener() { // from class: a7.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WordsBlockingActivity.s(WordsBlockingActivity.this, view);
            }
        });
        c().f8421c.setClipToPadding(false);
        c().f8421c.setPadding(0, 0, 0, k7.b.g(48));
        c().f8421c.setLayoutManager(new LinearLayoutManager(this));
        this.f4351m = new b(this, this);
        c().f8421c.setAdapter(this.f4351m);
        r().b().a().i(this, new z() { // from class: a7.l
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                WordsBlockingActivity.t(WordsBlockingActivity.this, (List) obj);
            }
        });
        c().f8420b.setOnClickListener(new View.OnClickListener() { // from class: a7.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WordsBlockingActivity.u(WordsBlockingActivity.this, view);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        l.f(menu, "menu");
        getMenuInflater().inflate(R.menu.words_blocking, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.f(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId != R.id.action_copy) {
            if (itemId == R.id.action_remove_all) {
                s2.c.v(s2.c.p(s2.c.n(new s2.c(this, null, 2, null), null, "هل انت متأكد من مسح الكل؟", null, 5, null), null, "لا", null, 5, null), null, "مسح الكل", new f(), 1, null).show();
            }
        } else if (!r().c().isEmpty()) {
            List<k4.a> c10 = r().c();
            ArrayList arrayList = new ArrayList(wb.m.q(c10, 10));
            Iterator<T> it2 = c10.iterator();
            while (it2.hasNext()) {
                arrayList.add(((k4.a) it2.next()).b());
            }
            q(wb.t.G(arrayList, ",", null, null, 0, null, null, 62, null));
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public final void q(CharSequence charSequence) {
        try {
            Object k10 = f0.a.k(this, ClipboardManager.class);
            l.c(k10);
            ((ClipboardManager) k10).setPrimaryClip(ClipData.newPlainText("label", charSequence));
            k7.b.r(this, "تم النسخ للحافظة", 0, 2, null);
        } catch (Exception unused) {
        }
    }

    public final n r() {
        return (n) this.f4350l.getValue();
    }
}
