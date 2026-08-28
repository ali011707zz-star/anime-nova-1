package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.anslayer.R;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: AvailableQualityItemBinding.java */
/* loaded from: classes.dex */
public final class y implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8822a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageButton f8823b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressBar f8824c;

    /* renamed from: d, reason: collision with root package name */
    public final SingleLineTextView f8825d;

    /* renamed from: e, reason: collision with root package name */
    public final SingleLineTextView f8826e;

    /* renamed from: f, reason: collision with root package name */
    public final ImageButton f8827f;

    /* renamed from: g, reason: collision with root package name */
    public final ImageButton f8828g;

    public y(LinearLayout linearLayout, ImageButton imageButton, ProgressBar progressBar, SingleLineTextView singleLineTextView, SingleLineTextView singleLineTextView2, ImageButton imageButton2, ImageButton imageButton3) {
        this.f8822a = linearLayout;
        this.f8823b = imageButton;
        this.f8824c = progressBar;
        this.f8825d = singleLineTextView;
        this.f8826e = singleLineTextView2;
        this.f8827f = imageButton2;
        this.f8828g = imageButton3;
    }

    public static y a(View view) {
        int i10 = R.id.download_button;
        ImageButton imageButton = (ImageButton) a2.b.a(view, R.id.download_button);
        if (imageButton != null) {
            i10 = R.id.progress;
            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
            if (progressBar != null) {
                i10 = R.id.quality_size;
                SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.quality_size);
                if (singleLineTextView != null) {
                    i10 = R.id.quality_title;
                    SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.quality_title);
                    if (singleLineTextView2 != null) {
                        i10 = R.id.size_button;
                        ImageButton imageButton2 = (ImageButton) a2.b.a(view, R.id.size_button);
                        if (imageButton2 != null) {
                            i10 = R.id.watch_button;
                            ImageButton imageButton3 = (ImageButton) a2.b.a(view, R.id.watch_button);
                            if (imageButton3 != null) {
                                return new y((LinearLayout) view, imageButton, progressBar, singleLineTextView, singleLineTextView2, imageButton2, imageButton3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static y c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.available_quality_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8822a;
    }
}
