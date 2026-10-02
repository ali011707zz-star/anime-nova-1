package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.g0;
import androidx.appcompat.widget.y0;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements j.a, View.OnClickListener, ActionMenuView.a {

    /* renamed from: f, reason: collision with root package name */
    public g f941f;

    /* renamed from: g, reason: collision with root package name */
    public CharSequence f942g;

    /* renamed from: h, reason: collision with root package name */
    public Drawable f943h;

    /* renamed from: i, reason: collision with root package name */
    public e.b f944i;

    /* renamed from: j, reason: collision with root package name */
    public g0 f945j;

    /* renamed from: k, reason: collision with root package name */
    public b f946k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f947l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f948m;

    /* renamed from: n, reason: collision with root package name */
    public int f949n;

    /* renamed from: o, reason: collision with root package name */
    public int f950o;

    /* renamed from: p, reason: collision with root package name */
    public int f951p;

    /* loaded from: classes.dex */
    public class a extends g0 {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.g0
        public k.f b() {
            b bVar = ActionMenuItemView.this.f946k;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.g0
        public boolean c() {
            k.f b10;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            e.b bVar = actionMenuItemView.f944i;
            return bVar != null && bVar.a(actionMenuItemView.f941f) && (b10 = b()) != null && b10.a();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract k.f a();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean a() {
        return c();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean b() {
        return c() && this.f941f.getIcon() == null;
    }

    public boolean c() {
        return !TextUtils.isEmpty(getText());
    }

    public final boolean d() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i10 = configuration.screenWidthDp;
        return i10 >= 480 || (i10 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public final void e() {
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(this.f942g);
        if (this.f943h != null && (!this.f941f.B() || (!this.f947l && !this.f948m))) {
            z10 = false;
        }
        boolean z12 = z11 & z10;
        setText(z12 ? this.f942g : null);
        CharSequence contentDescription = this.f941f.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z12 ? null : this.f941f.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f941f.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            y0.a(this, z12 ? null : this.f941f.getTitle());
        } else {
            y0.a(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.view.menu.j.a
    public g getItemData() {
        return this.f941f;
    }

    @Override // androidx.appcompat.view.menu.j.a
    public void initialize(g gVar, int i10) {
        this.f941f = gVar;
        setIcon(gVar.getIcon());
        setTitle(gVar.i(this));
        setId(gVar.getItemId());
        setVisibility(gVar.isVisible() ? 0 : 8);
        setEnabled(gVar.isEnabled());
        if (gVar.hasSubMenu() && this.f945j == null) {
            this.f945j = new a();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        e.b bVar = this.f944i;
        if (bVar != null) {
            bVar.a(this.f941f);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f947l = d();
        e();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        boolean c10 = c();
        if (c10 && (i13 = this.f950o) >= 0) {
            super.setPadding(i13, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int measuredWidth = getMeasuredWidth();
        if (mode == Integer.MIN_VALUE) {
            i12 = Math.min(size, this.f949n);
        } else {
            i12 = this.f949n;
        }
        if (mode != 1073741824 && this.f949n > 0 && measuredWidth < i12) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), i11);
        }
        if (c10 || this.f943h == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f943h.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        g0 g0Var;
        if (this.f941f.hasSubMenu() && (g0Var = this.f945j) != null && g0Var.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.view.menu.j.a
    public boolean prefersCondensedTitle() {
        return true;
    }

    public void setCheckable(boolean z10) {
    }

    public void setChecked(boolean z10) {
    }

    public void setExpandedFormat(boolean z10) {
        if (this.f948m != z10) {
            this.f948m = z10;
            g gVar = this.f941f;
            if (gVar != null) {
                gVar.c();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f943h = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i10 = this.f951p;
            if (intrinsicWidth > i10) {
                intrinsicHeight = (int) (intrinsicHeight * (i10 / intrinsicWidth));
                intrinsicWidth = i10;
            }
            if (intrinsicHeight > i10) {
                intrinsicWidth = (int) (intrinsicWidth * (i10 / intrinsicHeight));
            } else {
                i10 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i10);
        }
        setCompoundDrawables(drawable, null, null, null);
        e();
    }

    public void setItemInvoker(e.b bVar) {
        this.f944i = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        this.f950o = i10;
        super.setPadding(i10, i11, i12, i13);
    }

    public void setPopupCallback(b bVar) {
        this.f946k = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f942g = charSequence;
        e();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Resources resources = context.getResources();
        this.f947l = d();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.j.f5431v, i10, 0);
        this.f949n = obtainStyledAttributes.getDimensionPixelSize(d.j.f5436w, 0);
        obtainStyledAttributes.recycle();
        this.f951p = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f950o = -1;
        setSaveEnabled(false);
    }
}
