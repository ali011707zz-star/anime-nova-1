package y6;

import android.app.Application;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.c0;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g;
import com.anslayer.R;
import com.anslayer.network.OkHttpException;
import com.anslayer.ui.comment.CommentActivity;
import com.anslayer.ui.servers.WebViewPlayerActivity;
import com.anslayer.ui.servers.resolver.resolver.ServersResolver;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.material.snackbar.Snackbar;
import com.xw.repo.BubbleSeekBar;
import i5.d0;
import io.wax911.support.SupportExtentionKt;
import j4.u0;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import rc.q0;
import tgio.rncryptor.RNCryptorNative;
import y6.a;
import y6.c;
import y6.g;
import y6.j;

/* compiled from: ServerFragment.kt */
/* loaded from: classes.dex */
public final class v extends Fragment implements j.b {

    /* renamed from: j, reason: collision with root package name */
    public String f16508j;

    /* renamed from: k, reason: collision with root package name */
    public y6.j f16509k;

    /* renamed from: l, reason: collision with root package name */
    public a f16510l;

    /* renamed from: m, reason: collision with root package name */
    public m7.i f16511m;

    /* renamed from: n, reason: collision with root package name */
    public Snackbar f16512n;

    /* renamed from: o, reason: collision with root package name */
    public Boolean f16513o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f16514p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f16515q;

    /* renamed from: r, reason: collision with root package name */
    public s2.c f16516r;

    /* renamed from: u, reason: collision with root package name */
    public boolean f16519u;

    /* renamed from: v, reason: collision with root package name */
    public r4.j f16520v;

    /* renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f16503y = {jc.y.e(new jc.o(v.class, "binding", "getBinding()Lcom/anslayer/databinding/ContentServerBinding;", 0))};

    /* renamed from: x, reason: collision with root package name */
    public static final b f16502x = new b(null);

    /* renamed from: f, reason: collision with root package name */
    public final kc.a f16504f = FragmentExtensionsKt.a(this);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f16505g = c0.a(this, jc.y.b(y6.x.class), new r(this), new s(this));

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f16506h = c0.a(this, jc.y.b(z.class), new w(new C0433v(this)), new x());

    /* renamed from: i, reason: collision with root package name */
    public final vb.e f16507i = vb.f.a(t.f16572f);

    /* renamed from: s, reason: collision with root package name */
    public final vb.e f16517s = vb.f.a(u.f16573f);

    /* renamed from: t, reason: collision with root package name */
    public final vb.e f16518t = vb.f.a(new c());

    /* renamed from: w, reason: collision with root package name */
    public final d f16521w = new d();

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends RecyclerView.h<RecyclerView.e0> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f16522a;

        /* renamed from: b, reason: collision with root package name */
        public final r4.j f16523b;

        /* compiled from: ServerFragment.kt */
        /* renamed from: y6.v$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0432a extends View {
            public C0432a(Context context) {
                super(context);
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                jc.l.f(canvas, "canvas");
            }

            @Override // android.view.View
            public void onMeasure(int i10, int i11) {
                setMeasuredDimension(View.MeasureSpec.getSize(i10), k7.b.g(12));
            }
        }

        public a(Context context, r4.j jVar) {
            jc.l.f(context, "context");
            jc.l.f(jVar, "screenAd");
            this.f16522a = context;
            this.f16523b = jVar;
            setHasStableIds(true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemCount() {
            return 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public long getItemId(int i10) {
            return i10 == 0 ? 12222L : 13333L;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public int getItemViewType(int i10) {
            return i10 == 1 ? 1 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public void onBindViewHolder(RecyclerView.e0 e0Var, int i10) {
            jc.l.f(e0Var, "holder");
            if (i10 == 1) {
                ((m7.b) e0Var.itemView).setData(this.f16523b);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.h
        public RecyclerView.e0 onCreateViewHolder(ViewGroup viewGroup, int i10) {
            View c0432a;
            jc.l.f(viewGroup, "parent");
            if (i10 == 1) {
                c0432a = new m7.b(this.f16522a, null, 2, null);
                c0432a.setPadding(k7.b.g(5), 0, k7.b.g(5), 0);
            } else {
                c0432a = new C0432a(this.f16522a);
            }
            c0432a.setLayoutParams(new RecyclerView.q(-1, -2));
            return new n5.b(c0432a);
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(jc.g gVar) {
            this();
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<r4.b> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<r4.b> {
        }

        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r4.b invoke() {
            Type b10;
            try {
                ja.f d02 = v.this.d0();
                String n10 = v.this.f0().n();
                jc.l.c(n10);
                Type type = new a().getType();
                jc.l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    jc.l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = d02.l(n10, b10);
                jc.l.b(l10, "fromJson(json, typeToken<T>())");
                return (r4.b) l10;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class d implements BubbleSeekBar.k {
        public d() {
        }

        @Override // com.xw.repo.BubbleSeekBar.k
        public void a(BubbleSeekBar bubbleSeekBar, int i10, float f10, boolean z10) {
            jc.l.f(bubbleSeekBar, "bubbleSeekBar");
        }

        @Override // com.xw.repo.BubbleSeekBar.k
        public void b(BubbleSeekBar bubbleSeekBar, int i10, float f10, boolean z10) {
            jc.l.f(bubbleSeekBar, "bubbleSeekBar");
        }

        @Override // com.xw.repo.BubbleSeekBar.k
        public void c(BubbleSeekBar bubbleSeekBar, int i10, float f10) {
            jc.l.f(bubbleSeekBar, "bubbleSeekBar");
            if (!v.this.f0().b()) {
                androidx.fragment.app.e activity = v.this.getActivity();
                if (activity == null) {
                    return;
                }
                k7.b.q(activity, R.string.text_login_required, 0, 2, null);
                return;
            }
            if (f10 >= 1.0d) {
                v.this.h0().l(i10);
                return;
            }
            androidx.fragment.app.e activity2 = v.this.getActivity();
            if (activity2 == null) {
                return;
            }
            k7.b.q(activity2, R.string.text_rating_warning, 0, 2, null);
        }
    }

    /* compiled from: ServerFragment.kt */
    @cc.f(c = "com.anslayer.ui.servers.ServerFragment$onServerItemClick$1", f = "ServerFragment.kt", l = {440, 465, 476}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16526f;

        /* renamed from: g, reason: collision with root package name */
        public int f16527g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f16528h;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.e f16530j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ y6.w f16531k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ v4.b f16532l;

        /* renamed from: m, reason: collision with root package name */
        public final /* synthetic */ String f16533m;

        /* renamed from: n, reason: collision with root package name */
        public final /* synthetic */ String f16534n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(androidx.fragment.app.e eVar, y6.w wVar, v4.b bVar, String str, String str2, ac.d<? super e> dVar) {
            super(2, dVar);
            this.f16530j = eVar;
            this.f16531k = wVar;
            this.f16532l = bVar;
            this.f16533m = str;
            this.f16534n = str2;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            e eVar = new e(this.f16530j, this.f16531k, this.f16532l, this.f16533m, this.f16534n, dVar);
            eVar.f16528h = obj;
            return eVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x019b  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00f0 A[Catch: IOException -> 0x0039, Exception -> 0x01a9, OkHttpException -> 0x01e9, TryCatch #2 {OkHttpException -> 0x01e9, IOException -> 0x0039, Exception -> 0x01a9, blocks: (B:8:0x001f, B:10:0x017d, B:11:0x0192, B:14:0x019c, B:21:0x0031, B:23:0x00e3, B:25:0x00f0, B:27:0x00f8, B:28:0x010d, B:30:0x0113, B:33:0x0138, B:34:0x013d, B:35:0x0148, B:42:0x007e, B:44:0x0082, B:46:0x008c, B:48:0x0094, B:50:0x009f, B:51:0x00ac, B:53:0x00af, B:55:0x00b7, B:57:0x00c4, B:61:0x0149, B:63:0x0151), top: B:2:0x0013 }] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x013d A[Catch: IOException -> 0x0039, Exception -> 0x01a9, OkHttpException -> 0x01e9, TryCatch #2 {OkHttpException -> 0x01e9, IOException -> 0x0039, Exception -> 0x01a9, blocks: (B:8:0x001f, B:10:0x017d, B:11:0x0192, B:14:0x019c, B:21:0x0031, B:23:0x00e3, B:25:0x00f0, B:27:0x00f8, B:28:0x010d, B:30:0x0113, B:33:0x0138, B:34:0x013d, B:35:0x0148, B:42:0x007e, B:44:0x0082, B:46:0x008c, B:48:0x0094, B:50:0x009f, B:51:0x00ac, B:53:0x00af, B:55:0x00b7, B:57:0x00c4, B:61:0x0149, B:63:0x0151), top: B:2:0x0013 }] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            q0 q0Var;
            Object j10;
            List<String> i10;
            v4.a aVar;
            int i11;
            Object a10;
            String str;
            Object server;
            Object d10 = bc.c.d();
            int i12 = this.f16527g;
            try {
            } catch (OkHttpException unused) {
                v.this.x0(this.f16531k, y.NOT_WORKING);
                s2.c.v(s2.c.n(new s2.c(this.f16530j, null, 2, null), cc.b.b(R.string.text_use_vpn), null, null, 6, null), cc.b.b(R.string.Ok), null, null, 6, null).show();
            } catch (IOException unused2) {
                if (SupportExtentionKt.isConnectedToNetwork(this.f16530j)) {
                    v.this.x0(this.f16531k, y.NOT_WORKING);
                } else {
                    s2.c.v(s2.c.n(new s2.c(this.f16530j, null, 2, null), cc.b.b(R.string.check_internet), null, null, 6, null), cc.b.b(R.string.Ok), null, null, 6, null).show();
                }
            } catch (Exception unused3) {
                v.this.x0(this.f16531k, y.NOT_WORKING);
            }
            if (i12 == 0) {
                vb.k.b(obj);
                q0Var = (q0) this.f16528h;
                v.this.E0();
                androidx.fragment.app.e eVar = this.f16530j;
                this.f16528h = q0Var;
                this.f16527g = 1;
                j10 = k7.b.j(eVar, this);
                if (j10 == d10) {
                    return d10;
                }
            } else {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        String str2 = (String) this.f16528h;
                        vb.k.b(obj);
                        str = str2;
                        a10 = obj;
                        List<String> list = (List) a10;
                        i10 = list;
                        aVar = new v4.a("anslayer.com", str, "الاحتياطي", 999, list);
                        i11 = 1;
                        v vVar = v.this;
                        jc.l.c(aVar);
                        vVar.H0(i10, aVar, this.f16532l, i11 != 0);
                        v.this.x0(this.f16531k, y.WORKING);
                        v.this.a0();
                        return vb.p.f15031a;
                    }
                    int i13 = this.f16526f;
                    vb.k.b(obj);
                    i11 = i13;
                    server = obj;
                    aVar = (v4.a) server;
                    if (!(!aVar.c().isEmpty())) {
                        if (this.f16532l.a()) {
                            List<String> c10 = aVar.c();
                            String str3 = this.f16534n;
                            ArrayList arrayList = new ArrayList(wb.m.q(c10, 10));
                            Iterator<T> it2 = c10.iterator();
                            while (it2.hasNext()) {
                                arrayList.add(((String) it2.next()) + "&/" + str3 + ".mp4");
                            }
                            i10 = arrayList;
                        } else {
                            i10 = aVar.c();
                        }
                        v vVar2 = v.this;
                        jc.l.c(aVar);
                        vVar2.H0(i10, aVar, this.f16532l, i11 != 0);
                        v.this.x0(this.f16531k, y.WORKING);
                        v.this.a0();
                        return vb.p.f15031a;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                q0Var = (q0) this.f16528h;
                vb.k.b(obj);
                j10 = obj;
            }
            if (!((Boolean) j10).booleanValue()) {
                k7.b.q(this.f16530j, R.string.check_internet, 0, 2, null);
                v.this.a0();
                return vb.p.f15031a;
            }
            String b10 = this.f16531k.b();
            i10 = wb.l.i();
            v4.b bVar = this.f16532l;
            if (bVar != null && qc.u.C(b10, bVar.f(), false, 2, null)) {
                if (this.f16532l.k()) {
                    v.this.a0();
                    if (Build.VERSION.SDK_INT >= 21) {
                        v.this.startActivity(WebViewPlayerActivity.f4348g.a(this.f16530j, b10));
                    }
                    return vb.p.f15031a;
                }
                if (this.f16532l.b()) {
                    v.this.a0();
                    k7.b.l(this.f16530j, b10);
                    return vb.p.f15031a;
                }
                ServersResolver.Companion companion = ServersResolver.Companion;
                androidx.fragment.app.e eVar2 = this.f16530j;
                String str4 = this.f16533m;
                v4.b bVar2 = this.f16532l;
                ja.f d02 = v.this.d0();
                this.f16528h = null;
                this.f16526f = 0;
                this.f16527g = 2;
                server = companion.getServer(eVar2, b10, str4, bVar2, d02, this);
                if (server == d10) {
                    return d10;
                }
                i11 = 0;
                aVar = (v4.a) server;
                if (!(!aVar.c().isEmpty())) {
                }
            } else {
                if (qc.u.C(b10, "anslayer.com", false, 2, null)) {
                    v.this.h0().E(q0Var);
                    z6.a aVar2 = z6.a.f17420a;
                    androidx.fragment.app.e eVar3 = this.f16530j;
                    RNCryptorNative z10 = v.this.h0().z();
                    ja.f d03 = v.this.d0();
                    this.f16528h = b10;
                    this.f16527g = 3;
                    a10 = aVar2.a(b10, eVar3, z10, d03, this);
                    if (a10 == d10) {
                        return d10;
                    }
                    str = b10;
                    List<String> list2 = (List) a10;
                    i10 = list2;
                    aVar = new v4.a("anslayer.com", str, "الاحتياطي", 999, list2);
                    i11 = 1;
                    v vVar22 = v.this;
                    jc.l.c(aVar);
                    vVar22.H0(i10, aVar, this.f16532l, i11 != 0);
                    v.this.x0(this.f16531k, y.WORKING);
                    v.this.a0();
                    return vb.p.f15031a;
                }
                aVar = null;
                i11 = 0;
                v vVar222 = v.this;
                jc.l.c(aVar);
                vVar222.H0(i10, aVar, this.f16532l, i11 != 0);
                v.this.x0(this.f16531k, y.WORKING);
                v.this.a0();
                return vb.p.f15031a;
            }
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Intent f16536g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Intent intent) {
            super(1);
            this.f16536g = intent;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            v.this.f0().h().set(Boolean.FALSE);
            v.this.startActivity(this.f16536g);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.l<s2.c, vb.p> {
        public g() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            v.this.Z("ASD player");
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.l<s2.c, vb.p> {
        public h() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            v.this.Z("ASD player");
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    @cc.f(c = "com.anslayer.ui.servers.ServerFragment$setEpisodeWatched$1", f = "ServerFragment.kt", l = {514}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class i extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16539f;

        public i(ac.d<? super i> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new i(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((i) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f16539f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    z h02 = v.this.h0();
                    this.f16539f = 1;
                    if (h02.m(this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                v.this.g0().a().add(v.this.h0().s());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.e f16541f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ r4.e f16542g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(androidx.fragment.app.e eVar, r4.e eVar2) {
            super(0);
            this.f16541f = eVar;
            this.f16542g = eVar2;
        }

        public final void a() {
            k7.b.l(this.f16541f, this.f16542g.e());
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class k extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.e f16543f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f16544g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f16545h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ v4.a f16546i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(androidx.fragment.app.e eVar, String str, String str2, v4.a aVar) {
            super(1);
            this.f16543f = eVar;
            this.f16544g = str;
            this.f16545h = str2;
            this.f16546i = aVar;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            i7.b.f7890a.d(this.f16543f, this.f16544g, this.f16545h, this.f16546i);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.e f16547f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f16548g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f16549h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ v4.a f16550i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(androidx.fragment.app.e eVar, String str, String str2, v4.a aVar) {
            super(1);
            this.f16547f = eVar;
            this.f16548g = str;
            this.f16549h = str2;
            this.f16550i = aVar;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            if (k7.a.b(this.f16547f, "android.permission.WRITE_EXTERNAL_STORAGE", 0, 2, null)) {
                i7.b.f7890a.c(this.f16547f, this.f16548g, this.f16549h, this.f16550i);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class m extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f16552g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(String str) {
            super(1);
            this.f16552g = str;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.parse(this.f16552g), "video/*");
                v.this.startActivity(intent);
            } catch (Exception unused) {
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class n implements g.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ y6.g f16553a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ v f16554b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.e f16555c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ v4.a f16556d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Dialog f16557e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ArrayList<p4.n> f16558f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ v4.b f16559g;

        public n(y6.g gVar, v vVar, androidx.fragment.app.e eVar, v4.a aVar, Dialog dialog, ArrayList<p4.n> arrayList, v4.b bVar) {
            this.f16553a = gVar;
            this.f16554b = vVar;
            this.f16555c = eVar;
            this.f16556d = aVar;
            this.f16557e = dialog;
            this.f16558f = arrayList;
            this.f16559g = bVar;
        }

        @Override // y6.g.a
        public void a(int i10, String str) {
            jc.l.f(str, "title");
            String c10 = this.f16553a.i().get(i10).c();
            boolean j10 = this.f16554b.f0().j();
            String str2 = ((Object) this.f16554b.f16508j) + ' ' + str;
            if (j10) {
                i7.b.f7890a.d(this.f16555c, c10, str2, this.f16556d);
            } else {
                this.f16554b.F0(c10, str2, this.f16556d);
            }
            this.f16557e.dismiss();
        }

        @Override // y6.g.a
        public void b(int i10, String str, v4.b bVar) {
            jc.l.f(str, "title");
            v.J0(this.f16554b, this.f16558f, this.f16559g, this.f16555c, this.f16553a.i().get(i10).c(), str, i10);
            this.f16557e.dismiss();
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class o extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.e f16560f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f16561g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f16562h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(androidx.fragment.app.e eVar, String str, String str2) {
            super(1);
            this.f16560f = eVar;
            this.f16561g = str;
            this.f16562h = str2;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            i7.b.f7890a.k(this.f16560f, this.f16561g, this.f16562h);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class p extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f16564g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ArrayList<p4.n> f16565h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ int f16566i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(String str, ArrayList<p4.n> arrayList, int i10) {
            super(1);
            this.f16564g = str;
            this.f16565h = arrayList;
            this.f16566i = i10;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            v.this.r0(this.f16564g, this.f16565h, this.f16566i);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class q extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String f16567f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f16568g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ v f16569h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(String str, String str2, v vVar) {
            super(1);
            this.f16567f = str;
            this.f16568g = str2;
            this.f16569h = vVar;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            try {
                String c10 = new qc.i("[^a-zA-Z0-9]+").c(this.f16567f, "");
                String v10 = qc.t.v(this.f16568g, '/' + c10 + ".mp4", "", false, 4, null);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.parse(v10), "video/*");
                this.f16569h.startActivity(intent);
            } catch (Exception unused) {
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class r extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f16570f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(Fragment fragment) {
            super(0);
            this.f16570f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            androidx.fragment.app.e requireActivity = this.f16570f.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            m0 viewModelStore = requireActivity.getViewModelStore();
            jc.l.e(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class s extends jc.m implements ic.a<l0.b> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f16571f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(Fragment fragment) {
            super(0);
            this.f16571f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = this.f16571f.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class t extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final t f16572f = new t();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public t() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class u extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final u f16573f = new u();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public u() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* renamed from: y6.v$v, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0433v extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f16574f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0433v(Fragment fragment) {
            super(0);
            this.f16574f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f16574f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class w extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f16575f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(ic.a aVar) {
            super(0);
            this.f16575f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f16575f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: ServerFragment.kt */
    /* loaded from: classes.dex */
    public static final class x extends jc.m implements ic.a<l0.b> {

        /* compiled from: ServerFragment.kt */
        /* loaded from: classes.dex */
        public static final class a extends l0.a {

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ Application f16577d;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ long f16578e;

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ String f16579f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ String f16580g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ String f16581h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Application application, long j10, String str, String str2, String str3) {
                super(application);
                this.f16577d = application;
                this.f16578e = j10;
                this.f16579f = str;
                this.f16580g = str2;
                this.f16581h = str3;
            }

            @Override // androidx.lifecycle.l0.a, androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
            public <T extends i0> T a(Class<T> cls) {
                jc.l.f(cls, "modelClass");
                Application application = this.f16577d;
                jc.l.e(application, "app");
                return new z(application, this.f16578e, this.f16579f, this.f16580g, this.f16581h);
            }
        }

        public x() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            long j10 = v.this.requireArguments().getLong("anime_id", 0L);
            String string = v.this.requireArguments().getString("episode_id");
            jc.l.c(string);
            jc.l.e(string, "requireArguments().getSt…sRequestType.episodeId)!!");
            return new a(v.this.requireActivity().getApplication(), j10, string, v.this.requireArguments().getString("arg_title"), v.this.requireArguments().getString("arg_episode_title"));
        }
    }

    public static final void B0(Dialog dialog, View view) {
        jc.l.f(dialog, "$dialog");
        dialog.dismiss();
    }

    public static final void C0(androidx.fragment.app.e eVar, DialogInterface dialogInterface) {
        jc.l.f(eVar, "$activity");
        ((androidx.appcompat.app.e) eVar).setRequestedOrientation(1);
    }

    public static final void D0(androidx.fragment.app.e eVar, DialogInterface dialogInterface) {
        jc.l.f(eVar, "$activity");
        ((androidx.appcompat.app.e) eVar).setRequestedOrientation(-1);
    }

    public static final boolean I0(j4.x xVar, y6.g gVar, String str, Dialog dialog, v vVar, ArrayList arrayList, v4.b bVar, androidx.fragment.app.e eVar, View view, int i10, KeyEvent keyEvent) {
        int selectedItemPosition;
        jc.l.f(xVar, "$dialogBinding");
        jc.l.f(gVar, "$adapter");
        jc.l.f(str, "$title");
        jc.l.f(dialog, "$this_apply");
        jc.l.f(vVar, "this$0");
        jc.l.f(arrayList, "$qualities");
        jc.l.f(eVar, "$activity");
        if (keyEvent.getAction() != 0 || i10 != 66 || (selectedItemPosition = xVar.f8792c.getSelectedItemPosition()) == -1) {
            return false;
        }
        p4.n nVar = gVar.i().get(selectedItemPosition);
        jc.l.e(nVar, "adapter.qualities[position]");
        J0(vVar, arrayList, bVar, eVar, nVar.c(), str, selectedItemPosition);
        dialog.dismiss();
        return false;
    }

    public static final void J0(v vVar, ArrayList<p4.n> arrayList, v4.b bVar, androidx.fragment.app.e eVar, String str, String str2, int i10) {
        int parseInt = Integer.parseInt(vVar.f0().k().get());
        if (parseInt == 0) {
            vVar.K0(str, str2, arrayList, bVar, i10);
            return;
        }
        if (parseInt == 1) {
            i7.b.f7890a.k(eVar, str, str2);
            return;
        }
        if (parseInt != 2) {
            return;
        }
        if (vVar.f0().x()) {
            if (eVar != null) {
                k7.b.p(eVar, "يمكنك تغيير المشغل الافتراضي من الاعدادات", 1);
            }
            vVar.f0().Z(false);
        }
        vVar.r0(str2, arrayList, i10);
    }

    public static final void k0(v vVar, View view) {
        jc.l.f(vVar, "this$0");
        vVar.h0().D();
    }

    public static final void m0(v vVar, p4.k kVar) {
        jc.l.f(vVar, "this$0");
        if (kVar == null) {
            return;
        }
        jc.l.e(kVar, "episode");
        vVar.v0(kVar);
    }

    public static final void n0(v vVar, y6.b bVar) {
        jc.l.f(vVar, "this$0");
        if (bVar == null) {
            return;
        }
        vVar.y0(bVar);
    }

    public static final void o0(v vVar, y6.c cVar) {
        jc.l.f(vVar, "this$0");
        if (cVar == null) {
            return;
        }
        if (cVar instanceof c.C0431c) {
            vVar.G0();
        } else if (cVar instanceof c.b) {
            vVar.l0(((c.b) cVar).a());
        } else if (cVar instanceof c.a) {
            vVar.j0();
        }
    }

    public static final void p0(v vVar, y6.a aVar) {
        jc.l.f(vVar, "this$0");
        if (aVar == null) {
            return;
        }
        if (aVar instanceof a.b) {
            vVar.c0().f8553c.o();
            return;
        }
        if (aVar instanceof a.c) {
            vVar.c0().f8553c.m();
            return;
        }
        if (aVar instanceof a.C0430a) {
            vVar.c0().f8553c.m();
            androidx.fragment.app.e activity = vVar.getActivity();
            if (activity == null) {
                return;
            }
            k7.b.q(activity, R.string.text_request_error, 0, 2, null);
        }
    }

    public final void A0() {
        r4.b b02;
        final androidx.fragment.app.e activity = getActivity();
        if (activity == null || (b02 = b0()) == null) {
            return;
        }
        r4.a a10 = b02.a();
        r4.e c10 = a10 == null ? null : a10.c();
        if (c10 == null || this.f16519u) {
            return;
        }
        if (getResources().getConfiguration().orientation != 1) {
            activity.setRequestedOrientation(1);
            return;
        }
        this.f16519u = true;
        u0 c11 = u0.c(getLayoutInflater(), null, false);
        jc.l.e(c11, "inflate(layoutInflater, null, false)");
        final Dialog dialog = new Dialog(activity, R.style.AlertDialogTheme);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        dialog.setContentView(c11.b());
        Window window = dialog.getWindow();
        WindowManager windowManager = window == null ? null : window.getWindowManager();
        if (windowManager != null) {
            Resources resources = dialog.getContext().getResources();
            Point point = new Point();
            windowManager.getDefaultDisplay().getSize(point);
            vb.i iVar = new vb.i(Integer.valueOf(point.x), Integer.valueOf(point.y));
            int intValue = ((Number) iVar.a()).intValue();
            c11.b().setMaxHeight(((Number) iVar.b()).intValue() - (resources.getDimensionPixelSize(R.dimen.md_dialog_vertical_margin) * 2));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            Window window2 = dialog.getWindow();
            layoutParams.copyFrom(window2 != null ? window2.getAttributes() : null);
            layoutParams.width = Math.min(resources.getDimensionPixelSize(R.dimen.md_dialog_max_width), intValue - (k7.b.g(33) * 2));
            Window window3 = dialog.getWindow();
            if (window3 != null) {
                window3.setAttributes(layoutParams);
            }
        }
        d4.a.b(c11.f8736b).s(c10.c()).g(r7.j.f12973b).r0(new d0((androidx.appcompat.app.e) activity, c11, dialog, c10.a(), c10.e().length() > 0, new j(activity, c10)));
        c11.f8737c.setOnClickListener(new View.OnClickListener() { // from class: y6.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                v.B0(dialog, view);
            }
        });
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: y6.n
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                v.C0(androidx.fragment.app.e.this, dialogInterface);
            }
        });
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: y6.m
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                v.D0(androidx.fragment.app.e.this, dialogInterface);
            }
        });
        dialog.show();
    }

    public final void E0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        a0();
        m7.i iVar = new m7.i(activity, false, 0.6f);
        this.f16511m = iVar;
        jc.l.c(iVar);
        iVar.show();
    }

    public final void F0(String str, String str2, v4.a aVar) {
        jc.l.f(str, ImagesContract.URL);
        jc.l.f(str2, "title");
        jc.l.f(aVar, "serverModel");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        s2.c cVar = new s2.c(activity, null, 2, null);
        s2.c.n(cVar, null, getString(R.string.download_title, str2), null, 5, null);
        s2.c.v(cVar, null, "ADM", new k(activity, str, str2, aVar), 1, null);
        s2.c.p(cVar, Integer.valueOf(R.string.download), null, new l(activity, str, str2, aVar), 2, null);
        if (!qc.u.C(str, "anslayer.com", false, 2, null)) {
            s2.c.r(cVar, Integer.valueOf(R.string.download_with), null, new m(str), 2, null);
        }
        cVar.show();
    }

    public final void G0() {
        ProgressBar progressBar = c0().f8556f;
        jc.l.e(progressBar, "binding.progress");
        SupportExtentionKt.visible(progressBar);
    }

    public final void H0(List<String> list, v4.a aVar, final v4.b bVar, boolean z10) {
        final androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        p4.k r10 = h0().r();
        String f10 = r10 == null ? null : r10.f();
        if (f10 == null) {
            f10 = "";
        }
        final String str = f10;
        final ArrayList<p4.n> a10 = i7.a.f7889a.a(list, aVar.b());
        int ceil = ((int) Math.ceil(list.size() / 2.0f)) - 1;
        if (r4.c.d(h0().q()) && r4.c.e(h0().q())) {
            r0(str, a10, ceil);
            return;
        }
        if (r4.c.d(h0().q()) && z10) {
            r0(str, a10, ceil);
            return;
        }
        final Dialog dialog = new Dialog(activity);
        dialog.requestWindowFeature(1);
        final j4.x c10 = j4.x.c(LayoutInflater.from(requireContext()));
        jc.l.e(c10, "inflate(LayoutInflater.from(requireContext()))");
        dialog.setContentView(c10.b());
        final y6.g gVar = new y6.g(activity, a10, aVar, bVar, str);
        gVar.f(new n(gVar, this, activity, aVar, dialog, a10, bVar));
        c10.f8792c.setAdapter((ListAdapter) gVar);
        c10.f8792c.setOnKeyListener(new View.OnKeyListener() { // from class: y6.q
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
                boolean I0;
                I0 = v.I0(j4.x.this, gVar, str, dialog, this, a10, bVar, activity, view, i10, keyEvent);
                return I0;
            }
        });
        dialog.show();
    }

    public final void K0(String str, String str2, ArrayList<p4.n> arrayList, v4.b bVar, int i10) {
        jc.l.f(str, ImagesContract.URL);
        jc.l.f(str2, "title");
        jc.l.f(arrayList, "qualities");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        s2.c cVar = new s2.c(activity, null, 2, null);
        s2.c.n(cVar, Integer.valueOf(R.string.watch_by), null, null, 6, null);
        s2.c.v(cVar, null, "MX Player", new o(activity, str, str2), 1, null);
        s2.c.p(cVar, null, "السريع", new p(str2, arrayList, i10), 1, null);
        if (!(bVar != null && bVar.d() == 1) && !qc.u.C(str, "anslayer.com", false, 2, null)) {
            s2.c.r(cVar, null, "اخرى", new q(str2, str, this), 1, null);
        }
        cVar.show();
    }

    public final void Z(CharSequence charSequence) {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        try {
            Object k10 = f0.a.k(activity, ClipboardManager.class);
            jc.l.c(k10);
            ((ClipboardManager) k10).setPrimaryClip(ClipData.newPlainText("label", charSequence));
            k7.b.r(activity, "تم النسخ للحافظة", 0, 2, null);
        } catch (Exception unused) {
        }
    }

    public final void a0() {
        m7.i iVar = this.f16511m;
        if (iVar != null) {
            try {
                jc.l.c(iVar);
                iVar.dismiss();
            } catch (Exception unused) {
            }
            this.f16511m = null;
        }
    }

    public final r4.b b0() {
        return (r4.b) this.f16518t.getValue();
    }

    @Override // y6.j.b
    public void c(v4.b bVar, String str, String str2, int i10, y6.w wVar) {
        jc.l.f(str, "ol6");
        jc.l.f(str2, "title");
        jc.l.f(wVar, "serverItem");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        androidx.lifecycle.r.a(viewLifecycleOwner).f(new e(activity, wVar, bVar, str, str2, null));
    }

    public final j4.n0 c0() {
        return (j4.n0) this.f16504f.f(this, f16503y[0]);
    }

    public final ja.f d0() {
        return (ja.f) this.f16517s.getValue();
    }

    public final j.c e0(String str) {
        RecyclerView.e0 findViewHolderForItemId = c0().f8555e.findViewHolderForItemId(str.hashCode());
        if (findViewHolderForItemId instanceof j.c) {
            return (j.c) findViewHolderForItemId;
        }
        return null;
    }

    public final f4.d f0() {
        return (f4.d) this.f16507i.getValue();
    }

    public final y6.x g0() {
        return (y6.x) this.f16505g.getValue();
    }

    public final z h0() {
        return (z) this.f16506h.getValue();
    }

    public final void i0() {
        RecyclerView recyclerView = c0().f8555e;
        jc.l.e(recyclerView, "binding.listServer");
        SupportExtentionKt.visible(recyclerView);
        ProgressBar progressBar = c0().f8556f;
        jc.l.e(progressBar, "binding.progress");
        SupportExtentionKt.gone(progressBar);
    }

    public final void j0() {
        i0();
        Snackbar snackbar = this.f16512n;
        if (snackbar != null) {
            snackbar.dismiss();
        }
        LinearLayout b10 = c0().b();
        jc.l.e(b10, "binding.root");
        Snackbar make = Snackbar.make(b10, b10.getContext().getString(R.string.text_request_error), -2);
        jc.l.e(make, "make(this, context.getString(message), length)");
        View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
        jc.l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
        ((TextView) findViewById).setGravity(3);
        make.setAction("اعادة المحاولة", new View.OnClickListener() { // from class: y6.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                v.k0(v.this, view);
            }
        });
        make.show();
        this.f16512n = make;
    }

    public final void l0(p4.k kVar) {
        i0();
        w0();
        this.f16513o = Boolean.valueOf(kVar.s());
        List<r4.m> p10 = kVar.p();
        if (!(p10 == null || p10.isEmpty())) {
            this.f16515q = true;
        }
        List<r4.m> o10 = kVar.o();
        if (!(o10 == null || o10.isEmpty())) {
            this.f16514p = true;
        }
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.invalidateOptionsMenu();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        if (bundle != null) {
            this.f16519u = bundle.getBoolean("adShowed");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        jc.l.f(menu, "menu");
        jc.l.f(menuInflater, "inflater");
        menuInflater.inflate(R.menu.server_activity_menu, menu);
        MenuItem findItem = menu.findItem(R.id.action_next);
        if (findItem != null) {
            findItem.setVisible(this.f16514p);
        }
        MenuItem findItem2 = menu.findItem(R.id.action_prev);
        if (findItem2 != null) {
            findItem2.setVisible(this.f16515q);
        }
        MenuItem findItem3 = menu.findItem(R.id.action_comment);
        if (findItem3 == null) {
            return;
        }
        findItem3.setEnabled(this.f16513o != null);
        Boolean bool = this.f16513o;
        findItem3.setIcon((bool == null || jc.l.a(bool, Boolean.TRUE)) ? R.drawable.ic_chat_grey_600_24dp : R.drawable.ic_baseline_speaker_notes_off_24);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        j4.n0 c10 = j4.n0.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        u0(c10);
        return c0().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f16509k = null;
        this.f16510l = null;
        Snackbar snackbar = this.f16512n;
        if (snackbar != null) {
            snackbar.dismiss();
        }
        this.f16512n = null;
        a0();
        s2.c cVar = this.f16516r;
        if (cVar != null) {
            cVar.dismiss();
        }
        this.f16516r = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_comment) {
            Boolean bool = this.f16513o;
            if (bool == null) {
                return false;
            }
            bool.booleanValue();
            Boolean bool2 = this.f16513o;
            jc.l.c(bool2);
            if (bool2.booleanValue()) {
                q0();
            } else {
                androidx.fragment.app.e activity = getActivity();
                if (activity != null) {
                    k7.b.r(activity, "التعليقات معطلة", 0, 2, null);
                }
            }
        } else if (itemId == R.id.action_next) {
            s0();
        } else if (itemId == R.id.action_prev) {
            t0();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        jc.l.f(bundle, "outState");
        bundle.putBoolean("adShowed", this.f16519u);
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        r4.a a10;
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        r4.b b02 = b0();
        this.f16520v = (b02 == null || (a10 = b02.a()) == null) ? null : a10.f();
        String string = requireArguments().getString("arg_episode_title");
        androidx.fragment.app.e activity = getActivity();
        androidx.appcompat.app.e eVar = activity instanceof androidx.appcompat.app.e ? (androidx.appcompat.app.e) activity : null;
        androidx.appcompat.app.a supportActionBar = eVar != null ? eVar.getSupportActionBar() : null;
        if (supportActionBar != null) {
            supportActionBar.x(string);
        }
        this.f16508j = requireArguments().getString("arg_title");
        Context context = view.getContext();
        jc.l.e(context, "view.context");
        this.f16509k = new y6.j(context, this, wb.l.i(), "", "");
        c0().f8555e.setHasFixedSize(true);
        if (this.f16520v != null) {
            Context context2 = view.getContext();
            jc.l.e(context2, "view.context");
            r4.j jVar = this.f16520v;
            jc.l.c(jVar);
            this.f16510l = new a(context2, jVar);
            g.a a11 = new g.a.C0048a().b(g.a.b.SHARED_STABLE_IDS).a();
            jc.l.e(a11, "Builder()\n              …\n                .build()");
            c0().f8555e.setAdapter(new androidx.recyclerview.widget.g(a11, (RecyclerView.h<? extends RecyclerView.e0>[]) new RecyclerView.h[]{this.f16509k, this.f16510l}));
        } else {
            c0().f8555e.setAdapter(this.f16509k);
        }
        c0().f8554d.setOnProgressChangedListener(this.f16521w);
        h0().y().i(getViewLifecycleOwner(), new androidx.lifecycle.z() { // from class: y6.r
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                v.m0(v.this, (p4.k) obj);
            }
        });
        h0().u().i(getViewLifecycleOwner(), new androidx.lifecycle.z() { // from class: y6.t
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                v.n0(v.this, (b) obj);
            }
        });
        h0().B().i(getViewLifecycleOwner(), new androidx.lifecycle.z() { // from class: y6.u
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                v.o0(v.this, (c) obj);
            }
        });
        h0().t().i(getViewLifecycleOwner(), new androidx.lifecycle.z() { // from class: y6.s
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                v.p0(v.this, (a) obj);
            }
        });
        A0();
    }

    public final void q0() {
        androidx.fragment.app.e activity;
        p4.k r10 = h0().r();
        if (r10 == null || (activity = getActivity()) == null) {
            return;
        }
        ja.n b10 = com.github.salomonbrys.kotson.a.b(vb.n.a("episode_id", Long.valueOf(r10.e())));
        Intent intent = new Intent(activity, (Class<?>) CommentActivity.class);
        intent.putExtra("arg_json", b10.toString());
        intent.putExtra("arg_request_type", "GET_EPISODE_COMMENTS");
        intent.putExtra("anime_id", h0().o());
        if (f0().h().get().booleanValue()) {
            Context requireContext = requireContext();
            jc.l.e(requireContext, "requireContext()");
            s2.c.p(s2.c.v(s2.c.n(new s2.c(requireContext, null, 2, null), Integer.valueOf(R.string.comment_content_warning), null, null, 6, null), Integer.valueOf(R.string.Ok), null, new f(intent), 2, null), Integer.valueOf(R.string.Cancel), null, null, 6, null).show();
            return;
        }
        startActivity(intent);
    }

    public final void r0(String str, ArrayList<p4.n> arrayList, int i10) {
        boolean z10;
        Long q10;
        Long r10;
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        try {
            z10 = i7.b.f7890a.a(activity, h0().q().p());
        } catch (Exception unused) {
            z10 = false;
        }
        int i11 = -1;
        if (z10) {
            try {
                i11 = activity.getPackageManager().getPackageInfo(h0().q().p(), 1).versionCode;
            } catch (Exception unused2) {
            }
        }
        if (z10 && i11 >= h0().q().q()) {
            String m10 = jc.l.m(h0().q().p(), ".player.ExoPlayerActivity");
            p4.k r11 = h0().r();
            long j10 = 0;
            long longValue = (r11 == null || (q10 = r11.q()) == null) ? 0L : q10.longValue();
            p4.k r12 = h0().r();
            if (r12 != null && (r10 = r12.r()) != null) {
                j10 = r10.longValue();
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            Uri parse = Uri.parse(arrayList.get(i10).c());
            jc.l.e(parse, "parse(this)");
            intent.setDataAndType(parse, "video/*");
            intent.setPackage(h0().q().p());
            intent.setClassName(h0().q().p(), m10);
            intent.putExtra("title", str);
            String str2 = this.f16508j;
            if (str2 == null) {
                str2 = "";
            }
            intent.putExtra("anime_title", str2);
            intent.putExtra("qualities", d0().t(arrayList));
            intent.putExtra("default_quality", i10);
            intent.putExtra("skip_from", longValue);
            intent.putExtra("skip_to", j10);
            intent.putExtra("forwad_reward_amount", f0().w());
            intent.putExtra("ads_enabled", r4.c.a(h0().q()));
            try {
                startActivity(intent);
                return;
            } catch (Exception e10) {
                bd.c cVar = bd.c.ERROR;
                bd.e a10 = bd.e.f3616a.a();
                if (a10.b(cVar)) {
                    a10.a(cVar, bd.d.a(this), jc.l.m(true ^ qc.t.s("") ? jc.l.m("", "\n") : "", bd.f.a(e10)));
                    return;
                }
                return;
            }
        }
        if (z10 && i11 != h0().q().q()) {
            s2.c.r(s2.c.v(s2.c.p(s2.c.n(new s2.c(activity, null, 2, null), null, "يرجى تحديث ASD player الى اخر اصدار\n\nيمكنك تحديث التطبيق عن طريق البحث عن \"ASD player\" في متجر Play او متجر AppGallery", null, 5, null), Integer.valueOf(R.string.Cancel), null, null, 6, null), Integer.valueOf(R.string.Ok), null, null, 6, null), null, "نسخ 'ASD player'", new g(), 1, null).show();
        } else {
            s2.c.r(s2.c.v(s2.c.p(s2.c.n(new s2.c(activity, null, 2, null), null, "يُرجى تنزيل تطبيق المشغل السريع (ASD player) لتشغيل الفيديو\n\nيمكنك تنزيل التطبيق عن طريق البحث عن \"ASD player\" في متجر Play او متجر AppGallery", null, 5, null), Integer.valueOf(R.string.Cancel), null, null, 6, null), Integer.valueOf(R.string.Ok), null, null, 6, null), null, "نسخ 'ASD player'", new h(), 1, null).show();
        }
    }

    public final void s0() {
        List<r4.m> o10;
        androidx.fragment.app.e activity;
        p4.k r10 = h0().r();
        if (r10 == null || (o10 = r10.o()) == null || (activity = getActivity()) == null || o10.isEmpty()) {
            return;
        }
        if (!SupportExtentionKt.isConnectedToNetwork(activity)) {
            k7.b.q(activity, R.string.check_internet, 0, 2, null);
            return;
        }
        Bundle a10 = m0.b.a(vb.n.a("arg_title", this.f16508j), vb.n.a("episode_id", String.valueOf(o10.get(0).a())), vb.n.a("arg_episode_title", o10.get(0).c()), vb.n.a("anime_id", Long.valueOf(h0().o())));
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        jc.l.e(supportFragmentManager, "activity.supportFragmentManager");
        androidx.fragment.app.x m10 = supportFragmentManager.m();
        jc.l.e(m10, "beginTransaction()");
        m10.u(true);
        jc.l.e(m10.s(R.id.fragment_container_view, v.class, a10, null), "replace(containerViewId, F::class.java, args, tag)");
        m10.i();
    }

    public final void t0() {
        List<r4.m> p10;
        androidx.fragment.app.e activity;
        p4.k r10 = h0().r();
        if (r10 == null || (p10 = r10.p()) == null || (activity = getActivity()) == null || p10.isEmpty()) {
            return;
        }
        if (!SupportExtentionKt.isConnectedToNetwork(activity)) {
            k7.b.q(activity, R.string.check_internet, 0, 2, null);
            return;
        }
        Bundle a10 = m0.b.a(vb.n.a("arg_title", this.f16508j), vb.n.a("episode_id", String.valueOf(p10.get(0).a())), vb.n.a("arg_episode_title", p10.get(0).c()), vb.n.a("anime_id", Long.valueOf(h0().o())));
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        jc.l.e(supportFragmentManager, "activity.supportFragmentManager");
        androidx.fragment.app.x m10 = supportFragmentManager.m();
        jc.l.e(m10, "beginTransaction()");
        m10.u(true);
        jc.l.e(m10.s(R.id.fragment_container_view, v.class, a10, null), "replace(containerViewId, F::class.java, args, tag)");
        m10.i();
    }

    public final void u0(j4.n0 n0Var) {
        jc.l.f(n0Var, "<set-?>");
        this.f16504f.a(this, f16503y[0], n0Var);
    }

    public final void v0(p4.k kVar) {
        Float i10;
        String l10 = kVar.l();
        if (l10 == null) {
            l10 = "--";
        }
        TextView textView = c0().f8552b;
        String i11 = kVar.i();
        textView.setText(i11 == null || qc.t.s(i11) ? getString(R.string.text_episode_has_no_ratings) : getString(R.string.text_rating_details, kVar.i(), l10));
        String j10 = kVar.j();
        if (j10 == null || (i10 = qc.r.i(j10)) == null) {
            return;
        }
        c0().f8554d.setProgress(i10.floatValue());
    }

    public final void w0() {
        if (f0().l().get().booleanValue() && f0().b() && !h7.b.c(h0().r())) {
            androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
            jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
            rc.k.d(androidx.lifecycle.r.a(viewLifecycleOwner), null, null, new i(null), 3, null);
        }
    }

    public final void x0(y6.w wVar, y yVar) {
        wVar.g(yVar);
        j.c e02 = e0(wVar.b());
        if (e02 != null) {
            e02.h(wVar);
        }
        z0();
    }

    public final void y0(y6.b bVar) {
        y6.j jVar = this.f16509k;
        if (jVar == null) {
            return;
        }
        jVar.t(bVar.d());
        jVar.u(bVar.a().f());
        jVar.s(bVar.b());
        jVar.h(bVar.c());
    }

    public final void z0() {
        Object obj;
        j.c e02;
        y6.j jVar = this.f16509k;
        if (jVar != null && jVar.p()) {
            List<y6.w> e10 = jVar.e();
            jc.l.e(e10, "adapter.currentList");
            Iterator<T> it2 = e10.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                } else {
                    obj = it2.next();
                    if (((y6.w) obj).c()) {
                        break;
                    }
                }
            }
            y6.w wVar = (y6.w) obj;
            if (wVar == null || (e02 = e0(wVar.b())) == null) {
                return;
            }
            e02.f(true);
        }
    }
}
