package j4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anslayer.R;

/* compiled from: DownloadItemBinding.java */
/* loaded from: classes.dex */
public final class w0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8783a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8784b;

    public w0(LinearLayout linearLayout, TextView textView) {
        this.f8783a = linearLayout;
        this.f8784b = textView;
    }

    public static w0 a(View view) {
        TextView textView = (TextView) a2.b.a(view, R.id.filename);
        if (textView != null) {
            return new w0((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.filename)));
    }
}
