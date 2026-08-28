package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anslayer.R;
import com.google.android.material.button.MaterialButton;

/* compiled from: AdapterServerItemBinding.java */
/* loaded from: classes.dex */
public final class q implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final RelativeLayout f8640a;

    /* renamed from: b, reason: collision with root package name */
    public final MaterialButton f8641b;

    /* renamed from: c, reason: collision with root package name */
    public final RelativeLayout f8642c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8643d;

    /* renamed from: e, reason: collision with root package name */
    public final ImageView f8644e;

    public q(RelativeLayout relativeLayout, MaterialButton materialButton, RelativeLayout relativeLayout2, TextView textView, ImageView imageView) {
        this.f8640a = relativeLayout;
        this.f8641b = materialButton;
        this.f8642c = relativeLayout2;
        this.f8643d = textView;
        this.f8644e = imageView;
    }

    public static q a(View view) {
        int i10 = R.id.choose;
        MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.choose);
        if (materialButton != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i10 = R.id.server_name;
            TextView textView = (TextView) a2.b.a(view, R.id.server_name);
            if (textView != null) {
                i10 = R.id.server_state;
                ImageView imageView = (ImageView) a2.b.a(view, R.id.server_state);
                if (imageView != null) {
                    return new q(relativeLayout, materialButton, relativeLayout, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static q c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_server_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public RelativeLayout b() {
        return this.f8640a;
    }
}
