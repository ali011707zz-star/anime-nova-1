package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.anslayer.R;
import com.anslayer.widget.SlayerImage;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: FragmentComposeBinding.java */
/* loaded from: classes.dex */
public final class a1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ProgressLayout f8130a;

    /* renamed from: b, reason: collision with root package name */
    public final EditText f8131b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressLayout f8132c;

    /* renamed from: d, reason: collision with root package name */
    public final SingleLineTextView f8133d;

    /* renamed from: e, reason: collision with root package name */
    public final SlayerImage f8134e;

    /* renamed from: f, reason: collision with root package name */
    public final SlayerImage f8135f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f8136g;

    public a1(ProgressLayout progressLayout, EditText editText, ProgressLayout progressLayout2, SingleLineTextView singleLineTextView, SlayerImage slayerImage, SlayerImage slayerImage2, TextView textView) {
        this.f8130a = progressLayout;
        this.f8131b = editText;
        this.f8132c = progressLayout2;
        this.f8133d = singleLineTextView;
        this.f8134e = slayerImage;
        this.f8135f = slayerImage2;
        this.f8136g = textView;
    }

    public static a1 a(View view) {
        int i10 = R.id.commentEditText;
        EditText editText = (EditText) a2.b.a(view, R.id.commentEditText);
        if (editText != null) {
            ProgressLayout progressLayout = (ProgressLayout) view;
            i10 = R.id.recommendationComment;
            SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.recommendationComment);
            if (singleLineTextView != null) {
                i10 = R.id.seriesImage;
                SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.seriesImage);
                if (slayerImage != null) {
                    i10 = R.id.seriesImageRecommended;
                    SlayerImage slayerImage2 = (SlayerImage) a2.b.a(view, R.id.seriesImageRecommended);
                    if (slayerImage2 != null) {
                        i10 = R.id.text_counter;
                        TextView textView = (TextView) a2.b.a(view, R.id.text_counter);
                        if (textView != null) {
                            return new a1(progressLayout, editText, progressLayout, singleLineTextView, slayerImage, slayerImage2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_compose, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ProgressLayout b() {
        return this.f8130a;
    }
}
