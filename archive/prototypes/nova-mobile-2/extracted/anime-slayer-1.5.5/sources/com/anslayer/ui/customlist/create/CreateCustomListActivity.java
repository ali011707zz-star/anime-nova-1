package com.anslayer.ui.customlist.create;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.r;
import cc.f;
import cc.k;
import com.anslayer.R;
import com.anslayer.ui.customlist.create.CreateCustomListActivity;
import g7.c;
import ic.p;
import j4.o0;
import jc.g;
import jc.l;
import jc.m;
import jc.y;
import qc.u;
import uc.h;
import vb.i;
import y5.c;

/* compiled from: CreateCustomListActivity.kt */
/* loaded from: classes.dex */
public final class CreateCustomListActivity extends o5.a<o0> {

    /* renamed from: m, reason: collision with root package name */
    public static final a f4187m = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f4188l = new k0(y.b(y5.c.class), new d(this), new e());

    /* compiled from: CreateCustomListActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, long j10, String str, String str2) {
            l.f(context, "context");
            l.f(str, "title");
            Intent intent = new Intent(context, (Class<?>) CreateCustomListActivity.class);
            intent.putExtra("id", j10);
            intent.putExtra("title", str);
            intent.putExtra("description", str2);
            intent.putExtra("edit_mode", true);
            return intent;
        }
    }

    /* compiled from: CreateCustomListActivity.kt */
    @f(c = "com.anslayer.ui.customlist.create.CreateCustomListActivity$onCreate$2", f = "CreateCustomListActivity.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<md.a, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4189f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f4190g;

        public b(ac.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            b bVar = new b(dVar);
            bVar.f4190g = obj;
            return bVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(md.a aVar, ac.d<? super vb.p> dVar) {
            return ((b) create(aVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f4189f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            Editable a10 = ((md.a) this.f4190g).a();
            String obj2 = a10 == null ? null : a10.toString();
            CreateCustomListActivity.this.c().f8596f.setError(obj2 == null || obj2.length() == 0 ? "هذا الحقل مطلوب*" : null);
            return vb.p.f15031a;
        }
    }

    /* compiled from: CreateCustomListActivity.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.l<g7.c<? extends i<? extends String, ? extends String>>, vb.p> {
        public c() {
            super(1);
        }

        public final void a(g7.c<i<String, String>> cVar) {
            l.f(cVar, "it");
            if (cVar instanceof c.C0133c) {
                if (CreateCustomListActivity.this.p().f()) {
                    i iVar = (i) ((c.C0133c) cVar).a();
                    String str = (String) iVar.a();
                    String str2 = (String) iVar.b();
                    k7.b.r(CreateCustomListActivity.this, "تم تعديل القائمة", 0, 2, null);
                    Intent intent = new Intent();
                    intent.putExtra("is_edited", true);
                    intent.putExtra("new_title", str);
                    intent.putExtra("new_desc", str2);
                    CreateCustomListActivity.this.setResult(-1, intent);
                } else {
                    k7.b.r(CreateCustomListActivity.this, "تم انشاء قائمة جديدة", 0, 2, null);
                    Intent intent2 = new Intent();
                    intent2.putExtra("is_added", true);
                    CreateCustomListActivity.this.setResult(-1, intent2);
                }
                CreateCustomListActivity.this.finish();
                return;
            }
            if (cVar instanceof c.a) {
                k7.b.q(CreateCustomListActivity.this, R.string.text_request_error, 0, 2, null);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(g7.c<? extends i<? extends String, ? extends String>> cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4193f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ComponentActivity componentActivity) {
            super(0);
            this.f4193f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = this.f4193f.getViewModelStore();
            l.e(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: CreateCustomListActivity.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<l0.b> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return new c.a(CreateCustomListActivity.this);
        }
    }

    public static final void q(CreateCustomListActivity createCustomListActivity, View view) {
        l.f(createCustomListActivity, "this$0");
        createCustomListActivity.onBackPressed();
    }

    public static final void r(CreateCustomListActivity createCustomListActivity, View view) {
        Editable text;
        Editable text2;
        l.f(createCustomListActivity, "this$0");
        EditText editText = createCustomListActivity.c().f8596f.getEditText();
        CharSequence charSequence = null;
        String valueOf = String.valueOf((editText == null || (text = editText.getText()) == null) ? null : u.t0(text));
        EditText editText2 = createCustomListActivity.c().f8594d.getEditText();
        if (editText2 != null && (text2 = editText2.getText()) != null) {
            charSequence = u.t0(text2);
        }
        String valueOf2 = String.valueOf(charSequence);
        if (valueOf.length() == 0) {
            createCustomListActivity.c().f8596f.setError("هذا الحقل مطلوب*");
        } else {
            createCustomListActivity.p().b(valueOf, valueOf2);
        }
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        od.b<md.a> a10;
        uc.f<md.a> f10;
        uc.f w10;
        super.onCreate(bundle);
        o0 c10 = o0.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        if (p().f()) {
            c().f8598h.setTitle("تعديل القائمة");
            c().f8592b.setText("تعديل القائمة");
        } else {
            c().f8598h.setTitle("انشاء قائمة جديدة");
            c().f8592b.setText("انشاء قائمة");
        }
        setSupportActionBar(c().f8598h);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8598h.setNavigationOnClickListener(new View.OnClickListener() { // from class: y5.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateCustomListActivity.q(CreateCustomListActivity.this, view);
            }
        });
        String stringExtra = getIntent().getStringExtra("title");
        String stringExtra2 = getIntent().getStringExtra("description");
        boolean booleanExtra = getIntent().getBooleanExtra("edit_mode", false);
        EditText editText = c().f8596f.getEditText();
        if (editText != null) {
            editText.setText(stringExtra);
        }
        EditText editText2 = c().f8594d.getEditText();
        if (editText2 != null) {
            editText2.setText(stringExtra2);
        }
        EditText editText3 = c().f8596f.getEditText();
        if (editText3 != null && (a10 = md.b.a(editText3)) != null && (f10 = a10.f()) != null && (w10 = h.w(f10, new b(null))) != null) {
            h.t(w10, r.a(this));
        }
        if (!booleanExtra) {
            c().f8596f.requestFocus();
        }
        c().f8592b.setOnClickListener(new View.OnClickListener() { // from class: y5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateCustomListActivity.r(CreateCustomListActivity.this, view);
            }
        });
        p().c().i(this, new g7.b(new c()));
    }

    public final y5.c p() {
        return (y5.c) this.f4188l.getValue();
    }
}
