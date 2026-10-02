package t2;

import com.afollestad.materialdialogs.internal.button.DialogActionButton;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayout;
import d3.f;
import jc.l;
import s2.c;
import s2.m;

/* compiled from: DialogActionExt.kt */
/* loaded from: classes.dex */
public final class a {
    public static final DialogActionButton a(c cVar, m mVar) {
        DialogActionButton[] actionButtons;
        DialogActionButton dialogActionButton;
        l.g(cVar, "$this$getActionButton");
        l.g(mVar, "which");
        DialogActionButtonLayout buttonsLayout = cVar.h().getButtonsLayout();
        if (buttonsLayout == null || (actionButtons = buttonsLayout.getActionButtons()) == null || (dialogActionButton = actionButtons[mVar.a()]) == null) {
            throw new IllegalStateException("The dialog does not have an attached buttons layout.");
        }
        return dialogActionButton;
    }

    public static final boolean b(c cVar, m mVar) {
        l.g(cVar, "$this$hasActionButton");
        l.g(mVar, "which");
        return f.e(a(cVar, mVar));
    }

    public static final boolean c(c cVar) {
        DialogActionButton[] visibleButtons;
        l.g(cVar, "$this$hasActionButtons");
        DialogActionButtonLayout buttonsLayout = cVar.h().getButtonsLayout();
        if (buttonsLayout == null || (visibleButtons = buttonsLayout.getVisibleButtons()) == null) {
            return false;
        }
        return !(visibleButtons.length == 0);
    }

    public static final void d(c cVar, m mVar, boolean z10) {
        l.g(cVar, "$this$setActionButtonEnabled");
        l.g(mVar, "which");
        a(cVar, mVar).setEnabled(z10);
    }
}
