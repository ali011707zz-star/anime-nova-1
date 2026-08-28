package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;

/* compiled from: DialogAdBinding.java */
/* loaded from: classes.dex */
public final class u0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8735a;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f8736b;

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f8737c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8738d;

    /* renamed from: e, reason: collision with root package name */
    public final ProgressBar f8739e;

    public u0(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TextView textView, ProgressBar progressBar) {
        this.f8735a = constraintLayout;
        this.f8736b = appCompatImageView;
        this.f8737c = appCompatImageView2;
        this.f8738d = textView;
        this.f8739e = progressBar;
    }

    public static u0 a(View view) {
        int i10 = R.id.centerImage;
        AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.centerImage);
        if (appCompatImageView != null) {
            i10 = R.id.centerImageClose;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) a2.b.a(view, R.id.centerImageClose);
            if (appCompatImageView2 != null) {
                i10 = R.id.counter;
                TextView textView = (TextView) a2.b.a(view, R.id.counter);
                if (textView != null) {
                    i10 = R.id.progress;
                    ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                    if (progressBar != null) {
                        return new u0((ConstraintLayout) view, appCompatImageView, appCompatImageView2, textView, progressBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static u0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_ad, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8735a;
    }
}
