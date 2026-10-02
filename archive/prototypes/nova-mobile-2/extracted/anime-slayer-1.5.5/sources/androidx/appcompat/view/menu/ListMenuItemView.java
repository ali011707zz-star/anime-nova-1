package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.v0;
import q0.b0;

/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements j.a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: f, reason: collision with root package name */
    public g f956f;

    /* renamed from: g, reason: collision with root package name */
    public ImageView f957g;

    /* renamed from: h, reason: collision with root package name */
    public RadioButton f958h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f959i;

    /* renamed from: j, reason: collision with root package name */
    public CheckBox f960j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f961k;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f962l;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f963m;

    /* renamed from: n, reason: collision with root package name */
    public LinearLayout f964n;

    /* renamed from: o, reason: collision with root package name */
    public Drawable f965o;

    /* renamed from: p, reason: collision with root package name */
    public int f966p;

    /* renamed from: q, reason: collision with root package name */
    public Context f967q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f968r;

    /* renamed from: s, reason: collision with root package name */
    public Drawable f969s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f970t;

    /* renamed from: u, reason: collision with root package name */
    public LayoutInflater f971u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f972v;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.a.G);
    }

    private LayoutInflater getInflater() {
        if (this.f971u == null) {
            this.f971u = LayoutInflater.from(getContext());
        }
        return this.f971u;
    }

    private void setSubMenuArrowVisible(boolean z10) {
        ImageView imageView = this.f962l;
        if (imageView != null) {
            imageView.setVisibility(z10 ? 0 : 8);
        }
    }

    public final void a(View view) {
        b(view, -1);
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f963m;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f963m.getLayoutParams();
        rect.top += this.f963m.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    public final void b(View view, int i10) {
        LinearLayout linearLayout = this.f964n;
        if (linearLayout != null) {
            linearLayout.addView(view, i10);
        } else {
            addView(view, i10);
        }
    }

    public final void c() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(d.g.f5291h, (ViewGroup) this, false);
        this.f960j = checkBox;
        a(checkBox);
    }

    public final void d() {
        ImageView imageView = (ImageView) getInflater().inflate(d.g.f5292i, (ViewGroup) this, false);
        this.f957g = imageView;
        b(imageView, 0);
    }

    public final void e() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(d.g.f5294k, (ViewGroup) this, false);
        this.f958h = radioButton;
        a(radioButton);
    }

    public void f(boolean z10, char c10) {
        int i10 = (z10 && this.f956f.A()) ? 0 : 8;
        if (i10 == 0) {
            this.f961k.setText(this.f956f.h());
        }
        if (this.f961k.getVisibility() != i10) {
            this.f961k.setVisibility(i10);
        }
    }

    @Override // androidx.appcompat.view.menu.j.a
    public g getItemData() {
        return this.f956f;
    }

    @Override // androidx.appcompat.view.menu.j.a
    public void initialize(g gVar, int i10) {
        this.f956f = gVar;
        setVisibility(gVar.isVisible() ? 0 : 8);
        setTitle(gVar.i(this));
        setCheckable(gVar.isCheckable());
        f(gVar.A(), gVar.g());
        setIcon(gVar.getIcon());
        setEnabled(gVar.isEnabled());
        setSubMenuArrowVisible(gVar.hasSubMenu());
        setContentDescription(gVar.getContentDescription());
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        b0.x0(this, this.f965o);
        TextView textView = (TextView) findViewById(d.f.M);
        this.f959i = textView;
        int i10 = this.f966p;
        if (i10 != -1) {
            textView.setTextAppearance(this.f967q, i10);
        }
        this.f961k = (TextView) findViewById(d.f.F);
        ImageView imageView = (ImageView) findViewById(d.f.I);
        this.f962l = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f969s);
        }
        this.f963m = (ImageView) findViewById(d.f.f5275r);
        this.f964n = (LinearLayout) findViewById(d.f.f5269l);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.f957g != null && this.f968r) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f957g.getLayoutParams();
            int i12 = layoutParams.height;
            if (i12 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i12;
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override // androidx.appcompat.view.menu.j.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z10) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z10 && this.f958h == null && this.f960j == null) {
            return;
        }
        if (this.f956f.m()) {
            if (this.f958h == null) {
                e();
            }
            compoundButton = this.f958h;
            compoundButton2 = this.f960j;
        } else {
            if (this.f960j == null) {
                c();
            }
            compoundButton = this.f960j;
            compoundButton2 = this.f958h;
        }
        if (z10) {
            compoundButton.setChecked(this.f956f.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f960j;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f958h;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z10) {
        CompoundButton compoundButton;
        if (this.f956f.m()) {
            if (this.f958h == null) {
                e();
            }
            compoundButton = this.f958h;
        } else {
            if (this.f960j == null) {
                c();
            }
            compoundButton = this.f960j;
        }
        compoundButton.setChecked(z10);
    }

    public void setForceShowIcon(boolean z10) {
        this.f972v = z10;
        this.f968r = z10;
    }

    public void setGroupDividerEnabled(boolean z10) {
        ImageView imageView = this.f963m;
        if (imageView != null) {
            imageView.setVisibility((this.f970t || !z10) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z10 = this.f956f.z() || this.f972v;
        if (z10 || this.f968r) {
            ImageView imageView = this.f957g;
            if (imageView == null && drawable == null && !this.f968r) {
                return;
            }
            if (imageView == null) {
                d();
            }
            if (drawable == null && !this.f968r) {
                this.f957g.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.f957g;
            if (!z10) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.f957g.getVisibility() != 0) {
                this.f957g.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f959i.setText(charSequence);
            if (this.f959i.getVisibility() != 0) {
                this.f959i.setVisibility(0);
                return;
            }
            return;
        }
        if (this.f959i.getVisibility() != 8) {
            this.f959i.setVisibility(8);
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        v0 v10 = v0.v(getContext(), attributeSet, d.j.f5333b2, i10, 0);
        this.f965o = v10.g(d.j.f5344d2);
        this.f966p = v10.n(d.j.f5339c2, -1);
        this.f968r = v10.a(d.j.f5349e2, false);
        this.f967q = context;
        this.f969s = v10.g(d.j.f5354f2);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, d.a.C, 0);
        this.f970t = obtainStyledAttributes.hasValue(0);
        v10.w();
        obtainStyledAttributes.recycle();
    }
}
