package com.afollestad.materialdialogs.internal.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.appcompat.widget.f;
import d3.e;
import jc.g;
import jc.l;
import jc.m;

/* compiled from: DialogActionButton.kt */
/* loaded from: classes.dex */
public final class DialogActionButton extends f {

    /* renamed from: h, reason: collision with root package name */
    public static final a f3968h = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public int f3969f;

    /* renamed from: g, reason: collision with root package name */
    public int f3970g;

    /* compiled from: DialogActionButton.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: DialogActionButton.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<Integer> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f3971f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context) {
            super(0);
            this.f3971f = context;
        }

        public final int a() {
            return e.l(e.f5611a, this.f3971f, null, Integer.valueOf(s2.f.f13660d), null, 10, null);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ Integer invoke() {
            return Integer.valueOf(a());
        }
    }

    /* compiled from: DialogActionButton.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<Integer> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f3972f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.f3972f = context;
        }

        public final int a() {
            return d3.a.a(e.l(e.f5611a, this.f3972f, null, Integer.valueOf(s2.f.f13660d), null, 10, null), 0.12f);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ Integer invoke() {
            return Integer.valueOf(a());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.g(context, "context");
        setClickable(true);
        setFocusable(true);
    }

    public final void a(Context context, Context context2, boolean z10) {
        int i10;
        int l10;
        l.g(context, "baseContext");
        l.g(context2, "appContext");
        e eVar = e.f5611a;
        setSupportAllCaps(eVar.r(context2, s2.f.f13662f, 1) == 1);
        boolean b10 = s2.l.b(context2);
        this.f3969f = e.l(eVar, context2, null, Integer.valueOf(s2.f.f13664h), new b(context2), 2, null);
        if (b10) {
            i10 = s2.g.f13677b;
        } else {
            i10 = s2.g.f13676a;
        }
        this.f3970g = e.l(eVar, context, Integer.valueOf(i10), null, null, 12, null);
        setTextColor(this.f3969f);
        Drawable q10 = e.q(eVar, context, null, Integer.valueOf(s2.f.f13663g), null, 10, null);
        if (Build.VERSION.SDK_INT >= 21 && (q10 instanceof RippleDrawable) && (l10 = e.l(eVar, context, null, Integer.valueOf(s2.f.f13675s), new c(context2), 2, null)) != 0) {
            ((RippleDrawable) q10).setColor(ColorStateList.valueOf(l10));
        }
        setBackground(q10);
        if (z10) {
            d3.f.f(this);
        } else {
            setGravity(17);
        }
        setEnabled(isEnabled());
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        setTextColor(z10 ? this.f3969f : this.f3970g);
    }
}
