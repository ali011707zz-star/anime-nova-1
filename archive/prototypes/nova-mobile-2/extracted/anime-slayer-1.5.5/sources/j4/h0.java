package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.anslayer.R;

/* compiled from: CharacterListItemBinding.java */
/* loaded from: classes.dex */
public final class h0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8406a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8407b;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f8408c;

    /* renamed from: d, reason: collision with root package name */
    public final View f8409d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8410e;

    public h0(FrameLayout frameLayout, ImageView imageView, FrameLayout frameLayout2, View view, TextView textView) {
        this.f8406a = frameLayout;
        this.f8407b = imageView;
        this.f8408c = frameLayout2;
        this.f8409d = view;
        this.f8410e = textView;
    }

    public static h0 a(View view) {
        int i10 = R.id.avatar;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.avatar);
        if (imageView != null) {
            i10 = R.id.card;
            FrameLayout frameLayout = (FrameLayout) a2.b.a(view, R.id.card);
            if (frameLayout != null) {
                i10 = R.id.gradient;
                View a10 = a2.b.a(view, R.id.gradient);
                if (a10 != null) {
                    i10 = R.id.name;
                    TextView textView = (TextView) a2.b.a(view, R.id.name);
                    if (textView != null) {
                        return new h0((FrameLayout) view, imageView, frameLayout, a10, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.character_list_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8406a;
    }
}
