package com.anslayer.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.y0;
import com.anslayer.R;
import com.anslayer.widget.SpoilerView;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import j4.m2;
import jc.g;
import jc.m;
import vb.e;
import vb.f;
import vb.p;

/* compiled from: SpoilerView.kt */
/* loaded from: classes.dex */
public final class SpoilerView extends FrameLayout {

    /* renamed from: f, reason: collision with root package name */
    public final m2 f4454f;

    /* renamed from: g, reason: collision with root package name */
    public final e f4455g;

    /* renamed from: h, reason: collision with root package name */
    public final int f4456h;

    /* renamed from: i, reason: collision with root package name */
    public l<? super Boolean, p> f4457i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4458j;

    /* compiled from: SpoilerView.kt */
    /* loaded from: classes.dex */
    public static final class a extends View.BaseSavedState {

        /* renamed from: f, reason: collision with root package name */
        public boolean f4460f;

        /* renamed from: g, reason: collision with root package name */
        public static final b f4459g = new b(null);
        public static final Parcelable.Creator<a> CREATOR = new C0086a();

        /* compiled from: SpoilerView.kt */
        /* renamed from: com.anslayer.widget.SpoilerView$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0086a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public a createFromParcel(Parcel parcel) {
                jc.l.f(parcel, "source");
                return new a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public a[] newArray(int i10) {
                return new a[i10];
            }
        }

        /* compiled from: SpoilerView.kt */
        /* loaded from: classes.dex */
        public static final class b {
            public b() {
            }

            public /* synthetic */ b(g gVar) {
                this();
            }
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        public final boolean a() {
            return this.f4460f;
        }

        public final void c(boolean z10) {
            this.f4460f = z10;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SpoilerView.SavedState{");
            String num = Integer.toString(System.identityHashCode(this), qc.a.a(16));
            jc.l.e(num, "toString(this, checkRadix(radix))");
            sb2.append(num);
            sb2.append(" checked=");
            sb2.append(this.f4460f);
            sb2.append('}');
            return sb2.toString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            jc.l.f(parcel, "out");
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Boolean.valueOf(this.f4460f));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Parcel parcel) {
            super(parcel);
            jc.l.f(parcel, "source");
            Object readValue = parcel.readValue(null);
            if (readValue == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
            }
            this.f4460f = ((Boolean) readValue).booleanValue();
        }
    }

    /* compiled from: SpoilerView.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<Integer> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f4461f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context) {
            super(0);
            this.f4461f = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // ic.a
        public final Integer invoke() {
            return Integer.valueOf(SupportExtentionKt.getCompatColor(this.f4461f, R.color.active));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpoilerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        jc.l.f(context, "context");
        m2 c10 = m2.c(LayoutInflater.from(context), this, true);
        jc.l.e(c10, "inflate(LayoutInflater.from(context), this, true)");
        this.f4454f = c10;
        this.f4455g = f.a(new b(context));
        this.f4456h = SupportExtentionKt.getCompatColor(context, R.color.opaque);
        setChecked(false);
        c10.b().setOnClickListener(new View.OnClickListener() { // from class: m7.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SpoilerView.b(SpoilerView.this, view);
            }
        });
    }

    public static final void b(SpoilerView spoilerView, View view) {
        jc.l.f(spoilerView, "this$0");
        spoilerView.setChecked(!spoilerView.f4458j);
    }

    private final int getActiveColor() {
        return ((Number) this.f4455g.getValue()).intValue();
    }

    public final boolean c() {
        return this.f4458j;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable != null) {
            a aVar = (a) parcelable;
            super.onRestoreInstanceState(aVar.getSuperState());
            setChecked(aVar.a());
            requestLayout();
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.anslayer.widget.SpoilerView.SavedState");
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.c(this.f4458j);
        return aVar;
    }

    public final void setChecked(boolean z10) {
        this.f4458j = z10;
        if (z10) {
            FrameLayout b10 = this.f4454f.b();
            jc.l.e(b10, "binding.root");
            y0.a(b10, b10.getContext().getString(R.string.spoiler_view_tooltip_spoiler));
        } else {
            FrameLayout b11 = this.f4454f.b();
            jc.l.e(b11, "binding.root");
            y0.a(b11, b11.getContext().getString(R.string.spoiler_view_tooltip));
        }
        l<? super Boolean, p> lVar = this.f4457i;
        if (lVar != null) {
            lVar.invoke(Boolean.valueOf(z10));
        }
        int activeColor = z10 ? getActiveColor() : this.f4456h;
        u0.f.c(this.f4454f.f8545b, null);
        u0.f.c(this.f4454f.f8545b, ColorStateList.valueOf(activeColor));
    }

    public final void setOnChangeListener(l<? super Boolean, p> lVar) {
        jc.l.f(lVar, "block");
        this.f4457i = lVar;
    }
}
