package com.anslayer.ui.character;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import androidx.lifecycle.r;
import cc.d;
import com.anslayer.R;
import com.anslayer.ui.character.CharacterSearchActivity;
import ic.l;
import j4.i0;
import jc.m;
import nd.a;
import uc.f;
import uc.g;
import uc.h;
import vb.k;
import vb.n;
import vb.p;

/* compiled from: CharacterSearchActivity.kt */
/* loaded from: classes.dex */
public final class CharacterSearchActivity extends o5.a<i0> {

    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes.dex */
    public static final class a implements f<Object> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ f f4168f;

        /* compiled from: Collect.kt */
        /* renamed from: com.anslayer.ui.character.CharacterSearchActivity$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0080a implements g<Object> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ g f4169f;

            @cc.f(c = "com.anslayer.ui.character.CharacterSearchActivity$onCreate$$inlined$filterIsInstance$1$2", f = "CharacterSearchActivity.kt", l = {137}, m = "emit")
            /* renamed from: com.anslayer.ui.character.CharacterSearchActivity$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0081a extends d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f4170f;

                /* renamed from: g, reason: collision with root package name */
                public int f4171g;

                public C0081a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f4170f = obj;
                    this.f4171g |= Integer.MIN_VALUE;
                    return C0080a.this.a(null, this);
                }
            }

            public C0080a(g gVar) {
                this.f4169f = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(Object obj, ac.d dVar) {
                C0081a c0081a;
                int i10;
                if (dVar instanceof C0081a) {
                    c0081a = (C0081a) dVar;
                    int i11 = c0081a.f4171g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0081a.f4171g = i11 - Integer.MIN_VALUE;
                        Object obj2 = c0081a.f4170f;
                        Object d10 = bc.c.d();
                        i10 = c0081a.f4171g;
                        if (i10 != 0) {
                            k.b(obj2);
                            g gVar = this.f4169f;
                            if (obj instanceof a.b) {
                                c0081a.f4171g = 1;
                                if (gVar.a(obj, c0081a) == d10) {
                                    return d10;
                                }
                            }
                        } else if (i10 == 1) {
                            k.b(obj2);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        return p.f15031a;
                    }
                }
                c0081a = new C0081a(dVar);
                Object obj22 = c0081a.f4170f;
                Object d102 = bc.c.d();
                i10 = c0081a.f4171g;
                if (i10 != 0) {
                }
                return p.f15031a;
            }
        }

        public a(f fVar) {
            this.f4168f = fVar;
        }

        @Override // uc.f
        public Object b(g<? super Object> gVar, ac.d dVar) {
            Object b10 = this.f4168f.b(new C0080a(gVar), dVar);
            return b10 == bc.c.d() ? b10 : p.f15031a;
        }
    }

    /* compiled from: CharacterSearchActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements l<a.b, CharSequence> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f4173f = new b();

        public b() {
            super(1);
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(a.b bVar) {
            jc.l.f(bVar, "it");
            return bVar.a();
        }
    }

    /* compiled from: CharacterSearchActivity.kt */
    @cc.f(c = "com.anslayer.ui.character.CharacterSearchActivity$onCreate$3", f = "CharacterSearchActivity.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<a.b, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4174f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f4175g;

        public c(ac.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            c cVar = new c(dVar);
            cVar.f4175g = obj;
            return cVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(a.b bVar, ac.d<? super p> dVar) {
            return ((c) create(bVar, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f4174f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            CharacterSearchActivity.this.p(((a.b) this.f4175g).a().toString());
            return p.f15031a;
        }
    }

    public static final void o(CharacterSearchActivity characterSearchActivity, View view) {
        jc.l.f(characterSearchActivity, "this$0");
        super.onBackPressed();
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i0 c10 = i0.c(getLayoutInflater());
        jc.l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8434f);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8434f.setNavigationOnClickListener(new View.OnClickListener() { // from class: t5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CharacterSearchActivity.o(CharacterSearchActivity.this, view);
            }
        });
        SearchView searchView = c().f8433e;
        jc.l.e(searchView, "binding.searchQuery");
        h.t(h.w(h.l(new a(nd.c.a(searchView)), b.f4173f), new c(null)), r.a(this));
        if (bundle == null) {
            Bundle a10 = m0.b.a(n.a("list_type", "character_list"), n.a("character_name", ""));
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            jc.l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            jc.l.e(m10, "beginTransaction()");
            m10.u(true);
            jc.l.e(m10.d(R.id.fragment_container_view, f5.a.class, a10, null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }

    public final void p(String str) {
        Bundle a10 = m0.b.a(n.a("list_type", "character_list"), n.a("character_name", str));
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        jc.l.e(supportFragmentManager, "supportFragmentManager");
        x m10 = supportFragmentManager.m();
        jc.l.e(m10, "beginTransaction()");
        m10.u(true);
        jc.l.e(m10.s(R.id.fragment_container_view, f5.a.class, a10, null), "replace(containerViewId, F::class.java, args, tag)");
        m10.i();
        c().f8433e.clearFocus();
    }
}
