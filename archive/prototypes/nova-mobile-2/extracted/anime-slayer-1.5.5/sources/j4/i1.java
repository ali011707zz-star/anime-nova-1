package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.anslayer.R;

/* compiled from: LoadStateViewBinding.java */
/* loaded from: classes.dex */
public final class i1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8435a;

    /* renamed from: b, reason: collision with root package name */
    public final Button f8436b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressBar f8437c;

    public i1(FrameLayout frameLayout, Button button, ProgressBar progressBar) {
        this.f8435a = frameLayout;
        this.f8436b = button;
        this.f8437c = progressBar;
    }

    public static i1 a(View view) {
        int i10 = R.id.load_state_retry;
        Button button = (Button) a2.b.a(view, R.id.load_state_retry);
        if (button != null) {
            i10 = R.id.progress_bar;
            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress_bar);
            if (progressBar != null) {
                return new i1((FrameLayout) view, button, progressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i1 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.load_state_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8435a;
    }
}
