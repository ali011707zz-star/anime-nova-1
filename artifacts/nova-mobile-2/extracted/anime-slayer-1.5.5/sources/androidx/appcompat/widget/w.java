package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.d;

/* compiled from: AppCompatSpinner.java */
/* loaded from: classes.dex */
public class w extends Spinner implements q0.z {

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f1501n = {R.attr.spinnerMode};

    /* renamed from: f, reason: collision with root package name */
    public final androidx.appcompat.widget.e f1502f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f1503g;

    /* renamed from: h, reason: collision with root package name */
    public g0 f1504h;

    /* renamed from: i, reason: collision with root package name */
    public SpinnerAdapter f1505i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f1506j;

    /* renamed from: k, reason: collision with root package name */
    public g f1507k;

    /* renamed from: l, reason: collision with root package name */
    public int f1508l;

    /* renamed from: m, reason: collision with root package name */
    public final Rect f1509m;

    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public class a extends g0 {

        /* renamed from: o, reason: collision with root package name */
        public final /* synthetic */ e f1510o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view, e eVar) {
            super(view);
            this.f1510o = eVar;
        }

        @Override // androidx.appcompat.widget.g0
        public k.f b() {
            return this.f1510o;
        }

        @Override // androidx.appcompat.widget.g0
        @SuppressLint({"SyntheticAccessor"})
        public boolean c() {
            if (w.this.getInternalPopup().a()) {
                return true;
            }
            w.this.b();
            return true;
        }
    }

    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!w.this.getInternalPopup().a()) {
                w.this.b();
            }
            ViewTreeObserver viewTreeObserver = w.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
    }

    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public class c implements g, DialogInterface.OnClickListener {

        /* renamed from: f, reason: collision with root package name */
        public androidx.appcompat.app.d f1513f;

        /* renamed from: g, reason: collision with root package name */
        public ListAdapter f1514g;

        /* renamed from: h, reason: collision with root package name */
        public CharSequence f1515h;

        public c() {
        }

        @Override // androidx.appcompat.widget.w.g
        public boolean a() {
            androidx.appcompat.app.d dVar = this.f1513f;
            if (dVar != null) {
                return dVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.w.g
        public int b() {
            return 0;
        }

        @Override // androidx.appcompat.widget.w.g
        public void dismiss() {
            androidx.appcompat.app.d dVar = this.f1513f;
            if (dVar != null) {
                dVar.dismiss();
                this.f1513f = null;
            }
        }

        @Override // androidx.appcompat.widget.w.g
        public Drawable e() {
            return null;
        }

        @Override // androidx.appcompat.widget.w.g
        public void g(CharSequence charSequence) {
            this.f1515h = charSequence;
        }

        @Override // androidx.appcompat.widget.w.g
        public void h(int i10) {
        }

        @Override // androidx.appcompat.widget.w.g
        public void i(int i10) {
        }

        @Override // androidx.appcompat.widget.w.g
        public void j(int i10) {
        }

        @Override // androidx.appcompat.widget.w.g
        public void k(int i10, int i11) {
            if (this.f1514g == null) {
                return;
            }
            d.a aVar = new d.a(w.this.getPopupContext());
            CharSequence charSequence = this.f1515h;
            if (charSequence != null) {
                aVar.setTitle(charSequence);
            }
            androidx.appcompat.app.d create = aVar.setSingleChoiceItems(this.f1514g, w.this.getSelectedItemPosition(), this).create();
            this.f1513f = create;
            ListView b10 = create.b();
            if (Build.VERSION.SDK_INT >= 17) {
                b10.setTextDirection(i10);
                b10.setTextAlignment(i11);
            }
            this.f1513f.show();
        }

        @Override // androidx.appcompat.widget.w.g
        public int l() {
            return 0;
        }

        @Override // androidx.appcompat.widget.w.g
        public CharSequence m() {
            return this.f1515h;
        }

        @Override // androidx.appcompat.widget.w.g
        public void n(ListAdapter listAdapter) {
            this.f1514g = listAdapter;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            w.this.setSelection(i10);
            if (w.this.getOnItemClickListener() != null) {
                w.this.performItemClick(null, i10, this.f1514g.getItemId(i10));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.w.g
        public void setBackgroundDrawable(Drawable drawable) {
        }
    }

    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public static class d implements ListAdapter, SpinnerAdapter {

        /* renamed from: f, reason: collision with root package name */
        public SpinnerAdapter f1517f;

        /* renamed from: g, reason: collision with root package name */
        public ListAdapter f1518g;

        public d(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1517f = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1518g = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof r0) {
                    r0 r0Var = (r0) spinnerAdapter;
                    if (r0Var.getDropDownViewTheme() == null) {
                        r0Var.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1518g;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1517f;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1517f;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1517f;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1517f;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i10);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i10) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1517f;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            ListAdapter listAdapter = this.f1518g;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i10);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1517f;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1517f;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public class e extends h0 implements g {
        public CharSequence O;
        public ListAdapter P;
        public final Rect Q;
        public int R;

        /* compiled from: AppCompatSpinner.java */
        /* loaded from: classes.dex */
        public class a implements AdapterView.OnItemClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ w f1519f;

            public a(w wVar) {
                this.f1519f = wVar;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
                w.this.setSelection(i10);
                if (w.this.getOnItemClickListener() != null) {
                    e eVar = e.this;
                    w.this.performItemClick(view, i10, eVar.P.getItemId(i10));
                }
                e.this.dismiss();
            }
        }

        /* compiled from: AppCompatSpinner.java */
        /* loaded from: classes.dex */
        public class b implements ViewTreeObserver.OnGlobalLayoutListener {
            public b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                e eVar = e.this;
                if (!eVar.S(w.this)) {
                    e.this.dismiss();
                } else {
                    e.this.Q();
                    e.super.show();
                }
            }
        }

        /* compiled from: AppCompatSpinner.java */
        /* loaded from: classes.dex */
        public class c implements PopupWindow.OnDismissListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f1522f;

            public c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f1522f = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = w.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1522f);
                }
            }
        }

        public e(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.Q = new Rect();
            B(w.this);
            H(true);
            M(0);
            J(new a(w.this));
        }

        public void Q() {
            int R;
            Drawable e10 = e();
            int i10 = 0;
            if (e10 != null) {
                e10.getPadding(w.this.f1509m);
                i10 = c1.b(w.this) ? w.this.f1509m.right : -w.this.f1509m.left;
            } else {
                Rect rect = w.this.f1509m;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = w.this.getPaddingLeft();
            int paddingRight = w.this.getPaddingRight();
            int width = w.this.getWidth();
            w wVar = w.this;
            int i11 = wVar.f1508l;
            if (i11 == -2) {
                int a10 = wVar.a((SpinnerAdapter) this.P, e());
                int i12 = w.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = w.this.f1509m;
                int i13 = (i12 - rect2.left) - rect2.right;
                if (a10 > i13) {
                    a10 = i13;
                }
                D(Math.max(a10, (width - paddingLeft) - paddingRight));
            } else if (i11 == -1) {
                D((width - paddingLeft) - paddingRight);
            } else {
                D(i11);
            }
            if (c1.b(w.this)) {
                R = i10 + (((width - paddingRight) - x()) - R());
            } else {
                R = i10 + paddingLeft + R();
            }
            j(R);
        }

        public int R() {
            return this.R;
        }

        public boolean S(View view) {
            return q0.b0.W(view) && view.getGlobalVisibleRect(this.Q);
        }

        @Override // androidx.appcompat.widget.w.g
        public void g(CharSequence charSequence) {
            this.O = charSequence;
        }

        @Override // androidx.appcompat.widget.w.g
        public void i(int i10) {
            this.R = i10;
        }

        @Override // androidx.appcompat.widget.w.g
        public void k(int i10, int i11) {
            ViewTreeObserver viewTreeObserver;
            boolean a10 = a();
            Q();
            G(2);
            super.show();
            ListView f10 = f();
            f10.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                f10.setTextDirection(i10);
                f10.setTextAlignment(i11);
            }
            N(w.this.getSelectedItemPosition());
            if (a10 || (viewTreeObserver = w.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            I(new c(bVar));
        }

        @Override // androidx.appcompat.widget.w.g
        public CharSequence m() {
            return this.O;
        }

        @Override // androidx.appcompat.widget.h0, androidx.appcompat.widget.w.g
        public void n(ListAdapter listAdapter) {
            super.n(listAdapter);
            this.P = listAdapter;
        }
    }

    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public static class f extends View.BaseSavedState {
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public boolean f1524f;

        /* compiled from: AppCompatSpinner.java */
        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<f> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public f createFromParcel(Parcel parcel) {
                return new f(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public f[] newArray(int i10) {
                return new f[i10];
            }
        }

        public f(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.f1524f ? (byte) 1 : (byte) 0);
        }

        public f(Parcel parcel) {
            super(parcel);
            this.f1524f = parcel.readByte() != 0;
        }
    }

    /* compiled from: AppCompatSpinner.java */
    /* loaded from: classes.dex */
    public interface g {
        boolean a();

        int b();

        void dismiss();

        Drawable e();

        void g(CharSequence charSequence);

        void h(int i10);

        void i(int i10);

        void j(int i10);

        void k(int i10, int i11);

        int l();

        CharSequence m();

        void n(ListAdapter listAdapter);

        void setBackgroundDrawable(Drawable drawable);
    }

    public w(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.a.O);
    }

    public int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i10 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i11 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i11 = Math.max(i11, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i11;
        }
        drawable.getPadding(this.f1509m);
        Rect rect = this.f1509m;
        return i11 + rect.left + rect.right;
    }

    public void b() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1507k.k(getTextDirection(), getTextAlignment());
        } else {
            this.f1507k.k(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.e eVar = this.f1502f;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        g gVar = this.f1507k;
        if (gVar != null) {
            return gVar.b();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        g gVar = this.f1507k;
        if (gVar != null) {
            return gVar.l();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f1507k != null) {
            return this.f1508l;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    public final g getInternalPopup() {
        return this.f1507k;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        g gVar = this.f1507k;
        if (gVar != null) {
            return gVar.e();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1503g;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        g gVar = this.f1507k;
        return gVar != null ? gVar.m() : super.getPrompt();
    }

    @Override // q0.z
    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.e eVar = this.f1502f;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // q0.z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.e eVar = this.f1502f;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g gVar = this.f1507k;
        if (gVar == null || !gVar.a()) {
            return;
        }
        this.f1507k.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f1507k == null || View.MeasureSpec.getMode(i10) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        if (!fVar.f1524f || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        g gVar = this.f1507k;
        fVar.f1524f = gVar != null && gVar.a();
        return fVar;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        g0 g0Var = this.f1504h;
        if (g0Var == null || !g0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        g gVar = this.f1507k;
        if (gVar != null) {
            if (gVar.a()) {
                return true;
            }
            b();
            return true;
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.e eVar = this.f1502f;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        androidx.appcompat.widget.e eVar = this.f1502f;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i10) {
        g gVar = this.f1507k;
        if (gVar != null) {
            gVar.i(i10);
            this.f1507k.j(i10);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i10) {
        g gVar = this.f1507k;
        if (gVar != null) {
            gVar.h(i10);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i10) {
        if (this.f1507k != null) {
            this.f1508l = i10;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        g gVar = this.f1507k;
        if (gVar != null) {
            gVar.setBackgroundDrawable(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i10) {
        setPopupBackgroundDrawable(f.a.b(getPopupContext(), i10));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        g gVar = this.f1507k;
        if (gVar != null) {
            gVar.g(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // q0.z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        androidx.appcompat.widget.e eVar = this.f1502f;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // q0.z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        androidx.appcompat.widget.e eVar = this.f1502f;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public w(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, -1);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1506j) {
            this.f1505i = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1507k != null) {
            Context context = this.f1503g;
            if (context == null) {
                context = getContext();
            }
            this.f1507k.n(new d(spinnerAdapter, context.getTheme()));
        }
    }

    public w(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(context, attributeSet, i10, i11, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        if (r10 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public w(Context context, AttributeSet attributeSet, int i10, int i11, Resources.Theme theme) {
        super(context, attributeSet, i10);
        TypedArray typedArray;
        this.f1509m = new Rect();
        q0.a(this, getContext());
        v0 v10 = v0.v(context, attributeSet, d.j.F2, i10, 0);
        this.f1502f = new androidx.appcompat.widget.e(this);
        if (theme != null) {
            this.f1503g = new j.d(context, theme);
        } else {
            int n10 = v10.n(d.j.K2, 0);
            if (n10 != 0) {
                this.f1503g = new j.d(context, n10);
            } else {
                this.f1503g = context;
            }
        }
        TypedArray typedArray2 = null;
        if (i11 == -1) {
            try {
                typedArray = context.obtainStyledAttributes(attributeSet, f1501n, i10, 0);
                try {
                    if (typedArray.hasValue(0)) {
                        i11 = typedArray.getInt(0, 0);
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    th = th;
                    typedArray2 = typedArray;
                    if (typedArray2 != null) {
                        typedArray2.recycle();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                typedArray = null;
            } catch (Throwable th2) {
                th = th2;
            }
            typedArray.recycle();
        }
        if (i11 == 0) {
            c cVar = new c();
            this.f1507k = cVar;
            cVar.g(v10.o(d.j.I2));
        } else if (i11 == 1) {
            e eVar = new e(this.f1503g, attributeSet, i10);
            v0 v11 = v0.v(this.f1503g, attributeSet, d.j.F2, i10, 0);
            this.f1508l = v11.m(d.j.J2, -2);
            eVar.setBackgroundDrawable(v11.g(d.j.H2));
            eVar.g(v10.o(d.j.I2));
            v11.w();
            this.f1507k = eVar;
            this.f1504h = new a(this, eVar);
        }
        CharSequence[] q10 = v10.q(d.j.G2);
        if (q10 != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, q10);
            arrayAdapter.setDropDownViewResource(d.g.f5303t);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        v10.w();
        this.f1506j = true;
        SpinnerAdapter spinnerAdapter = this.f1505i;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f1505i = null;
        }
        this.f1502f.e(attributeSet, i10);
    }
}
