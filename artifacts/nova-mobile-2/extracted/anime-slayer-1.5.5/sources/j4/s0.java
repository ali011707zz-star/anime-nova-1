package j4;

import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.anslayer.R;
import com.google.android.material.card.MaterialCardView;

/* compiled from: CustomListItemBinding.java */
/* loaded from: classes.dex */
public final class s0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final MaterialCardView f8702a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8703b;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f8704c;

    /* renamed from: d, reason: collision with root package name */
    public final CheckBox f8705d;

    /* renamed from: e, reason: collision with root package name */
    public final View f8706e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8707f;

    public s0(MaterialCardView materialCardView, ImageView imageView, FrameLayout frameLayout, CheckBox checkBox, View view, TextView textView) {
        this.f8702a = materialCardView;
        this.f8703b = imageView;
        this.f8704c = frameLayout;
        this.f8705d = checkBox;
        this.f8706e = view;
        this.f8707f = textView;
    }

    public static s0 a(View view) {
        int i10 = R.id.avatar;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.avatar);
        if (imageView != null) {
            i10 = R.id.card;
            FrameLayout frameLayout = (FrameLayout) a2.b.a(view, R.id.card);
            if (frameLayout != null) {
                i10 = R.id.check;
                CheckBox checkBox = (CheckBox) a2.b.a(view, R.id.check);
                if (checkBox != null) {
                    i10 = R.id.gradient;
                    View a10 = a2.b.a(view, R.id.gradient);
                    if (a10 != null) {
                        i10 = R.id.name;
                        TextView textView = (TextView) a2.b.a(view, R.id.name);
                        if (textView != null) {
                            return new s0((MaterialCardView) view, imageView, frameLayout, checkBox, a10, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
