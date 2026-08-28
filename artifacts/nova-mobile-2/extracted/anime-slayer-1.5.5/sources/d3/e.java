package d3;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import ic.l;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.TypeCastException;
import nc.g;
import vb.i;
import vb.p;
import wb.m;
import wb.t;
import wb.z;

/* compiled from: MDUtil.kt */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final e f5611a = new e();

    /* compiled from: MDUtil.kt */
    /* loaded from: classes.dex */
    public static final class a implements TextWatcher {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ l f5612f;

        public a(l lVar) {
            this.f5612f = lVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            jc.l.g(editable, "s");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            jc.l.g(charSequence, "s");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            jc.l.g(charSequence, "s");
            this.f5612f.invoke(charSequence);
        }
    }

    /* compiled from: MDUtil.kt */
    /* loaded from: classes.dex */
    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: f, reason: collision with root package name */
        public Integer f5613f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f5614g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ l f5615h;

        /* JADX WARN: Incorrect types in method signature: (TT;Lic/l;)V */
        public b(View view, l lVar) {
            this.f5614g = view;
            this.f5615h = lVar;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Integer num = this.f5613f;
            if (num != null) {
                int measuredWidth = this.f5614g.getMeasuredWidth();
                if (num != null && num.intValue() == measuredWidth) {
                    this.f5614g.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    return;
                }
            }
            if (this.f5614g.getMeasuredWidth() <= 0 || this.f5614g.getMeasuredHeight() <= 0) {
                return;
            }
            Integer num2 = this.f5613f;
            int measuredWidth2 = this.f5614g.getMeasuredWidth();
            if (num2 != null && num2.intValue() == measuredWidth2) {
                return;
            }
            this.f5613f = Integer.valueOf(this.f5614g.getMeasuredWidth());
            this.f5615h.invoke(this.f5614g);
        }
    }

    public static /* synthetic */ boolean h(e eVar, int i10, double d10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            d10 = 0.5d;
        }
        return eVar.g(i10, d10);
    }

    public static /* synthetic */ void j(e eVar, TextView textView, Context context, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        eVar.i(textView, context, num, num2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ int l(e eVar, Context context, Integer num, Integer num2, ic.a aVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        if ((i10 & 8) != 0) {
            aVar = null;
        }
        return eVar.k(context, num, num2, aVar);
    }

    public static /* synthetic */ float o(e eVar, Context context, int i10, float f10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        return eVar.n(context, i10, f10);
    }

    public static /* synthetic */ Drawable q(e eVar, Context context, Integer num, Integer num2, Drawable drawable, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        if ((i10 & 8) != 0) {
            drawable = null;
        }
        return eVar.p(context, num, num2, drawable);
    }

    public static /* synthetic */ CharSequence u(e eVar, s2.c cVar, Integer num, Integer num2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        return eVar.t(cVar, num, num2, z10);
    }

    public static /* synthetic */ void x(e eVar, View view, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = view != null ? view.getPaddingLeft() : 0;
        }
        int i15 = i10;
        if ((i14 & 2) != 0) {
            i11 = view != null ? view.getPaddingTop() : 0;
        }
        int i16 = i11;
        if ((i14 & 4) != 0) {
            i12 = view != null ? view.getPaddingRight() : 0;
        }
        int i17 = i12;
        if ((i14 & 8) != 0) {
            i13 = view != null ? view.getPaddingBottom() : 0;
        }
        eVar.w(view, i15, i16, i17, i13);
    }

    public final void a(String str, Object obj, Integer num) {
        jc.l.g(str, "method");
        if (num == null && obj == null) {
            throw new IllegalArgumentException(str + ": You must specify a resource ID or literal value");
        }
    }

    public final ColorStateList b(Context context, int i10, int i11) {
        jc.l.g(context, "context");
        int l10 = i11 == 0 ? l(this, context, null, Integer.valueOf(s2.f.f13658b), null, 10, null) : i11;
        int[][] iArr = {new int[]{-16842912, -16842908}, new int[]{R.attr.state_checked}, new int[]{R.attr.state_focused}};
        int[] iArr2 = new int[3];
        iArr2[0] = i10 == 0 ? l(this, context, null, Integer.valueOf(s2.f.f13659c), null, 10, null) : i10;
        iArr2[1] = l10;
        iArr2[2] = l10;
        return new ColorStateList(iArr, iArr2);
    }

    public final <T extends View> int c(T t10, int i10) {
        jc.l.g(t10, "$this$dimenPx");
        Context context = t10.getContext();
        jc.l.b(context, "context");
        return context.getResources().getDimensionPixelSize(i10);
    }

    public final String[] d(Context context, Integer num) {
        jc.l.g(context, "$this$getStringArray");
        if (num == null) {
            return new String[0];
        }
        String[] stringArray = context.getResources().getStringArray(num.intValue());
        jc.l.b(stringArray, "resources.getStringArray(res)");
        return stringArray;
    }

    public final i<Integer, Integer> e(WindowManager windowManager) {
        jc.l.g(windowManager, "$this$getWidthAndHeight");
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return new i<>(Integer.valueOf(point.x), Integer.valueOf(point.y));
    }

    public final <R extends View> R f(ViewGroup viewGroup, Context context, int i10) {
        jc.l.g(viewGroup, "$this$inflate");
        jc.l.g(context, "ctxt");
        R r10 = (R) LayoutInflater.from(context).inflate(i10, viewGroup, false);
        if (r10 != null) {
            return r10;
        }
        throw new TypeCastException("null cannot be cast to non-null type R");
    }

    public final boolean g(int i10, double d10) {
        if (i10 == 0) {
            return false;
        }
        double d11 = 1;
        double red = Color.red(i10);
        Double.isNaN(red);
        double green = Color.green(i10);
        Double.isNaN(green);
        double d12 = (red * 0.299d) + (green * 0.587d);
        double blue = Color.blue(i10);
        Double.isNaN(blue);
        double d13 = BaseProgressIndicator.MAX_ALPHA;
        Double.isNaN(d13);
        Double.isNaN(d11);
        return d11 - ((d12 + (blue * 0.114d)) / d13) >= d10;
    }

    public final void i(TextView textView, Context context, Integer num, Integer num2) {
        int l10;
        int l11;
        jc.l.g(context, "context");
        if (textView != null) {
            if (num == null && num2 == null) {
                return;
            }
            if (num != null && (l11 = l(this, context, null, num, null, 10, null)) != 0) {
                textView.setTextColor(l11);
            }
            if (num2 == null || (l10 = l(this, context, null, num2, null, 10, null)) == 0) {
                return;
            }
            textView.setHintTextColor(l10);
        }
    }

    public final int k(Context context, Integer num, Integer num2, ic.a<Integer> aVar) {
        jc.l.g(context, "context");
        if (num2 == null) {
            return f0.a.d(context, num != null ? num.intValue() : 0);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{num2.intValue()});
        try {
            int color = obtainStyledAttributes.getColor(0, 0);
            return (color != 0 || aVar == null) ? color : aVar.invoke().intValue();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final int[] m(Context context, int[] iArr, l<? super Integer, Integer> lVar) {
        Integer invoke;
        jc.l.g(context, "context");
        jc.l.g(iArr, "attrs");
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(iArr);
        try {
            nc.e i10 = g.i(0, iArr.length);
            ArrayList arrayList = new ArrayList(m.q(i10, 10));
            Iterator<Integer> it2 = i10.iterator();
            while (it2.hasNext()) {
                int a10 = ((z) it2).a();
                int color = obtainStyledAttributes.getColor(a10, 0);
                if (color == 0) {
                    color = (lVar == null || (invoke = lVar.invoke(Integer.valueOf(iArr[a10]))) == null) ? 0 : invoke.intValue();
                }
                arrayList.add(Integer.valueOf(color));
            }
            return t.O(arrayList);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final float n(Context context, int i10, float f10) {
        jc.l.g(context, "context");
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i10});
        try {
            return obtainStyledAttributes.getDimension(0, f10);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final Drawable p(Context context, Integer num, Integer num2, Drawable drawable) {
        jc.l.g(context, "context");
        if (num2 == null) {
            return num == null ? drawable : f0.a.f(context, num.intValue());
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{num2.intValue()});
        try {
            Drawable drawable2 = obtainStyledAttributes.getDrawable(0);
            if (drawable2 != null || drawable == null) {
                drawable = drawable2;
            }
            return drawable;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final int r(Context context, int i10, int i11) {
        jc.l.g(context, "context");
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i10});
        try {
            return obtainStyledAttributes.getInt(0, i11);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final CharSequence s(Context context, Integer num, Integer num2, boolean z10) {
        int intValue;
        jc.l.g(context, "context");
        if (num != null) {
            intValue = num.intValue();
        } else {
            intValue = num2 != null ? num2.intValue() : 0;
        }
        if (intValue == 0) {
            return null;
        }
        CharSequence text = context.getResources().getText(intValue);
        jc.l.b(text, "context.resources.getText(resourceId)");
        return z10 ? Html.fromHtml(text.toString()) : text;
    }

    public final CharSequence t(s2.c cVar, Integer num, Integer num2, boolean z10) {
        jc.l.g(cVar, "materialDialog");
        return s(cVar.i(), num, num2, z10);
    }

    public final void v(EditText editText, l<? super CharSequence, p> lVar) {
        jc.l.g(editText, "$this$textChanged");
        jc.l.g(lVar, "callback");
        editText.addTextChangedListener(new a(lVar));
    }

    public final <T extends View> void w(T t10, int i10, int i11, int i12, int i13) {
        if ((t10 != null && i10 == t10.getPaddingLeft() && i11 == t10.getPaddingTop() && i12 == t10.getPaddingRight() && i13 == t10.getPaddingBottom()) || t10 == null) {
            return;
        }
        t10.setPadding(i10, i11, i12, i13);
    }

    public final <T extends View> void y(T t10, l<? super T, p> lVar) {
        jc.l.g(t10, "$this$waitForWidth");
        jc.l.g(lVar, "block");
        if (t10.getMeasuredWidth() > 0 && t10.getMeasuredHeight() > 0) {
            lVar.invoke(t10);
        } else {
            t10.getViewTreeObserver().addOnGlobalLayoutListener(new b(t10, lVar));
        }
    }
}
