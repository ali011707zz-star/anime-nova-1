package com.anslayer.widget;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatEditText;
import cc.f;
import cc.k;
import com.anslayer.R;
import com.anslayer.widget.SlayerComposerWidget;
import com.twitter.sdk.android.core.identity.AuthHandler;
import d7.g;
import io.wax911.support.base.view.CustomView;
import io.wax911.support.util.SupportLifecycleUtil;
import j4.f3;
import jc.l;
import jc.m;
import jc.u;
import kotlin.NoWhenBranchMatchedException;
import qc.t;
import rc.g1;
import rc.i;
import rc.q0;
import rc.v1;
import rc.y0;
import u5.n;
import vb.p;

/* compiled from: SlayerComposerWidget.kt */
/* loaded from: classes.dex */
public final class SlayerComposerWidget extends FrameLayout implements CustomView, SupportLifecycleUtil.LifecycleCallback {

    /* renamed from: f, reason: collision with root package name */
    public final f3 f4429f;

    /* renamed from: g, reason: collision with root package name */
    public SupportLifecycleUtil f4430g;

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f4431h;

    /* renamed from: i, reason: collision with root package name */
    public View.OnClickListener f4432i;

    /* renamed from: j, reason: collision with root package name */
    public m4.b f4433j;

    /* renamed from: k, reason: collision with root package name */
    public String f4434k;

    /* renamed from: l, reason: collision with root package name */
    public String f4435l;

    /* compiled from: TextView.kt */
    /* loaded from: classes.dex */
    public static final class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            boolean z10 = (editable == null ? 0 : editable.length()) > 150;
            TextView textView = SlayerComposerWidget.this.f4429f.f8359e;
            l.e(textView, "binding.remainingText");
            textView.setVisibility(z10 ? 0 : 8);
            if (z10) {
                SlayerComposerWidget.this.f4429f.f8359e.setText(String.valueOf(500 - SlayerComposerWidget.this.f4429f.f8357c.length()));
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    /* compiled from: SlayerComposerWidget.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.l<Boolean, p> {
        public b() {
            super(1);
        }

        public final void a(boolean z10) {
            m4.b model = SlayerComposerWidget.this.getModel();
            if (model == null) {
                return;
            }
            model.E(z10 ? "Yes" : "No");
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(Boolean bool) {
            a(bool.booleanValue());
            return p.f15031a;
        }
    }

    /* compiled from: SlayerComposerWidget.kt */
    @f(c = "com.anslayer.widget.SlayerComposerWidget$postCommentInEditTextField$1", f = "SlayerComposerWidget.kt", l = {185}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f4438f;

        /* renamed from: g, reason: collision with root package name */
        public int f4439g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ u f4440h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ SlayerComposerWidget f4441i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ Bundle f4442j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ String f4443k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(u uVar, SlayerComposerWidget slayerComposerWidget, Bundle bundle, String str, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f4440h = uVar;
            this.f4441i = slayerComposerWidget;
            this.f4442j = bundle;
            this.f4443k = str;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f4440h, this.f4441i, this.f4442j, this.f4443k, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            u uVar;
            Object d10 = bc.c.d();
            int i10 = this.f4439g;
            if (i10 == 0) {
                vb.k.b(obj);
                u uVar2 = this.f4440h;
                n presenter = this.f4441i.getPresenter();
                Bundle bundle = this.f4442j;
                bundle.putString("arg_request_type", this.f4443k);
                this.f4438f = uVar2;
                this.f4439g = 1;
                Object k10 = presenter.k(bundle, this);
                if (k10 == d10) {
                    return d10;
                }
                uVar = uVar2;
                obj = k10;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                uVar = (u) this.f4438f;
                vb.k.b(obj);
            }
            uVar.f9191f = ((Boolean) obj).booleanValue();
            return p.f15031a;
        }
    }

    /* compiled from: SlayerComposerWidget.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.l<Throwable, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ u f4445g;

        /* compiled from: SlayerComposerWidget.kt */
        @f(c = "com.anslayer.widget.SlayerComposerWidget$postCommentInEditTextField$2$1", f = "SlayerComposerWidget.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements ic.p<q0, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f4446f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ SlayerComposerWidget f4447g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ u f4448h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(SlayerComposerWidget slayerComposerWidget, u uVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f4447g = slayerComposerWidget;
                this.f4448h = uVar;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f4447g, this.f4448h, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Editable text;
                bc.c.d();
                if (this.f4446f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                try {
                    this.f4447g.h();
                    if (this.f4448h.f9191f && (text = this.f4447g.f4429f.f8357c.getText()) != null) {
                        text.clear();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                return p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(u uVar) {
            super(1);
            this.f4445g = uVar;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(Throwable th) {
            invoke2(th);
            return p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            if (th != null) {
                th.printStackTrace();
            }
            i.e(g1.c(), new a(SlayerComposerWidget.this, this.f4445g, null));
        }
    }

    /* compiled from: SlayerComposerWidget.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<n> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f4449f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context context) {
            super(0);
            this.f4449f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final n invoke() {
            return n.f14398g.newInstance(this.f4449f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlayerComposerWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        f3 b10 = f3.b(LayoutInflater.from(context), this, true);
        l.e(b10, "inflate(LayoutInflater.from(context), this, true)");
        this.f4429f = b10;
        onInit();
        this.f4431h = vb.f.a(new e(context));
        this.f4434k = "reply";
        this.f4435l = "";
    }

    public static final void f(SlayerComposerWidget slayerComposerWidget, View view) {
        l.f(slayerComposerWidget, "this$0");
        f4.d e10 = slayerComposerWidget.getPresenter().e();
        if (e10 == null) {
            return;
        }
        if (!e10.b()) {
            Context context = slayerComposerWidget.getContext();
            l.e(context, "context");
            k7.b.q(context, R.string.text_login_required, 0, 2, null);
            return;
        }
        Editable text = slayerComposerWidget.f4429f.f8357c.getText();
        if (!(text == null || t.s(text))) {
            if (!slayerComposerWidget.f4429f.f8365k.isFlipping()) {
                slayerComposerWidget.getClickLister().onClick(view);
                return;
            }
            Context context2 = slayerComposerWidget.getContext();
            l.e(context2, "context");
            k7.b.q(context2, R.string.text_please_wait, 0, 2, null);
            return;
        }
        Context context3 = slayerComposerWidget.getContext();
        l.e(context3, "context");
        k7.b.q(context3, R.string.warning_empty_input, 0, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n getPresenter() {
        return (n) this.f4431h.getValue();
    }

    public final void e(String str, boolean z10, String str2) {
        l.f(str, "text");
        l.f(str2, AuthHandler.EXTRA_USER_ID);
        if (z10) {
            this.f4435l = str2;
            this.f4434k = "tag";
        } else {
            this.f4434k = "reply";
        }
        this.f4429f.f8357c.getEditableText().insert(this.f4429f.f8357c.getSelectionStart(), str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0056. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0298  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(String str, e7.d dVar) {
        String str2;
        Bundle bundle;
        Bundle bundle2;
        y0 b10;
        Bundle bundle3;
        l.f(dVar, "params");
        if (this.f4429f.f8365k.getDisplayedChild() == 0) {
            this.f4429f.f8365k.showNext();
            boolean c10 = this.f4429f.f8364j.c();
            if (c10) {
                str2 = "Yes";
            } else {
                if (c10) {
                    throw new NoWhenBranchMatchedException();
                }
                str2 = "No";
            }
            String str3 = str2;
            String valueOf = String.valueOf(this.f4429f.f8357c.getText());
            if (str != null) {
                switch (str.hashCode()) {
                    case -1130140134:
                        if (str.equals("CREATE_SERIES_COMMENT")) {
                            bundle3 = new Bundle();
                            Long l10 = 0L;
                            try {
                                if (dVar.d().containsKey("anime_id")) {
                                    Object obj = dVar.d().get("anime_id");
                                    if (obj instanceof Double) {
                                        l10 = Long.valueOf((long) ((Number) obj).doubleValue());
                                    } else {
                                        if (obj == null) {
                                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                                        }
                                        l10 = (Long) obj;
                                    }
                                }
                            } catch (Exception e10) {
                                dVar.toString();
                                e10.getMessage();
                            }
                            bundle3.putLong("anime_id", l10.longValue());
                            bundle3.putString("commentText", valueOf);
                            bundle3.putString("commentSpoiler", str3);
                            bundle2 = bundle3;
                            u uVar = new u();
                            if (bundle2 != null) {
                                b10 = rc.k.b(v1.f13343f, null, null, new c(uVar, this, bundle2, str, null), 3, null);
                                b10.h0(new d(uVar));
                                return;
                            } else {
                                Toast.makeText(getContext(), R.string.text_processing_error, 1).show();
                                return;
                            }
                        }
                        break;
                    case -1113129373:
                        if (str.equals("CREATE_EPISODE_COMMENT_REPLY")) {
                            bundle3 = new Bundle();
                            Long l11 = 0L;
                            try {
                                if (dVar.d().containsKey("episode_comment_id")) {
                                    Object obj2 = dVar.d().get("episode_comment_id");
                                    if (obj2 instanceof Double) {
                                        l11 = Long.valueOf((long) ((Number) obj2).doubleValue());
                                    } else {
                                        if (obj2 == null) {
                                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                                        }
                                        l11 = (Long) obj2;
                                    }
                                }
                            } catch (Exception e11) {
                                dVar.toString();
                                e11.getMessage();
                            }
                            bundle3.putLong("episode_comment_id", l11.longValue());
                            bundle3.putString("commentText", valueOf);
                            bundle3.putString("commentSpoiler", str3);
                            bundle3.putString("recipient_id", this.f4435l);
                            bundle3.putString("notification_type", this.f4434k);
                            bundle2 = bundle3;
                            u uVar2 = new u();
                            if (bundle2 != null) {
                            }
                        }
                        break;
                    case -476523880:
                        if (str.equals("CREATE_EPISODE_COMMENT")) {
                            Bundle bundle4 = new Bundle();
                            Long l12 = 0L;
                            try {
                                if (dVar.d().containsKey("episode_id")) {
                                    Object obj3 = dVar.d().get("episode_id");
                                    if (obj3 instanceof Double) {
                                        l12 = Long.valueOf((long) ((Number) obj3).doubleValue());
                                    } else {
                                        if (obj3 == null) {
                                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                                        }
                                        l12 = (Long) obj3;
                                    }
                                }
                            } catch (Exception e12) {
                                dVar.toString();
                                e12.getMessage();
                            }
                            bundle4.putLong("episode_id", l12.longValue());
                            bundle4.putString("commentText", valueOf);
                            bundle4.putString("commentSpoiler", str3);
                            bundle2 = bundle4;
                            u uVar22 = new u();
                            if (bundle2 != null) {
                            }
                        }
                        break;
                    case 1287233356:
                        if (str.equals("EDIT_SERIES_COMMENT")) {
                            bundle = new Bundle();
                            m4.b model = getModel();
                            bundle.putLong("anime_comment_id", model != null ? model.e() : 0L);
                            bundle.putString("commentText", valueOf);
                            bundle.putString("commentSpoiler", str3);
                            bundle2 = bundle;
                            u uVar222 = new u();
                            if (bundle2 != null) {
                            }
                        }
                        break;
                    case 1447610278:
                        if (str.equals("EDIT_EPISODE_COMMENT")) {
                            bundle = new Bundle();
                            m4.b model2 = getModel();
                            bundle.putLong("episode_comment_id", model2 != null ? model2.e() : 0L);
                            bundle.putString("commentText", valueOf);
                            bundle.putString("commentSpoiler", str3);
                            bundle2 = bundle;
                            u uVar2222 = new u();
                            if (bundle2 != null) {
                            }
                        }
                        break;
                    case 1778085989:
                        if (str.equals("CREATE_SERIES_COMMENT_REPLY")) {
                            bundle3 = new Bundle();
                            Long l13 = 0L;
                            try {
                                if (dVar.d().containsKey("anime_comment_id")) {
                                    Object obj4 = dVar.d().get("anime_comment_id");
                                    if (obj4 instanceof Double) {
                                        l13 = Long.valueOf((long) ((Number) obj4).doubleValue());
                                    } else {
                                        if (obj4 == null) {
                                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                                        }
                                        l13 = (Long) obj4;
                                    }
                                }
                            } catch (Exception e13) {
                                dVar.toString();
                                e13.getMessage();
                            }
                            bundle3.putLong("anime_comment_id", l13.longValue());
                            bundle3.putString("commentText", valueOf);
                            bundle3.putString("commentSpoiler", str3);
                            bundle3.putString("recipient_id", this.f4435l);
                            bundle3.putString("notification_type", this.f4434k);
                            bundle2 = bundle3;
                            u uVar22222 = new u();
                            if (bundle2 != null) {
                            }
                        }
                        break;
                    case 1818390769:
                        if (str.equals("EDIT_EPISODE_COMMENT_REPLY")) {
                            bundle = new Bundle();
                            m4.b model3 = getModel();
                            bundle.putLong("episode_comment_reply_id", model3 != null ? model3.f() : 0L);
                            bundle.putString("commentText", valueOf);
                            bundle.putString("commentSpoiler", str3);
                            bundle2 = bundle;
                            u uVar222222 = new u();
                            if (bundle2 != null) {
                            }
                        }
                        break;
                    case 2011198487:
                        if (str.equals("EDIT_SERIES_COMMENT_REPLY")) {
                            bundle = new Bundle();
                            m4.b model4 = getModel();
                            bundle.putLong("anime_comment_reply_id", model4 != null ? model4.f() : 0L);
                            bundle.putString("commentText", valueOf);
                            bundle.putString("commentSpoiler", str3);
                            bundle2 = bundle;
                            u uVar2222222 = new u();
                            if (bundle2 != null) {
                            }
                        }
                        break;
                }
            }
            bundle = null;
            bundle2 = bundle;
            u uVar22222222 = new u();
            if (bundle2 != null) {
            }
        } else {
            Toast.makeText(getContext(), R.string.text_please_wait, 1).show();
        }
    }

    public final View.OnClickListener getClickLister() {
        View.OnClickListener onClickListener = this.f4432i;
        if (onClickListener != null) {
            return onClickListener;
        }
        l.v("clickLister");
        return null;
    }

    public final m4.b getModel() {
        return this.f4433j;
    }

    public final SpoilerView getSpoiler() {
        SpoilerView spoilerView = this.f4429f.f8364j;
        l.e(spoilerView, "binding.spoiler");
        return spoilerView;
    }

    public final void h() {
        if (this.f4429f.f8365k.getDisplayedChild() == 1) {
            this.f4429f.f8365k.setDisplayedChild(0);
        }
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onInit() {
        Context context = getContext();
        l.e(context, "context");
        this.f4430g = new SupportLifecycleUtil(context, this);
        SpoilerView spoilerView = this.f4429f.f8364j;
        m4.b bVar = this.f4433j;
        boolean z10 = false;
        if (bVar != null && g.d(bVar)) {
            z10 = true;
        }
        spoilerView.setChecked(z10);
        this.f4429f.f8364j.setOnChangeListener(new b());
        AppCompatEditText appCompatEditText = this.f4429f.f8357c;
        l.e(appCompatEditText, "binding.commentBox");
        appCompatEditText.addTextChangedListener(new a());
        this.f4429f.f8358d.setOnClickListener(new View.OnClickListener() { // from class: m7.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SlayerComposerWidget.f(SlayerComposerWidget.this, view);
            }
        });
    }

    @Override // io.wax911.support.util.SupportLifecycleUtil.LifecycleCallback
    public void onParentStopped() {
        onViewRecycled();
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onViewRecycled() {
        if (getContext() instanceof androidx.fragment.app.e) {
            Context context = getContext();
            if (context != null) {
                androidx.lifecycle.k lifecycle = ((androidx.fragment.app.e) context).getLifecycle();
                l.e(lifecycle, "context as FragmentActivity).lifecycle");
                SupportLifecycleUtil supportLifecycleUtil = this.f4430g;
                if (supportLifecycleUtil != null) {
                    supportLifecycleUtil.removeLifecycleObserver(lifecycle);
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            }
        }
        getPresenter().onDestroy();
    }

    public final void setClickLister(View.OnClickListener onClickListener) {
        l.f(onClickListener, "<set-?>");
        this.f4432i = onClickListener;
    }

    public final void setModel(m4.b bVar) {
        this.f4433j = bVar;
    }

    public final void setText(String str) {
        l.f(str, "textValue");
        Editable text = this.f4429f.f8357c.getText();
        if (text == null || text.length() == 0) {
            this.f4429f.f8357c.setText(str);
            this.f4429f.f8357c.requestFocus();
            AppCompatEditText appCompatEditText = this.f4429f.f8357c;
            l.e(appCompatEditText, "binding.commentBox");
            l7.p.j(appCompatEditText);
            return;
        }
        e(str, false, "");
    }
}
