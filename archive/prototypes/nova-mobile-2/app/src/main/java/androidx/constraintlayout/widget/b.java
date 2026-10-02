package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Arrays;
import java.util.HashMap;
import w.h;

/* compiled from: ConstraintHelper.java */
/* loaded from: classes.dex */
public abstract class b extends View {

    /* renamed from: f, reason: collision with root package name */
    public int[] f1684f;

    /* renamed from: g, reason: collision with root package name */
    public int f1685g;

    /* renamed from: h, reason: collision with root package name */
    public Context f1686h;

    /* renamed from: i, reason: collision with root package name */
    public h f1687i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f1688j;

    /* renamed from: k, reason: collision with root package name */
    public String f1689k;

    /* renamed from: l, reason: collision with root package name */
    public String f1690l;

    /* renamed from: m, reason: collision with root package name */
    public View[] f1691m;

    /* renamed from: n, reason: collision with root package name */
    public HashMap<Integer, String> f1692n;

    public b(Context context) {
        super(context);
        this.f1684f = new int[32];
        this.f1688j = false;
        this.f1691m = null;
        this.f1692n = new HashMap<>();
        this.f1686h = context;
        n(null);
    }

    public final void e(String str) {
        if (str == null || str.length() == 0 || this.f1686h == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int l10 = l(trim);
        if (l10 != 0) {
            this.f1692n.put(Integer.valueOf(l10), trim);
            f(l10);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not find id of \"");
            sb2.append(trim);
            sb2.append("\"");
        }
    }

    public final void f(int i10) {
        if (i10 == getId()) {
            return;
        }
        int i11 = this.f1685g + 1;
        int[] iArr = this.f1684f;
        if (i11 > iArr.length) {
            this.f1684f = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1684f;
        int i12 = this.f1685g;
        iArr2[i12] = i10;
        this.f1685g = i12 + 1;
    }

    public final void g(String str) {
        if (str == null || str.length() == 0 || this.f1686h == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.b) && trim.equals(((ConstraintLayout.b) layoutParams).f1612b0)) {
                if (childAt.getId() == -1) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("to use ConstraintTag view ");
                    sb2.append(childAt.getClass().getSimpleName());
                    sb2.append(" must have an ID");
                } else {
                    f(childAt.getId());
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f1684f, this.f1685g);
    }

    public void h() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        i((ConstraintLayout) parent);
    }

    public void i(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (int i10 = 0; i10 < this.f1685g; i10++) {
            View viewById = constraintLayout.getViewById(this.f1684f[i10]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && Build.VERSION.SDK_INT >= 21) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    public void j(ConstraintLayout constraintLayout) {
    }

    public final int k(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f1686h.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            if (childAt.getId() != -1) {
                String str2 = null;
                try {
                    str2 = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (str.equals(str2)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    public final int l(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int i10 = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, str);
            if (designInformation instanceof Integer) {
                i10 = ((Integer) designInformation).intValue();
            }
        }
        if (i10 == 0 && constraintLayout != null) {
            i10 = k(constraintLayout, str);
        }
        if (i10 == 0) {
            try {
                i10 = a0.c.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return i10 == 0 ? this.f1686h.getResources().getIdentifier(str, "id", this.f1686h.getPackageName()) : i10;
    }

    public View[] m(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f1691m;
        if (viewArr == null || viewArr.length != this.f1685g) {
            this.f1691m = new View[this.f1685g];
        }
        for (int i10 = 0; i10 < this.f1685g; i10++) {
            this.f1691m[i10] = constraintLayout.getViewById(this.f1684f[i10]);
        }
        return this.f1691m;
    }

    public void n(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a0.d.f164m1);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == a0.d.f296y1) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f1689k = string;
                    setIds(string);
                } else if (index == a0.d.f307z1) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f1690l = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void o(w.e eVar, boolean z10) {
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f1689k;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f1690l;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.f1688j) {
            super.onMeasure(i10, i11);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void p(ConstraintLayout constraintLayout) {
    }

    public void q(ConstraintLayout constraintLayout) {
    }

    public void r(ConstraintLayout constraintLayout) {
    }

    public void s(ConstraintLayout constraintLayout) {
        String str;
        int k10;
        if (isInEditMode()) {
            setIds(this.f1689k);
        }
        h hVar = this.f1687i;
        if (hVar == null) {
            return;
        }
        hVar.b();
        for (int i10 = 0; i10 < this.f1685g; i10++) {
            int i11 = this.f1684f[i10];
            View viewById = constraintLayout.getViewById(i11);
            if (viewById == null && (k10 = k(constraintLayout, (str = this.f1692n.get(Integer.valueOf(i11))))) != 0) {
                this.f1684f[i10] = k10;
                this.f1692n.put(Integer.valueOf(k10), str);
                viewById = constraintLayout.getViewById(k10);
            }
            if (viewById != null) {
                this.f1687i.c(constraintLayout.getViewWidget(viewById));
            }
        }
        this.f1687i.a(constraintLayout.mLayoutWidget);
    }

    public void setIds(String str) {
        this.f1689k = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1685g = 0;
        while (true) {
            int indexOf = str.indexOf(44, i10);
            if (indexOf == -1) {
                e(str.substring(i10));
                return;
            } else {
                e(str.substring(i10, indexOf));
                i10 = indexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f1690l = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1685g = 0;
        while (true) {
            int indexOf = str.indexOf(44, i10);
            if (indexOf == -1) {
                g(str.substring(i10));
                return;
            } else {
                g(str.substring(i10, indexOf));
                i10 = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f1689k = null;
        this.f1685g = 0;
        for (int i10 : iArr) {
            f(i10);
        }
    }

    @Override // android.view.View
    public void setTag(int i10, Object obj) {
        super.setTag(i10, obj);
        if (obj == null && this.f1689k == null) {
            f(i10);
        }
    }

    public void t() {
        if (this.f1687i == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).f1650u0 = (w.e) this.f1687i;
        }
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1684f = new int[32];
        this.f1688j = false;
        this.f1691m = null;
        this.f1692n = new HashMap<>();
        this.f1686h = context;
        n(attributeSet);
    }
}
