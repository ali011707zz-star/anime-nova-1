package d3;

import android.graphics.Typeface;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.afollestad.materialdialogs.internal.main.DialogLayout;
import com.afollestad.materialdialogs.internal.message.DialogContentLayout;
import jc.l;
import kotlin.TypeCastException;

/* compiled from: Dialogs.kt */
/* loaded from: classes.dex */
public final class b {
    public static final void a(s2.c cVar) {
        IBinder windowToken;
        l.g(cVar, "$this$hideKeyboard");
        Object systemService = cVar.i().getSystemService("input_method");
        if (systemService != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) systemService;
            View currentFocus = cVar.getCurrentFocus();
            if (currentFocus != null) {
                windowToken = currentFocus.getWindowToken();
            } else {
                windowToken = cVar.h().getWindowToken();
            }
            inputMethodManager.hideSoftInputFromWindow(windowToken, 0);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
    }

    public static final void b(s2.c cVar, boolean z10, boolean z11) {
        l.g(cVar, "$this$invalidateDividers");
        cVar.h().e(z10, z11);
    }

    public static final void c(s2.c cVar, TextView textView, Integer num, CharSequence charSequence, int i10, Typeface typeface, Integer num2) {
        l.g(cVar, "$this$populateText");
        l.g(textView, "textView");
        if (charSequence == null) {
            charSequence = e.u(e.f5611a, cVar, num, Integer.valueOf(i10), false, 8, null);
        }
        if (charSequence != null) {
            Object parent = textView.getParent();
            if (parent != null) {
                ((View) parent).setVisibility(0);
                textView.setVisibility(0);
                textView.setText(charSequence);
                if (typeface != null) {
                    textView.setTypeface(typeface);
                }
                e.j(e.f5611a, textView, cVar.i(), num2, null, 4, null);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.view.View");
        }
        textView.setVisibility(8);
    }

    public static final void e(s2.c cVar) {
        l.g(cVar, "$this$preShow");
        Object obj = cVar.e().get("md.custom_view_no_vertical_padding");
        if (!(obj instanceof Boolean)) {
            obj = null;
        }
        boolean a10 = l.a((Boolean) obj, Boolean.TRUE);
        u2.a.a(cVar.f(), cVar);
        DialogLayout h10 = cVar.h();
        if (h10.getTitleLayout().b() && !a10) {
            h10.getContentLayout().e(h10.getFrameMarginVertical$com_afollestad_material_dialogs_core(), h10.getFrameMarginVertical$com_afollestad_material_dialogs_core());
        }
        if (f.e(v2.a.c(cVar))) {
            DialogContentLayout.f(h10.getContentLayout(), 0, 0, 1, null);
        } else if (h10.getContentLayout().d()) {
            DialogContentLayout.h(h10.getContentLayout(), 0, h10.getFrameMarginVerticalLess$com_afollestad_material_dialogs_core(), 1, null);
        }
    }
}
