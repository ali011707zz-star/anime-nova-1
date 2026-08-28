package j4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anslayer.R;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: CommentMetadataAboveBinding.java */
/* loaded from: classes.dex */
public final class k0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final RelativeLayout f8487a;

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f8488b;

    /* renamed from: c, reason: collision with root package name */
    public final SingleLineTextView f8489c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8490d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8491e;

    public k0(RelativeLayout relativeLayout, LinearLayout linearLayout, SingleLineTextView singleLineTextView, TextView textView, TextView textView2) {
        this.f8487a = relativeLayout;
        this.f8488b = linearLayout;
        this.f8489c = singleLineTextView;
        this.f8490d = textView;
        this.f8491e = textView2;
    }

    public static k0 a(View view) {
        int i10 = R.id.comment_author_timestamp_container;
        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.comment_author_timestamp_container);
        if (linearLayout != null) {
            i10 = R.id.comment_date;
            SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.comment_date);
            if (singleLineTextView != null) {
                i10 = R.id.comment_text;
                TextView textView = (TextView) a2.b.a(view, R.id.comment_text);
                if (textView != null) {
                    i10 = R.id.full_name;
                    TextView textView2 = (TextView) a2.b.a(view, R.id.full_name);
                    if (textView2 != null) {
                        return new k0((RelativeLayout) view, linearLayout, singleLineTextView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
