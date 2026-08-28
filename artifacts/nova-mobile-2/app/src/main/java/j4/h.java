package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.anslayer.widget.SlayerAvatar;
import com.anslayer.widget.SlayerCommentAction;
import com.google.android.material.button.MaterialButton;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: AdapterCommentNotificationBinding.java */
/* loaded from: classes.dex */
public final class h implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8391a;

    /* renamed from: b, reason: collision with root package name */
    public final SlayerAvatar f8392b;

    /* renamed from: c, reason: collision with root package name */
    public final SingleLineTextView f8393c;

    /* renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f8394d;

    /* renamed from: e, reason: collision with root package name */
    public final SlayerCommentAction f8395e;

    /* renamed from: f, reason: collision with root package name */
    public final FrameLayout f8396f;

    /* renamed from: g, reason: collision with root package name */
    public final SingleLineTextView f8397g;

    /* renamed from: h, reason: collision with root package name */
    public final ConstraintLayout f8398h;

    /* renamed from: i, reason: collision with root package name */
    public final SlayerCommentAction f8399i;

    /* renamed from: j, reason: collision with root package name */
    public final SlayerAvatar f8400j;

    /* renamed from: k, reason: collision with root package name */
    public final TextView f8401k;

    /* renamed from: l, reason: collision with root package name */
    public final TextView f8402l;

    /* renamed from: m, reason: collision with root package name */
    public final Space f8403m;

    /* renamed from: n, reason: collision with root package name */
    public final SingleLineTextView f8404n;

    /* renamed from: o, reason: collision with root package name */
    public final MaterialButton f8405o;

    public h(FrameLayout frameLayout, SlayerAvatar slayerAvatar, SingleLineTextView singleLineTextView, AppCompatTextView appCompatTextView, SlayerCommentAction slayerCommentAction, FrameLayout frameLayout2, SingleLineTextView singleLineTextView2, ConstraintLayout constraintLayout, SlayerCommentAction slayerCommentAction2, SlayerAvatar slayerAvatar2, TextView textView, TextView textView2, Space space, SingleLineTextView singleLineTextView3, MaterialButton materialButton) {
        this.f8391a = frameLayout;
        this.f8392b = slayerAvatar;
        this.f8393c = singleLineTextView;
        this.f8394d = appCompatTextView;
        this.f8395e = slayerCommentAction;
        this.f8396f = frameLayout2;
        this.f8397g = singleLineTextView2;
        this.f8398h = constraintLayout;
        this.f8399i = slayerCommentAction2;
        this.f8400j = slayerAvatar2;
        this.f8401k = textView;
        this.f8402l = textView2;
        this.f8403m = space;
        this.f8404n = singleLineTextView3;
        this.f8405o = materialButton;
    }

    public static h a(View view) {
        int i10 = R.id.commentAvatar;
        SlayerAvatar slayerAvatar = (SlayerAvatar) a2.b.a(view, R.id.commentAvatar);
        if (slayerAvatar != null) {
            i10 = R.id.comment_date;
            SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.comment_date);
            if (singleLineTextView != null) {
                i10 = R.id.commentText;
                AppCompatTextView appCompatTextView = (AppCompatTextView) a2.b.a(view, R.id.commentText);
                if (appCompatTextView != null) {
                    i10 = R.id.commentWidget;
                    SlayerCommentAction slayerCommentAction = (SlayerCommentAction) a2.b.a(view, R.id.commentWidget);
                    if (slayerCommentAction != null) {
                        FrameLayout frameLayout = (FrameLayout) view;
                        i10 = R.id.full_name;
                        SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.full_name);
                        if (singleLineTextView2 != null) {
                            i10 = R.id.highlight;
                            ConstraintLayout constraintLayout = (ConstraintLayout) a2.b.a(view, R.id.highlight);
                            if (constraintLayout != null) {
                                i10 = R.id.highlight_actions;
                                SlayerCommentAction slayerCommentAction2 = (SlayerCommentAction) a2.b.a(view, R.id.highlight_actions);
                                if (slayerCommentAction2 != null) {
                                    i10 = R.id.highlight_avatr;
                                    SlayerAvatar slayerAvatar2 = (SlayerAvatar) a2.b.a(view, R.id.highlight_avatr);
                                    if (slayerAvatar2 != null) {
                                        i10 = R.id.highlight_comment;
                                        TextView textView = (TextView) a2.b.a(view, R.id.highlight_comment);
                                        if (textView != null) {
                                            i10 = R.id.highlight_date;
                                            TextView textView2 = (TextView) a2.b.a(view, R.id.highlight_date);
                                            if (textView2 != null) {
                                                i10 = R.id.highlight_space;
                                                Space space = (Space) a2.b.a(view, R.id.highlight_space);
                                                if (space != null) {
                                                    i10 = R.id.highlight_user;
                                                    SingleLineTextView singleLineTextView3 = (SingleLineTextView) a2.b.a(view, R.id.highlight_user);
                                                    if (singleLineTextView3 != null) {
                                                        i10 = R.id.highlight_view_replies;
                                                        MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.highlight_view_replies);
                                                        if (materialButton != null) {
                                                            return new h(frameLayout, slayerAvatar, singleLineTextView, appCompatTextView, slayerCommentAction, frameLayout, singleLineTextView2, constraintLayout, slayerCommentAction2, slayerAvatar2, textView, textView2, space, singleLineTextView3, materialButton);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_comment_notification, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8391a;
    }
}
