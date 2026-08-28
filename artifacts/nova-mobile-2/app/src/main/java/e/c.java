package e;

import android.app.Dialog;
import android.os.Bundle;

/* compiled from: AppCompatDialogFragment.java */
/* loaded from: classes.dex */
public class c extends androidx.fragment.app.d {
    public c() {
    }

    @Override // androidx.fragment.app.d
    public Dialog onCreateDialog(Bundle bundle) {
        return new b(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.d
    public void setupDialog(Dialog dialog, int i10) {
        if (dialog instanceof b) {
            b bVar = (b) dialog;
            if (i10 != 1 && i10 != 2) {
                if (i10 != 3) {
                    return;
                } else {
                    dialog.getWindow().addFlags(24);
                }
            }
            bVar.supportRequestWindowFeature(1);
            return;
        }
        super.setupDialog(dialog, i10);
    }

    public c(int i10) {
        super(i10);
    }
}
