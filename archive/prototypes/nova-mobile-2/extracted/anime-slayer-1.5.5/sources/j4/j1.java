package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.anslayer.R;
import com.anslayer.widget.SlayerImage;
import com.google.android.material.appbar.MaterialToolbar;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: NewsDetailsActivityBinding.java */
/* loaded from: classes.dex */
public final class j1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8465a;

    /* renamed from: b, reason: collision with root package name */
    public final NestedScrollView f8466b;

    /* renamed from: c, reason: collision with root package name */
    public final SingleLineTextView f8467c;

    /* renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f8468d;

    /* renamed from: e, reason: collision with root package name */
    public final SingleLineTextView f8469e;

    /* renamed from: f, reason: collision with root package name */
    public final SingleLineTextView f8470f;

    /* renamed from: g, reason: collision with root package name */
    public final SingleLineTextView f8471g;

    /* renamed from: h, reason: collision with root package name */
    public final AppCompatTextView f8472h;

    /* renamed from: i, reason: collision with root package name */
    public final SlayerImage f8473i;

    /* renamed from: j, reason: collision with root package name */
    public final MaterialToolbar f8474j;

    public j1(LinearLayout linearLayout, NestedScrollView nestedScrollView, SingleLineTextView singleLineTextView, AppCompatTextView appCompatTextView, SingleLineTextView singleLineTextView2, SingleLineTextView singleLineTextView3, SingleLineTextView singleLineTextView4, AppCompatTextView appCompatTextView2, SlayerImage slayerImage, MaterialToolbar materialToolbar) {
        this.f8465a = linearLayout;
        this.f8466b = nestedScrollView;
        this.f8467c = singleLineTextView;
        this.f8468d = appCompatTextView;
        this.f8469e = singleLineTextView2;
        this.f8470f = singleLineTextView3;
        this.f8471g = singleLineTextView4;
        this.f8472h = appCompatTextView2;
        this.f8473i = slayerImage;
        this.f8474j = materialToolbar;
    }

    public static j1 a(View view) {
        int i10 = R.id.nested_scroll_view;
        NestedScrollView nestedScrollView = (NestedScrollView) a2.b.a(view, R.id.nested_scroll_view);
        if (nestedScrollView != null) {
            i10 = R.id.newsDate;
            SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.newsDate);
            if (singleLineTextView != null) {
                i10 = R.id.newsDescription;
                AppCompatTextView appCompatTextView = (AppCompatTextView) a2.b.a(view, R.id.newsDescription);
                if (appCompatTextView != null) {
                    i10 = R.id.newsOpenSource;
                    SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.newsOpenSource);
                    if (singleLineTextView2 != null) {
                        i10 = R.id.newsOpenVideo;
                        SingleLineTextView singleLineTextView3 = (SingleLineTextView) a2.b.a(view, R.id.newsOpenVideo);
                        if (singleLineTextView3 != null) {
                            i10 = R.id.newsShare;
                            SingleLineTextView singleLineTextView4 = (SingleLineTextView) a2.b.a(view, R.id.newsShare);
                            if (singleLineTextView4 != null) {
                                i10 = R.id.newsTitle;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) a2.b.a(view, R.id.newsTitle);
                                if (appCompatTextView2 != null) {
                                    i10 = R.id.seriesImage;
                                    SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.seriesImage);
                                    if (slayerImage != null) {
                                        i10 = R.id.toolbar;
                                        MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                                        if (materialToolbar != null) {
                                            return new j1((LinearLayout) view, nestedScrollView, singleLineTextView, appCompatTextView, singleLineTextView2, singleLineTextView3, singleLineTextView4, appCompatTextView2, slayerImage, materialToolbar);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.news_details_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8465a;
    }
}
