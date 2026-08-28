package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.anslayer.widget.SlayerComposerWidget;

/* compiled from: FragmentCommentBinding.java */
/* loaded from: classes.dex */
public final class z0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayoutCompat f8865a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8866b;

    /* renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f8867c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8868d;

    /* renamed from: e, reason: collision with root package name */
    public final SlayerComposerWidget f8869e;

    /* renamed from: f, reason: collision with root package name */
    public final View f8870f;

    /* renamed from: g, reason: collision with root package name */
    public final p2 f8871g;

    public z0(LinearLayoutCompat linearLayoutCompat, TextView textView, ConstraintLayout constraintLayout, TextView textView2, SlayerComposerWidget slayerComposerWidget, View view, p2 p2Var) {
        this.f8865a = linearLayoutCompat;
        this.f8866b = textView;
        this.f8867c = constraintLayout;
        this.f8868d = textView2;
        this.f8869e = slayerComposerWidget;
        this.f8870f = view;
        this.f8871g = p2Var;
    }

    public static z0 a(View view) {
        int i10 = R.id.comment_eps_name;
        TextView textView = (TextView) a2.b.a(view, R.id.comment_eps_name);
        if (textView != null) {
            i10 = R.id.comment_location;
            ConstraintLayout constraintLayout = (ConstraintLayout) a2.b.a(view, R.id.comment_location);
            if (constraintLayout != null) {
                i10 = R.id.comment_title;
                TextView textView2 = (TextView) a2.b.a(view, R.id.comment_title);
                if (textView2 != null) {
                    i10 = R.id.composerWidget;
                    SlayerComposerWidget slayerComposerWidget = (SlayerComposerWidget) a2.b.a(view, R.id.composerWidget);
                    if (slayerComposerWidget != null) {
                        i10 = R.id.simplebox_divider;
                        View a10 = a2.b.a(view, R.id.simplebox_divider);
                        if (a10 != null) {
                            i10 = R.id.support_list;
                            View a11 = a2.b.a(view, R.id.support_list);
                            if (a11 != null) {
                                return new z0((LinearLayoutCompat) view, textView, constraintLayout, textView2, slayerComposerWidget, a10, p2.a(a11));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static z0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_comment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayoutCompat b() {
        return this.f8865a;
    }
}
