package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anslayer.R;

/* compiled from: CommonViewErrorBinding.java */
/* loaded from: classes.dex */
public final class l0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8510a;

    /* renamed from: b, reason: collision with root package name */
    public final Button f8511b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f8512c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8513d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8514e;

    public l0(LinearLayout linearLayout, Button button, ImageView imageView, TextView textView, TextView textView2) {
        this.f8510a = linearLayout;
        this.f8511b = button;
        this.f8512c = imageView;
        this.f8513d = textView;
        this.f8514e = textView2;
    }

    public static l0 a(View view) {
        int i10 = R.id.btn_try_again;
        Button button = (Button) a2.b.a(view, R.id.btn_try_again);
        if (button != null) {
            i10 = R.id.error_message_icon;
            ImageView imageView = (ImageView) a2.b.a(view, R.id.error_message_icon);
            if (imageView != null) {
                i10 = R.id.error_sub_text;
                TextView textView = (TextView) a2.b.a(view, R.id.error_sub_text);
                if (textView != null) {
                    i10 = R.id.error_text;
                    TextView textView2 = (TextView) a2.b.a(view, R.id.error_text);
                    if (textView2 != null) {
                        return new l0((LinearLayout) view, button, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l0 b(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.common_view_error, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }
}
