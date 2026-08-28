package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.anslayer.R;
import com.anslayer.widget.SlayerCommentAction;
import com.google.android.material.imageview.ShapeableImageView;

/* compiled from: AdapterCommentBinding.java */
/* loaded from: classes.dex */
public final class g implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8366a;

    /* renamed from: b, reason: collision with root package name */
    public final ShapeableImageView f8367b;

    /* renamed from: c, reason: collision with root package name */
    public final View f8368c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8369d;

    /* renamed from: e, reason: collision with root package name */
    public final k0 f8370e;

    /* renamed from: f, reason: collision with root package name */
    public final LinearLayout f8371f;

    /* renamed from: g, reason: collision with root package name */
    public final SlayerCommentAction f8372g;

    /* renamed from: h, reason: collision with root package name */
    public final LinearLayout f8373h;

    /* renamed from: i, reason: collision with root package name */
    public final Space f8374i;

    public g(LinearLayout linearLayout, ShapeableImageView shapeableImageView, View view, TextView textView, k0 k0Var, LinearLayout linearLayout2, SlayerCommentAction slayerCommentAction, LinearLayout linearLayout3, Space space) {
        this.f8366a = linearLayout;
        this.f8367b = shapeableImageView;
        this.f8368c = view;
        this.f8369d = textView;
        this.f8370e = k0Var;
        this.f8371f = linearLayout2;
        this.f8372g = slayerCommentAction;
        this.f8373h = linearLayout3;
        this.f8374i = space;
    }

    public static g a(View view) {
        int i10 = R.id.comment_avatar;
        ShapeableImageView shapeableImageView = (ShapeableImageView) a2.b.a(view, R.id.comment_avatar);
        if (shapeableImageView != null) {
            i10 = R.id.comment_divider;
            View a10 = a2.b.a(view, R.id.comment_divider);
            if (a10 != null) {
                i10 = R.id.comment_expand_button;
                TextView textView = (TextView) a2.b.a(view, R.id.comment_expand_button);
                if (textView != null) {
                    i10 = R.id.comment_metadata;
                    View a11 = a2.b.a(view, R.id.comment_metadata);
                    if (a11 != null) {
                        k0 a12 = k0.a(a11);
                        i10 = R.id.comment_thread;
                        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.comment_thread);
                        if (linearLayout != null) {
                            i10 = R.id.commentWidget;
                            SlayerCommentAction slayerCommentAction = (SlayerCommentAction) a2.b.a(view, R.id.commentWidget);
                            if (slayerCommentAction != null) {
                                LinearLayout linearLayout2 = (LinearLayout) view;
                                i10 = R.id.left_margin;
                                Space space = (Space) a2.b.a(view, R.id.left_margin);
                                if (space != null) {
                                    return new g(linearLayout2, shapeableImageView, a10, textView, a12, linearLayout, slayerCommentAction, linearLayout2, space);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_comment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8366a;
    }
}
