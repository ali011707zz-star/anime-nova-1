package s2;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import com.afollestad.materialdialogs.internal.main.DialogLayout;

/* compiled from: DialogBehavior.kt */
/* loaded from: classes.dex */
public interface a {
    void a(DialogLayout dialogLayout, int i10, float f10);

    void b(c cVar);

    DialogLayout c(ViewGroup viewGroup);

    void d(c cVar);

    ViewGroup e(Context context, Window window, LayoutInflater layoutInflater, c cVar);

    int f(boolean z10);

    void g(Context context, Window window, DialogLayout dialogLayout, Integer num);

    boolean onDismiss();
}
