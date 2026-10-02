package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import com.anslayer.R;
import com.anslayer.widget.ContentViewFlipper;

/* compiled from: WidgetFavouriteBinding.java */
/* loaded from: classes.dex */
public final class g3 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ContentViewFlipper f8388a;

    /* renamed from: b, reason: collision with root package name */
    public final ContentViewFlipper f8389b;

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f8390c;

    public g3(ContentViewFlipper contentViewFlipper, ContentViewFlipper contentViewFlipper2, AppCompatImageView appCompatImageView) {
        this.f8388a = contentViewFlipper;
        this.f8389b = contentViewFlipper2;
        this.f8390c = appCompatImageView;
    }

    public static g3 a(View view) {
        ContentViewFlipper contentViewFlipper = (ContentViewFlipper) view;
        AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.widgetIcon);
        if (appCompatImageView != null) {
            return new g3(contentViewFlipper, contentViewFlipper, appCompatImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.widgetIcon)));
    }

    public static g3 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g3 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.widget_favourite, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ContentViewFlipper b() {
        return this.f8388a;
    }
}
