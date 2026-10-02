package m7;

import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetDialog;

/* compiled from: BaseBottomSheetDialog.kt */
/* loaded from: classes.dex */
public abstract class c extends BottomSheetDialog {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context) {
        super(context);
        jc.l.f(context, "context");
    }

    public abstract View a(LayoutInflater layoutInflater);

    @Override // com.google.android.material.bottomsheet.BottomSheetDialog, e.b, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LayoutInflater layoutInflater = getLayoutInflater();
        jc.l.e(layoutInflater, "layoutInflater");
        setContentView(a(layoutInflater));
        Context context = getContext();
        jc.l.e(context, "context");
        Display f10 = k7.b.f(context);
        if (f10 == null) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        f10.getRealMetrics(displayMetrics);
        getBehavior().setPeekHeight(displayMetrics.heightPixels / 2);
    }
}
