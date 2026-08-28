package d3;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import jc.l;
import qc.t;
import qc.u;

/* compiled from: Views.kt */
/* loaded from: classes.dex */
public final class f {
    public static final <T> T a(ViewGroup viewGroup, int i10, ViewGroup viewGroup2) {
        l.g(viewGroup, "$this$inflate");
        return (T) LayoutInflater.from(viewGroup.getContext()).inflate(i10, viewGroup2, false);
    }

    public static /* synthetic */ Object b(ViewGroup viewGroup, int i10, ViewGroup viewGroup2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            viewGroup2 = viewGroup;
        }
        return a(viewGroup, i10, viewGroup2);
    }

    public static final <T extends View> boolean c(T t10) {
        l.g(t10, "$this$isNotVisible");
        return !e(t10);
    }

    public static final <T extends View> boolean d(T t10) {
        l.g(t10, "$this$isRtl");
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        Resources resources = t10.getResources();
        l.b(resources, "resources");
        Configuration configuration = resources.getConfiguration();
        l.b(configuration, "resources.configuration");
        return configuration.getLayoutDirection() == 1;
    }

    public static final <T extends View> boolean e(T t10) {
        l.g(t10, "$this$isVisible");
        if (t10 instanceof Button) {
            Button button = (Button) t10;
            if (button.getVisibility() != 0) {
                return false;
            }
            l.b(button.getText(), "this.text");
            if (!(!t.s(u.t0(r3)))) {
                return false;
            }
        } else if (t10.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public static final void f(TextView textView) {
        l.g(textView, "$this$setGravityEndCompat");
        if (Build.VERSION.SDK_INT >= 17) {
            textView.setTextAlignment(6);
        }
        textView.setGravity(8388629);
    }

    public static final void g(TextView textView) {
        l.g(textView, "$this$setGravityStartCompat");
        if (Build.VERSION.SDK_INT >= 17) {
            textView.setTextAlignment(5);
        }
        textView.setGravity(8388627);
    }
}
