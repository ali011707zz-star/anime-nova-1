package com.anslayer.ui.profile.self.edit;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.NumberPicker;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.r;
import com.anslayer.R;
import com.anslayer.data.profile.UpdateProfileService;
import com.anslayer.ui.profile.self.edit.EditProfileActivity;
import com.anslayer.widget.MinMaxNumberPicker;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.twitter.sdk.android.core.internal.TwitterApiConstants;
import io.wax911.support.SupportExtentionKt;
import j4.a0;
import j4.x0;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import jc.v;
import jc.y;
import qc.t;
import qc.w;
import rc.q0;
import uc.c0;
import uc.u;
import wb.z;

/* compiled from: EditProfileActivity.kt */
/* loaded from: classes.dex */
public final class EditProfileActivity extends o5.a<x0> {

    /* renamed from: q, reason: collision with root package name */
    public static final a f4251q = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public w4.e f4252l = ((f4.d) yd.a.a().a(new n().getType())).N().get();

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f4253m = new k0(y.b(p6.i.class), new p(this), new o(this));

    /* renamed from: n, reason: collision with root package name */
    public final vb.e f4254n = vb.f.a(new c());

    /* renamed from: o, reason: collision with root package name */
    public final vb.e f4255o = vb.f.a(b.f4257f);

    /* renamed from: p, reason: collision with root package name */
    public u<Boolean> f4256p = c0.a(Boolean.TRUE);

    /* compiled from: EditProfileActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: EditProfileActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<qc.i> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f4257f = new b();

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final qc.i invoke() {
            return new qc.i("^[A-Za-z0-9_]+$");
        }
    }

    /* compiled from: EditProfileActivity.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<View> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final View invoke() {
            return LayoutInflater.from(EditProfileActivity.this).inflate(R.layout.menu_save, (ViewGroup) null, false);
        }
    }

    /* compiled from: EditProfileActivity.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileActivity$onActivityResult$1", f = "EditProfileActivity.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4259f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ File f4260g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ EditProfileActivity f4261h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(File file, EditProfileActivity editProfileActivity, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f4260g = file;
            this.f4261h = editProfileActivity;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f4260g, this.f4261h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f4259f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            File file = this.f4260g;
            jc.l.e(file, "imageFile");
            Uri fromFile = Uri.fromFile(file);
            jc.l.e(fromFile, "fromFile(this)");
            this.f4261h.c().f8806n.setImageURI(fromFile);
            if (this.f4261h.c().f8806n.getDrawable() != null) {
                this.f4261h.A().h(fromFile);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: EditProfileActivity.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileActivity$onActivityResult$2", f = "EditProfileActivity.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4262f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ File f4263g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ EditProfileActivity f4264h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(File file, EditProfileActivity editProfileActivity, ac.d<? super e> dVar) {
            super(2, dVar);
            this.f4263g = file;
            this.f4264h = editProfileActivity;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new e(this.f4263g, this.f4264h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f4262f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            File file = this.f4263g;
            jc.l.e(file, "imageFile");
            Uri fromFile = Uri.fromFile(file);
            jc.l.e(fromFile, "fromFile(this)");
            this.f4264h.c().f8805m.setImageURI(fromFile);
            if (this.f4264h.c().f8805m.getDrawable() != null) {
                this.f4264h.A().i(fromFile);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: EditProfileActivity.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileActivity$onCreate$2", f = "EditProfileActivity.kt", l = {97, 99}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class f extends cc.k implements ic.p<md.a, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4265f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f4266g;

        public f(ac.d<? super f> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            f fVar = new f(dVar);
            fVar.f4266g = obj;
            return fVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(md.a aVar, ac.d<? super vb.p> dVar) {
            return ((f) create(aVar, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Character v02;
            CharSequence t02;
            Object d10 = bc.c.d();
            int i10 = this.f4265f;
            if (i10 == 0) {
                vb.k.b(obj);
                md.a aVar = (md.a) this.f4266g;
                Editable a10 = aVar.a();
                if ((a10 == null || (v02 = w.v0(a10)) == null) ? false : qc.a.c(v02.charValue())) {
                    u uVar = EditProfileActivity.this.f4256p;
                    Boolean a11 = cc.b.a(false);
                    this.f4265f = 1;
                    if (uVar.a(a11, this) == d10) {
                        return d10;
                    }
                } else {
                    u uVar2 = EditProfileActivity.this.f4256p;
                    Editable a12 = aVar.a();
                    Boolean a13 = cc.b.a(((a12 != null && (t02 = qc.u.t0(a12)) != null) ? t02.length() : 0) > 4);
                    this.f4265f = 2;
                    if (uVar2.a(a13, this) == d10) {
                        return d10;
                    }
                }
            } else {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: EditProfileActivity.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileActivity$onCreate$5$4", f = "EditProfileActivity.kt", l = {158, 159}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class g extends cc.k implements ic.p<CharSequence, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public boolean f4268f;

        /* renamed from: g, reason: collision with root package name */
        public int f4269g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f4270h;

        public g(ac.d<? super g> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            g gVar = new g(dVar);
            gVar.f4270h = obj;
            return gVar;
        }

        @Override // ic.p
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CharSequence charSequence, ac.d<? super vb.p> dVar) {
            return ((g) create(charSequence, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x006b  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            String str;
            Object d10 = bc.c.d();
            int i10 = this.f4269g;
            if (i10 == 0) {
                vb.k.b(obj);
                CharSequence charSequence = (CharSequence) this.f4270h;
                p6.i A = EditProfileActivity.this.A();
                String obj2 = charSequence.toString();
                this.f4269g = 1;
                obj = A.b(obj2, this);
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    z10 = this.f4268f;
                    str = (String) this.f4270h;
                    vb.k.b(obj);
                    if (!z10) {
                        EditProfileActivity.this.c().f8807o.setError(null);
                        EditProfileActivity.this.c().f8807o.setEndIconDrawable(R.drawable.ic_baseline_check_circle_outline_24);
                    } else {
                        EditProfileActivity.this.c().f8807o.setError(str);
                        EditProfileActivity.this.c().f8807o.setEndIconDrawable(R.drawable.ic_baseline_error_outline_24);
                    }
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
            }
            vb.i iVar = (vb.i) obj;
            boolean booleanValue = ((Boolean) iVar.a()).booleanValue();
            String str2 = (String) iVar.b();
            u uVar = EditProfileActivity.this.f4256p;
            Boolean a10 = cc.b.a(booleanValue);
            this.f4270h = str2;
            this.f4268f = booleanValue;
            this.f4269g = 2;
            if (uVar.a(a10, this) == d10) {
                return d10;
            }
            z10 = booleanValue;
            str = str2;
            if (!z10) {
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: EditProfileActivity.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileActivity$onCreate$8", f = "EditProfileActivity.kt", l = {209}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class h extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4272f;

        /* compiled from: EditProfileActivity.kt */
        @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileActivity$onCreate$8$1", f = "EditProfileActivity.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<Boolean, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f4274f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ EditProfileActivity f4275g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(EditProfileActivity editProfileActivity, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f4275g = editProfileActivity;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f4275g, dVar);
            }

            public final Object f(boolean z10, ac.d<? super vb.p> dVar) {
                return ((a) create(Boolean.valueOf(z10), dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // ic.p
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, ac.d<? super vb.p> dVar) {
                return f(bool.booleanValue(), dVar);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f4274f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                this.f4275g.invalidateOptionsMenu();
                return vb.p.f15031a;
            }
        }

        public h(ac.d<? super h> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new h(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((h) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f4272f;
            if (i10 == 0) {
                vb.k.b(obj);
                u uVar = EditProfileActivity.this.f4256p;
                a aVar = new a(EditProfileActivity.this, null);
                this.f4272f = 1;
                if (uc.h.g(uVar, aVar, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes.dex */
    public static final class i implements uc.f<CharSequence> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ uc.f f4276f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ EditProfileActivity f4277g;

        /* compiled from: Collect.kt */
        /* loaded from: classes.dex */
        public static final class a implements uc.g<CharSequence> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ uc.g f4278f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ EditProfileActivity f4279g;

            @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileActivity$onCreate$lambda-6$$inlined$filter$1$2", f = "EditProfileActivity.kt", l = {137, 150}, m = "emit")
            /* renamed from: com.anslayer.ui.profile.self.edit.EditProfileActivity$i$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0082a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f4280f;

                /* renamed from: g, reason: collision with root package name */
                public int f4281g;

                /* renamed from: h, reason: collision with root package name */
                public Object f4282h;

                /* renamed from: i, reason: collision with root package name */
                public Object f4283i;

                /* renamed from: k, reason: collision with root package name */
                public Object f4285k;

                /* renamed from: l, reason: collision with root package name */
                public Object f4286l;

                public C0082a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f4280f = obj;
                    this.f4281g |= Integer.MIN_VALUE;
                    return a.this.a(null, this);
                }
            }

            public a(uc.g gVar, EditProfileActivity editProfileActivity) {
                this.f4278f = gVar;
                this.f4279g = editProfileActivity;
            }

            /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x00c4  */
            /* JADX WARN: Removed duplicated region for block: B:29:0x0098  */
            /* JADX WARN: Removed duplicated region for block: B:34:0x0048  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(CharSequence charSequence, ac.d dVar) {
                C0082a c0082a;
                int i10;
                boolean z10;
                uc.g gVar;
                a aVar;
                Object obj;
                CharSequence charSequence2;
                int length;
                if (dVar instanceof C0082a) {
                    c0082a = (C0082a) dVar;
                    int i11 = c0082a.f4281g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0082a.f4281g = i11 - Integer.MIN_VALUE;
                        Object obj2 = c0082a.f4280f;
                        Object d10 = bc.c.d();
                        i10 = c0082a.f4281g;
                        z10 = false;
                        if (i10 != 0) {
                            vb.k.b(obj2);
                            gVar = this.f4278f;
                            CharSequence charSequence3 = charSequence;
                            u uVar = this.f4279g.f4256p;
                            Boolean a10 = cc.b.a(false);
                            c0082a.f4282h = this;
                            c0082a.f4283i = charSequence;
                            c0082a.f4285k = gVar;
                            c0082a.f4286l = charSequence3;
                            c0082a.f4281g = 1;
                            if (uVar.a(a10, c0082a) == d10) {
                                return d10;
                            }
                            aVar = this;
                            obj = charSequence;
                            charSequence2 = charSequence3;
                        } else {
                            if (i10 != 1) {
                                if (i10 == 2) {
                                    vb.k.b(obj2);
                                    return vb.p.f15031a;
                                }
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            charSequence2 = (CharSequence) c0082a.f4286l;
                            gVar = (uc.g) c0082a.f4285k;
                            obj = c0082a.f4283i;
                            aVar = (a) c0082a.f4282h;
                            vb.k.b(obj2);
                        }
                        length = charSequence2.length();
                        if (5 <= length && length < 16) {
                            z10 = true;
                        }
                        if (!z10) {
                            aVar.f4279g.c().f8807o.setError(null);
                            aVar.f4279g.c().f8807o.setEndIconDrawable((Drawable) null);
                        } else {
                            aVar.f4279g.c().f8807o.setError(charSequence2.length() > 15 ? "اسم المتسخدم يجب ان يكون اقل من 16 حروف" : "اسم المتسخدم يجب ان يكون اكثر من 4 حروف");
                            aVar.f4279g.c().f8807o.setEndIconDrawable(R.drawable.ic_baseline_error_outline_24);
                        }
                        if (z10) {
                            c0082a.f4282h = null;
                            c0082a.f4283i = null;
                            c0082a.f4285k = null;
                            c0082a.f4286l = null;
                            c0082a.f4281g = 2;
                            if (gVar.a(obj, c0082a) == d10) {
                                return d10;
                            }
                        }
                        return vb.p.f15031a;
                    }
                }
                c0082a = new C0082a(dVar);
                Object obj22 = c0082a.f4280f;
                Object d102 = bc.c.d();
                i10 = c0082a.f4281g;
                z10 = false;
                if (i10 != 0) {
                }
                length = charSequence2.length();
                if (5 <= length) {
                    z10 = true;
                }
                if (!z10) {
                }
                if (z10) {
                }
                return vb.p.f15031a;
            }
        }

        public i(uc.f fVar, EditProfileActivity editProfileActivity) {
            this.f4276f = fVar;
            this.f4277g = editProfileActivity;
        }

        @Override // uc.f
        public Object b(uc.g<? super CharSequence> gVar, ac.d dVar) {
            Object b10 = this.f4276f.b(new a(gVar, this.f4277g), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes.dex */
    public static final class j implements uc.f<CharSequence> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ uc.f f4287f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ EditProfileActivity f4288g;

        /* compiled from: Collect.kt */
        /* loaded from: classes.dex */
        public static final class a implements uc.g<CharSequence> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ uc.g f4289f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ EditProfileActivity f4290g;

            @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileActivity$onCreate$lambda-6$$inlined$filter$2$2", f = "EditProfileActivity.kt", l = {146}, m = "emit")
            /* renamed from: com.anslayer.ui.profile.self.edit.EditProfileActivity$j$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0083a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f4291f;

                /* renamed from: g, reason: collision with root package name */
                public int f4292g;

                public C0083a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f4291f = obj;
                    this.f4292g |= Integer.MIN_VALUE;
                    return a.this.a(null, this);
                }
            }

            public a(uc.g gVar, EditProfileActivity editProfileActivity) {
                this.f4289f = gVar;
                this.f4290g = editProfileActivity;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(CharSequence charSequence, ac.d dVar) {
                C0083a c0083a;
                int i10;
                if (dVar instanceof C0083a) {
                    c0083a = (C0083a) dVar;
                    int i11 = c0083a.f4292g;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0083a.f4292g = i11 - Integer.MIN_VALUE;
                        Object obj = c0083a.f4291f;
                        Object d10 = bc.c.d();
                        i10 = c0083a.f4292g;
                        if (i10 != 0) {
                            vb.k.b(obj);
                            uc.g gVar = this.f4289f;
                            boolean b10 = this.f4290g.y().b(charSequence.toString());
                            if (b10) {
                                this.f4290g.c().f8807o.setError(null);
                                this.f4290g.c().f8807o.setEndIconDrawable((Drawable) null);
                            } else {
                                this.f4290g.c().f8807o.setError("فقط الارقام والحروف الانكليزية مسموحة");
                                this.f4290g.c().f8807o.setEndIconDrawable(R.drawable.ic_baseline_error_outline_24);
                            }
                            if (b10) {
                                c0083a.f4292g = 1;
                                if (gVar.a(charSequence, c0083a) == d10) {
                                    return d10;
                                }
                            }
                        } else if (i10 == 1) {
                            vb.k.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        return vb.p.f15031a;
                    }
                }
                c0083a = new C0083a(dVar);
                Object obj2 = c0083a.f4291f;
                Object d102 = bc.c.d();
                i10 = c0083a.f4292g;
                if (i10 != 0) {
                }
                return vb.p.f15031a;
            }
        }

        public j(uc.f fVar, EditProfileActivity editProfileActivity) {
            this.f4287f = fVar;
            this.f4288g = editProfileActivity;
        }

        @Override // uc.f
        public Object b(uc.g<? super CharSequence> gVar, ac.d dVar) {
            Object b10 = this.f4287f.b(new a(gVar, this.f4288g), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    /* compiled from: SafeCollector.common.kt */
    /* loaded from: classes.dex */
    public static final class k implements uc.f<CharSequence> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ uc.f f4294f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ EditProfileActivity f4295g;

        /* compiled from: Collect.kt */
        /* loaded from: classes.dex */
        public static final class a implements uc.g<CharSequence> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ uc.g f4296f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ EditProfileActivity f4297g;

            @cc.f(c = "com.anslayer.ui.profile.self.edit.EditProfileActivity$onCreate$lambda-6$$inlined$filter$3$2", f = "EditProfileActivity.kt", l = {TwitterApiConstants.Errors.ALREADY_FAVORITED, 142}, m = "emit")
            /* renamed from: com.anslayer.ui.profile.self.edit.EditProfileActivity$k$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0084a extends cc.d {

                /* renamed from: f, reason: collision with root package name */
                public /* synthetic */ Object f4298f;

                /* renamed from: g, reason: collision with root package name */
                public int f4299g;

                /* renamed from: h, reason: collision with root package name */
                public Object f4300h;

                /* renamed from: i, reason: collision with root package name */
                public Object f4301i;

                /* renamed from: k, reason: collision with root package name */
                public Object f4303k;

                /* renamed from: l, reason: collision with root package name */
                public int f4304l;

                public C0084a(ac.d dVar) {
                    super(dVar);
                }

                @Override // cc.a
                public final Object invokeSuspend(Object obj) {
                    this.f4298f = obj;
                    this.f4299g |= Integer.MIN_VALUE;
                    return a.this.a(null, this);
                }
            }

            public a(uc.g gVar, EditProfileActivity editProfileActivity) {
                this.f4296f = gVar;
                this.f4297g = editProfileActivity;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0093  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0096  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
            @Override // uc.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Object a(CharSequence charSequence, ac.d dVar) {
                C0084a c0084a;
                int i10;
                uc.g gVar;
                int i11;
                a aVar;
                CharSequence charSequence2;
                int i12;
                if (dVar instanceof C0084a) {
                    c0084a = (C0084a) dVar;
                    int i13 = c0084a.f4299g;
                    if ((i13 & Integer.MIN_VALUE) != 0) {
                        c0084a.f4299g = i13 - Integer.MIN_VALUE;
                        Object obj = c0084a.f4298f;
                        Object d10 = bc.c.d();
                        i10 = c0084a.f4299g;
                        if (i10 != 0) {
                            vb.k.b(obj);
                            gVar = this.f4296f;
                            i11 = !jc.l.a(charSequence.toString(), this.f4297g.f4252l.C()) ? 1 : 0;
                            if (i11 == 0) {
                                u uVar = this.f4297g.f4256p;
                                Boolean a10 = cc.b.a(true);
                                c0084a.f4300h = this;
                                c0084a.f4301i = charSequence;
                                c0084a.f4303k = gVar;
                                c0084a.f4304l = i11;
                                c0084a.f4299g = 1;
                                if (uVar.a(a10, c0084a) == d10) {
                                    return d10;
                                }
                                aVar = this;
                                charSequence2 = charSequence;
                                i12 = i11;
                            }
                            if (i11 != 0) {
                                c0084a.f4300h = null;
                                c0084a.f4301i = null;
                                c0084a.f4303k = null;
                                c0084a.f4299g = 2;
                                if (gVar.a(charSequence, c0084a) == d10) {
                                    return d10;
                                }
                            }
                            return vb.p.f15031a;
                        }
                        if (i10 != 1) {
                            if (i10 == 2) {
                                vb.k.b(obj);
                                return vb.p.f15031a;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i12 = c0084a.f4304l;
                        gVar = (uc.g) c0084a.f4303k;
                        Object obj2 = c0084a.f4301i;
                        aVar = (a) c0084a.f4300h;
                        vb.k.b(obj);
                        charSequence2 = obj2;
                        aVar.f4297g.c().f8807o.setHelperText(null);
                        i11 = i12;
                        charSequence = charSequence2;
                        if (i11 != 0) {
                        }
                        return vb.p.f15031a;
                    }
                }
                c0084a = new C0084a(dVar);
                Object obj3 = c0084a.f4298f;
                Object d102 = bc.c.d();
                i10 = c0084a.f4299g;
                if (i10 != 0) {
                }
                aVar.f4297g.c().f8807o.setHelperText(null);
                i11 = i12;
                charSequence = charSequence2;
                if (i11 != 0) {
                }
                return vb.p.f15031a;
            }
        }

        public k(uc.f fVar, EditProfileActivity editProfileActivity) {
            this.f4294f = fVar;
            this.f4295g = editProfileActivity;
        }

        @Override // uc.f
        public Object b(uc.g<? super CharSequence> gVar, ac.d dVar) {
            Object b10 = this.f4294f.b(new a(gVar, this.f4295g), dVar);
            return b10 == bc.c.d() ? b10 : vb.p.f15031a;
        }
    }

    /* compiled from: EditProfileActivity.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ v f4305f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ v f4306g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ v f4307h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ EditProfileActivity f4308i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(v vVar, v vVar2, v vVar3, EditProfileActivity editProfileActivity) {
            super(1);
            this.f4305f = vVar;
            this.f4306g = vVar2;
            this.f4307h = vVar3;
            this.f4308i = editProfileActivity;
        }

        public final void a(s2.c cVar) {
            Object valueOf;
            Object valueOf2;
            jc.l.f(cVar, "it");
            int i10 = this.f4305f.f9192f;
            if (i10 < 10) {
                valueOf = jc.l.m("0", Integer.valueOf(i10));
            } else {
                valueOf = Integer.valueOf(i10);
            }
            int i11 = this.f4306g.f9192f;
            if (i11 < 10) {
                valueOf2 = jc.l.m("0", Integer.valueOf(i11));
            } else {
                valueOf2 = Integer.valueOf(i11);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f4307h.f9192f);
            sb2.append('-');
            sb2.append(valueOf);
            sb2.append('-');
            sb2.append(valueOf2);
            String sb3 = sb2.toString();
            EditText editText = this.f4308i.c().f8796d.getEditText();
            if (editText == null) {
                return;
            }
            editText.setText(sb3);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: EditProfileActivity.kt */
    /* loaded from: classes.dex */
    public static final class m extends jc.m implements ic.l<s2.c, vb.p> {
        public m() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            EditText editText = EditProfileActivity.this.c().f8796d.getEditText();
            if (editText == null) {
                return;
            }
            editText.setText("");
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class n extends zd.a<f4.d> {
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class o extends jc.m implements ic.a<l0.b> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4310f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(ComponentActivity componentActivity) {
            super(0);
            this.f4310f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return this.f4310f.getDefaultViewModelProviderFactory();
        }
    }

    /* compiled from: ActivityViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class p extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ComponentActivity f4311f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(ComponentActivity componentActivity) {
            super(0);
            this.f4311f = componentActivity;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = this.f4311f.getViewModelStore();
            jc.l.e(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    public static final void B(EditProfileActivity editProfileActivity, View view) {
        jc.l.f(editProfileActivity, "this$0");
        editProfileActivity.onBackPressed();
    }

    public static final void C(EditProfileActivity editProfileActivity, View view) {
        jc.l.f(editProfileActivity, "this$0");
        editProfileActivity.I();
    }

    public static final void D(EditProfileActivity editProfileActivity, View view) {
        jc.l.f(editProfileActivity, "this$0");
        editProfileActivity.G();
    }

    public static final void E(EditProfileActivity editProfileActivity, View view) {
        jc.l.f(editProfileActivity, "this$0");
        editProfileActivity.H();
    }

    public static final void F(EditProfileActivity editProfileActivity, View view) {
        jc.l.f(editProfileActivity, "this$0");
        editProfileActivity.M();
    }

    public static final void J(v vVar, NumberPicker numberPicker, int i10, int i11) {
        jc.l.f(vVar, "$selectedYear");
        vVar.f9192f = i11;
    }

    public static final void K(v vVar, NumberPicker numberPicker, int i10, int i11) {
        jc.l.f(vVar, "$selectedMonth");
        vVar.f9192f = i11;
    }

    public static final void L(v vVar, NumberPicker numberPicker, int i10, int i11) {
        jc.l.f(vVar, "$selectedDay");
        vVar.f9192f = i11;
    }

    public final p6.i A() {
        return (p6.i) this.f4253m.getValue();
    }

    public final void G() {
        p8.a.f12093a.c(this).g().i().h(new String[]{"image/png", "image/jpg", "image/jpeg"}).k(165, 165).m(22);
    }

    public final void H() {
        p8.a.f12093a.c(this).f(20.0f, 10.0f).i().h(new String[]{"image/png", "image/jpg", "image/jpeg"}).k(700, 350).m(23);
    }

    public final void I() {
        List d02;
        List arrayList;
        String g10 = this.f4252l.g();
        if (g10 == null || (d02 = qc.u.d0(g10, new String[]{"-"}, false, 0, 6, null)) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(wb.m.q(d02, 10));
            Iterator it2 = d02.iterator();
            while (it2.hasNext()) {
                arrayList.add(Integer.valueOf(Integer.parseInt((String) it2.next())));
            }
        }
        if (arrayList == null) {
            arrayList = wb.l.l(1990, 1, 1);
        }
        int intValue = ((Number) arrayList.get(0)).intValue();
        int intValue2 = ((Number) arrayList.get(1)).intValue();
        int intValue3 = ((Number) arrayList.get(2)).intValue();
        final v vVar = new v();
        vVar.f9192f = intValue;
        final v vVar2 = new v();
        vVar2.f9192f = intValue2;
        final v vVar3 = new v();
        vVar3.f9192f = intValue3;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(SupportExtentionKt.getCompatColor(this, R.color.medium_red));
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) "إزالة");
        spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
        s2.c p10 = s2.c.p(s2.c.r(s2.c.v(w2.a.b(s2.c.y(new s2.c(this, null, 2, null), Integer.valueOf(R.string.birthday_picker_header_title), null, 2, null), Integer.valueOf(R.layout.birthdate_picker_dialog), null, false, false, true, false, 46, null), Integer.valueOf(R.string.text_ok), null, new l(vVar2, vVar3, vVar, this), 2, null), null, new SpannedString(spannableStringBuilder), new m(), 1, null), Integer.valueOf(R.string.Cancel), null, null, 6, null);
        a0 a10 = a0.a(w2.a.c(p10));
        jc.l.e(a10, "bind(dialog.getCustomView())");
        MinMaxNumberPicker minMaxNumberPicker = a10.f8129d;
        String[] strArr = new String[0];
        nc.e eVar = new nc.e(1900, 2100);
        ArrayList arrayList2 = new ArrayList(wb.m.q(eVar, 10));
        Iterator<Integer> it3 = eVar.iterator();
        while (it3.hasNext()) {
            arrayList2.add(String.valueOf(((z) it3).a()));
        }
        minMaxNumberPicker.setDisplayedValues((String[]) wb.h.l(strArr, arrayList2));
        minMaxNumberPicker.setValue(vVar.f9192f);
        minMaxNumberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: p6.g
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker, int i10, int i11) {
                EditProfileActivity.J(v.this, numberPicker, i10, i11);
            }
        });
        MinMaxNumberPicker minMaxNumberPicker2 = a10.f8128c;
        String[] strArr2 = new String[0];
        nc.e eVar2 = new nc.e(1, 12);
        ArrayList arrayList3 = new ArrayList(wb.m.q(eVar2, 10));
        Iterator<Integer> it4 = eVar2.iterator();
        while (it4.hasNext()) {
            arrayList3.add(String.valueOf(((z) it4).a()));
        }
        minMaxNumberPicker2.setDisplayedValues((String[]) wb.h.l(strArr2, arrayList3));
        minMaxNumberPicker2.setValue(vVar2.f9192f);
        minMaxNumberPicker2.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: p6.f
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker, int i10, int i11) {
                EditProfileActivity.K(v.this, numberPicker, i10, i11);
            }
        });
        MinMaxNumberPicker minMaxNumberPicker3 = a10.f8127b;
        String[] strArr3 = new String[0];
        nc.e eVar3 = new nc.e(1, 30);
        ArrayList arrayList4 = new ArrayList(wb.m.q(eVar3, 10));
        Iterator<Integer> it5 = eVar3.iterator();
        while (it5.hasNext()) {
            arrayList4.add(String.valueOf(((z) it5).a()));
        }
        minMaxNumberPicker3.setDisplayedValues((String[]) wb.h.l(strArr3, arrayList4));
        minMaxNumberPicker3.setValue(vVar3.f9192f);
        minMaxNumberPicker3.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: p6.h
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker, int i10, int i11) {
                EditProfileActivity.L(v.this, numberPicker, i10, i11);
            }
        });
        p10.show();
    }

    public final void M() {
        SupportExtentionKt.hideKeyboard(this);
        EditText editText = c().f8798f.getEditText();
        String obj = qc.u.t0(String.valueOf(editText == null ? null : editText.getText())).toString();
        EditText editText2 = c().f8807o.getEditText();
        String obj2 = qc.u.t0(String.valueOf(editText2 == null ? null : editText2.getText())).toString();
        EditText editText3 = c().f8794b.getEditText();
        String obj3 = qc.u.t0(String.valueOf(editText3 == null ? null : editText3.getText())).toString();
        EditText editText4 = c().f8800h.getEditText();
        String obj4 = qc.u.t0(String.valueOf(editText4 == null ? null : editText4.getText())).toString();
        EditText editText5 = c().f8796d.getEditText();
        String obj5 = qc.u.t0(String.valueOf(editText5 != null ? editText5.getText() : null)).toString();
        if (A().e() != null || A().d() != null || !jc.l.a(obj, this.f4252l.B()) || !jc.l.a(obj3, this.f4252l.f()) || !jc.l.a(obj4, this.f4252l.m()) || !jc.l.a(obj5, this.f4252l.g()) || !jc.l.a(obj2, this.f4252l.C())) {
            UpdateProfileService.f4088k.c(this, obj, A().d(), A().e(), obj2, obj3, obj4, obj5);
        }
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.activity_close_enter, R.anim.activity_close_exit);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        File a10;
        File a11;
        super.onActivityResult(i10, i11, intent);
        if (intent == null || i11 != -1) {
            return;
        }
        Uri data = intent.getData();
        if (i10 == 22) {
            if (data == null || (a10 = p8.a.f12093a.a(intent)) == null) {
                return;
            }
            rc.k.d(r.a(this), null, null, new d(a10, this, null), 3, null);
            return;
        }
        if (i10 != 23 || data == null || (a11 = p8.a.f12093a.a(intent)) == null) {
            return;
        }
        rc.k.d(r.a(this), null, null, new e(a11, this, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x026a  */
    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCreate(Bundle bundle) {
        Date date;
        Date date2;
        od.b<md.a> a10;
        uc.f w10;
        super.onCreate(bundle);
        x0 c10 = x0.c(getLayoutInflater());
        jc.l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8804l);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8804l.setNavigationOnClickListener(new View.OnClickListener() { // from class: p6.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditProfileActivity.B(EditProfileActivity.this, view);
            }
        });
        d4.c<Drawable> s10 = d4.a.b(c().f8805m).s(this.f4252l.y());
        r7.j jVar = r7.j.f12974c;
        s10.g(jVar).T(android.R.color.transparent).u0(c().f8805m);
        d4.a.b(c().f8806n).s(this.f4252l.E()).g(jVar).T(android.R.color.transparent).G0().H0().u0(c().f8806n);
        EditText editText = c().f8798f.getEditText();
        if (editText != null) {
            editText.setText(this.f4252l.B());
        }
        EditText editText2 = c().f8798f.getEditText();
        if (editText2 != null && (a10 = md.b.a(editText2)) != null && (w10 = uc.h.w(a10, new f(null))) != null) {
            uc.h.t(w10, r.a(this));
        }
        EditText editText3 = c().f8794b.getEditText();
        if (editText3 != null) {
            editText3.setText(this.f4252l.f());
        }
        EditText editText4 = c().f8800h.getEditText();
        if (editText4 != null) {
            editText4.setText(this.f4252l.m());
        }
        EditText editText5 = c().f8796d.getEditText();
        if (editText5 != null) {
            editText5.setText(this.f4252l.g());
        }
        EditText editText6 = c().f8796d.getEditText();
        if (editText6 != null) {
            editText6.setOnClickListener(new View.OnClickListener() { // from class: p6.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EditProfileActivity.C(EditProfileActivity.this, view);
                }
            });
        }
        TextView prefixTextView = c().f8807o.getPrefixTextView();
        jc.l.e(prefixTextView, "binding.username.prefixTextView");
        ViewGroup.LayoutParams layoutParams = prefixTextView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = -1;
            prefixTextView.setLayoutParams(layoutParams);
            c().f8807o.getPrefixTextView().setGravity(17);
            EditText editText7 = c().f8807o.getEditText();
            if (editText7 != null) {
                editText7.setText(this.f4252l.C());
            }
            EditText editText8 = c().f8807o.getEditText();
            if (editText8 != null) {
                uc.h.t(uc.h.w(new k(new j(new i(md.c.a(editText8), this), this), this), new g(null)), r.a(this));
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Karachi"));
            try {
                String j10 = this.f4252l.j();
                jc.l.c(j10);
                date = simpleDateFormat.parse(j10);
            } catch (Exception e10) {
                e = e10;
                date = null;
            }
            try {
                simpleDateFormat.setTimeZone(TimeZone.getDefault());
                jc.l.c(date);
                date2 = simpleDateFormat.parse(date.toString());
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
                date2 = date;
                if (date2 == null) {
                }
                c().f8806n.setOnClickListener(new View.OnClickListener() { // from class: p6.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        EditProfileActivity.D(EditProfileActivity.this, view);
                    }
                });
                c().f8805m.setOnClickListener(new View.OnClickListener() { // from class: p6.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        EditProfileActivity.E(EditProfileActivity.this, view);
                    }
                });
                rc.k.d(r.a(this), null, null, new h(null), 3, null);
                return;
            }
            if (date2 == null) {
                if (date2.compareTo(new Date()) > 0) {
                    c().f8798f.setEnabled(false);
                    String format = DateFormat.getDateTimeInstance(3, 2, Locale.UK).format(date2);
                    jc.l.e(format, GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG);
                    String lowerCase = format.toLowerCase();
                    jc.l.e(lowerCase, "this as java.lang.String).toLowerCase()");
                    c().f8798f.setHelperText(jc.l.m("يمكنك تغيير الاسم مجددا في ", t.v(t.v(lowerCase, "am", "صباحا", false, 4, null), "pm", "مساءا", false, 4, null)));
                } else {
                    c().f8798f.setEnabled(true);
                    c().f8798f.setHelperText("يمكنك تغيير الاسم مرة واحدة في الشهر");
                }
            } else {
                c().f8798f.setEnabled(true);
                c().f8798f.setHelperText("يمكنك تغيير الاسم مرة واحدة في الشهر");
            }
            c().f8806n.setOnClickListener(new View.OnClickListener() { // from class: p6.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EditProfileActivity.D(EditProfileActivity.this, view);
                }
            });
            c().f8805m.setOnClickListener(new View.OnClickListener() { // from class: p6.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EditProfileActivity.E(EditProfileActivity.this, view);
                }
            });
            rc.k.d(r.a(this), null, null, new h(null), 3, null);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        jc.l.f(menu, "menu");
        getMenuInflater().inflate(R.menu.edit_profile, menu);
        MenuItem findItem = menu.findItem(R.id.action_save);
        findItem.setActionView(z());
        TextView textView = (TextView) findItem.getActionView().findViewById(R.id.save);
        textView.setEnabled(this.f4256p.getValue().booleanValue());
        textView.setOnClickListener(new View.OnClickListener() { // from class: p6.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditProfileActivity.F(EditProfileActivity.this, view);
            }
        });
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.e, androidx.fragment.app.e, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        A().i(null);
        A().h(null);
    }

    public final qc.i y() {
        return (qc.i) this.f4255o.getValue();
    }

    public final View z() {
        return (View) this.f4254n.getValue();
    }
}
