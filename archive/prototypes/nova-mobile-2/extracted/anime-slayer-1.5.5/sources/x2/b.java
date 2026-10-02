package x2;

import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import jc.l;
import kotlin.TypeCastException;
import s2.m;

/* compiled from: InputUtilExt.kt */
/* loaded from: classes.dex */
public final class b {

    /* compiled from: InputUtilExt.kt */
    /* loaded from: classes.dex */
    public static final class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f15843f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ s2.c f15844g;

        public a(View view, s2.c cVar) {
            this.f15843f = view;
            this.f15844g = cVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            EditText editText = (EditText) this.f15843f;
            editText.requestFocus();
            Object systemService = this.f15844g.i().getSystemService("input_method");
            if (systemService != null) {
                ((InputMethodManager) systemService).showSoftInput(editText, 1);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
    }

    public static final void a(s2.c cVar, boolean z10) {
        int counterMaxLength;
        l.g(cVar, "$this$invalidateInputMaxLength");
        Editable text = x2.a.a(cVar).getText();
        int length = text != null ? text.length() : 0;
        if ((z10 || length != 0) && (counterMaxLength = x2.a.b(cVar).getCounterMaxLength()) > 0) {
            t2.a.d(cVar, m.POSITIVE, length <= counterMaxLength);
        }
    }

    public static final void b(s2.c cVar) {
        l.g(cVar, "$this$showKeyboardIfApplicable");
        EditText a10 = x2.a.a(cVar);
        a10.post(new a(a10, cVar));
    }
}
