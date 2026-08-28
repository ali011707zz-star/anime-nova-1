package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.Preference;
import m1.f;
import m1.g;
import m1.j;
import m1.n;

/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {
    public int V;
    public int W;
    public int X;
    public int Y;
    public boolean Z;

    /* renamed from: a0, reason: collision with root package name */
    public SeekBar f2605a0;

    /* renamed from: b0, reason: collision with root package name */
    public TextView f2606b0;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f2607c0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f2608d0;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f2609e0;

    /* renamed from: f0, reason: collision with root package name */
    public SeekBar.OnSeekBarChangeListener f2610f0;

    /* renamed from: g0, reason: collision with root package name */
    public View.OnKeyListener f2611g0;

    /* loaded from: classes.dex */
    public class a implements SeekBar.OnSeekBarChangeListener {
        public a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
            if (z10) {
                SeekBarPreference seekBarPreference = SeekBarPreference.this;
                if (seekBarPreference.f2609e0 || !seekBarPreference.Z) {
                    seekBarPreference.L0(seekBar);
                    return;
                }
            }
            SeekBarPreference seekBarPreference2 = SeekBarPreference.this;
            seekBarPreference2.M0(i10 + seekBarPreference2.W);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            SeekBarPreference.this.Z = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            SeekBarPreference.this.Z = false;
            int progress = seekBar.getProgress();
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            if (progress + seekBarPreference.W != seekBarPreference.V) {
                seekBarPreference.L0(seekBar);
            }
        }
    }

    /* loaded from: classes.dex */
    public class b implements View.OnKeyListener {
        public b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i10, KeyEvent keyEvent) {
            SeekBar seekBar;
            if (keyEvent.getAction() != 0) {
                return false;
            }
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            if ((!seekBarPreference.f2607c0 && (i10 == 21 || i10 == 22)) || i10 == 23 || i10 == 66 || (seekBar = seekBarPreference.f2605a0) == null) {
                return false;
            }
            return seekBar.onKeyDown(i10, keyEvent);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2610f0 = new a();
        this.f2611g0 = new b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.f10775t1, i10, i11);
        this.W = obtainStyledAttributes.getInt(n.f10784w1, 0);
        H0(obtainStyledAttributes.getInt(n.f10778u1, 100));
        I0(obtainStyledAttributes.getInt(n.f10787x1, 0));
        this.f2607c0 = obtainStyledAttributes.getBoolean(n.f10781v1, true);
        this.f2608d0 = obtainStyledAttributes.getBoolean(n.f10790y1, false);
        this.f2609e0 = obtainStyledAttributes.getBoolean(n.f10793z1, false);
        obtainStyledAttributes.recycle();
    }

    public final void H0(int i10) {
        int i11 = this.W;
        if (i10 < i11) {
            i10 = i11;
        }
        if (i10 != this.X) {
            this.X = i10;
            J();
        }
    }

    public final void I0(int i10) {
        if (i10 != this.Y) {
            this.Y = Math.min(this.X - this.W, Math.abs(i10));
            J();
        }
    }

    public void J0(int i10) {
        K0(i10, true);
    }

    public final void K0(int i10, boolean z10) {
        int i11 = this.W;
        if (i10 < i11) {
            i10 = i11;
        }
        int i12 = this.X;
        if (i10 > i12) {
            i10 = i12;
        }
        if (i10 != this.V) {
            this.V = i10;
            M0(i10);
            d0(i10);
            if (z10) {
                J();
            }
        }
    }

    public void L0(SeekBar seekBar) {
        int progress = this.W + seekBar.getProgress();
        if (progress != this.V) {
            if (b(Integer.valueOf(progress))) {
                K0(progress, false);
            } else {
                seekBar.setProgress(this.V - this.W);
                M0(this.V);
            }
        }
    }

    public void M0(int i10) {
        TextView textView = this.f2606b0;
        if (textView != null) {
            textView.setText(String.valueOf(i10));
        }
    }

    @Override // androidx.preference.Preference
    public void P(f fVar) {
        super.P(fVar);
        fVar.itemView.setOnKeyListener(this.f2611g0);
        this.f2605a0 = (SeekBar) fVar.a(j.f10697c);
        TextView textView = (TextView) fVar.a(j.f10698d);
        this.f2606b0 = textView;
        if (this.f2608d0) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.f2606b0 = null;
        }
        SeekBar seekBar = this.f2605a0;
        if (seekBar == null) {
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.f2610f0);
        this.f2605a0.setMax(this.X - this.W);
        int i10 = this.Y;
        if (i10 != 0) {
            this.f2605a0.setKeyProgressIncrement(i10);
        } else {
            this.Y = this.f2605a0.getKeyProgressIncrement();
        }
        this.f2605a0.setProgress(this.V - this.W);
        M0(this.V);
        this.f2605a0.setEnabled(F());
    }

    @Override // androidx.preference.Preference
    public Object T(TypedArray typedArray, int i10) {
        return Integer.valueOf(typedArray.getInt(i10, 0));
    }

    @Override // androidx.preference.Preference
    public void W(Parcelable parcelable) {
        if (!parcelable.getClass().equals(c.class)) {
            super.W(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.W(cVar.getSuperState());
        this.V = cVar.f2614f;
        this.W = cVar.f2615g;
        this.X = cVar.f2616h;
        J();
    }

    @Override // androidx.preference.Preference
    public Parcelable X() {
        Parcelable X = super.X();
        if (G()) {
            return X;
        }
        c cVar = new c(X);
        cVar.f2614f = this.V;
        cVar.f2615g = this.W;
        cVar.f2616h = this.X;
        return cVar;
    }

    @Override // androidx.preference.Preference
    public void Y(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        J0(t(((Integer) obj).intValue()));
    }

    /* loaded from: classes.dex */
    public static class c extends Preference.b {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public int f2614f;

        /* renamed from: g, reason: collision with root package name */
        public int f2615g;

        /* renamed from: h, reason: collision with root package name */
        public int f2616h;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(Parcel parcel) {
            super(parcel);
            this.f2614f = parcel.readInt();
            this.f2615g = parcel.readInt();
            this.f2616h = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2614f);
            parcel.writeInt(this.f2615g);
            parcel.writeInt(this.f2616h);
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, g.f10690k);
    }
}
