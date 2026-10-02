package androidx.preference;

import android.R;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;
import g0.i;
import m1.f;
import m1.g;
import m1.h;
import r0.c;

/* loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    @Override // androidx.preference.Preference
    public boolean C0() {
        return !super.F();
    }

    @Override // androidx.preference.Preference
    public boolean F() {
        return false;
    }

    @Override // androidx.preference.Preference
    public void P(f fVar) {
        TextView textView;
        super.P(fVar);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            fVar.itemView.setAccessibilityHeading(true);
            return;
        }
        if (i10 < 21) {
            TypedValue typedValue = new TypedValue();
            if (i().getTheme().resolveAttribute(g.f10681b, typedValue, true) && (textView = (TextView) fVar.a(R.id.title)) != null) {
                if (textView.getCurrentTextColor() != f0.a.d(i(), h.f10693a)) {
                    return;
                }
                textView.setTextColor(typedValue.data);
            }
        }
    }

    @Override // androidx.preference.Preference
    @Deprecated
    public void U(r0.c cVar) {
        c.C0311c r10;
        super.U(cVar);
        if (Build.VERSION.SDK_INT >= 28 || (r10 = cVar.r()) == null) {
            return;
        }
        cVar.e0(c.C0311c.f(r10.c(), r10.d(), r10.a(), r10.b(), true, r10.e()));
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, g.f10685f, R.attr.preferenceCategoryStyle));
    }

    public PreferenceCategory(Context context) {
        this(context, null);
    }
}
