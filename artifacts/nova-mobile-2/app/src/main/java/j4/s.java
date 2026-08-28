package j4;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;

/* compiled from: AddAnimeHolderBinding.java */
/* loaded from: classes.dex */
public final class s implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8697a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageButton f8698b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f8699c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8700d;

    /* renamed from: e, reason: collision with root package name */
    public final ImageButton f8701e;

    public s(ConstraintLayout constraintLayout, ImageButton imageButton, ImageView imageView, TextView textView, ImageButton imageButton2) {
        this.f8697a = constraintLayout;
        this.f8698b = imageButton;
        this.f8699c = imageView;
        this.f8700d = textView;
        this.f8701e = imageButton2;
    }

    public static s a(View view) {
        int i10 = R.id.add;
        ImageButton imageButton = (ImageButton) a2.b.a(view, R.id.add);
        if (imageButton != null) {
            i10 = R.id.cover;
            ImageView imageView = (ImageView) a2.b.a(view, R.id.cover);
            if (imageView != null) {
                i10 = R.id.manga_title;
                TextView textView = (TextView) a2.b.a(view, R.id.manga_title);
                if (textView != null) {
                    i10 = R.id.remove;
                    ImageButton imageButton2 = (ImageButton) a2.b.a(view, R.id.remove);
                    if (imageButton2 != null) {
                        return new s((ConstraintLayout) view, imageButton, imageView, textView, imageButton2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
