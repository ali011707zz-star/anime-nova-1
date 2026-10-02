package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anslayer.R;
import com.anslayer.widget.ContentViewFlipper;

/* compiled from: WidgetCommentActionBinding.java */
/* loaded from: classes.dex */
public final class e3 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8319a;

    /* renamed from: b, reason: collision with root package name */
    public final ContentViewFlipper f8320b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f8321c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8322d;

    /* renamed from: e, reason: collision with root package name */
    public final ImageButton f8323e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8324f;

    /* renamed from: g, reason: collision with root package name */
    public final ImageButton f8325g;

    /* renamed from: h, reason: collision with root package name */
    public final ImageView f8326h;

    /* renamed from: i, reason: collision with root package name */
    public final ImageView f8327i;

    /* renamed from: j, reason: collision with root package name */
    public final ImageView f8328j;

    /* renamed from: k, reason: collision with root package name */
    public final TextView f8329k;

    public e3(LinearLayout linearLayout, ContentViewFlipper contentViewFlipper, ImageView imageView, TextView textView, ImageButton imageButton, TextView textView2, ImageButton imageButton2, ImageView imageView2, ImageView imageView3, ImageView imageView4, TextView textView3) {
        this.f8319a = linearLayout;
        this.f8320b = contentViewFlipper;
        this.f8321c = imageView;
        this.f8322d = textView;
        this.f8323e = imageButton;
        this.f8324f = textView2;
        this.f8325g = imageButton2;
        this.f8326h = imageView2;
        this.f8327i = imageView3;
        this.f8328j = imageView4;
        this.f8329k = textView3;
    }

    public static e3 a(View view) {
        int i10 = R.id.commentDeleteFlipper;
        ContentViewFlipper contentViewFlipper = (ContentViewFlipper) a2.b.a(view, R.id.commentDeleteFlipper);
        if (contentViewFlipper != null) {
            i10 = R.id.commentDeleteIcon;
            ImageView imageView = (ImageView) a2.b.a(view, R.id.commentDeleteIcon);
            if (imageView != null) {
                i10 = R.id.comment_dislike_count;
                TextView textView = (TextView) a2.b.a(view, R.id.comment_dislike_count);
                if (textView != null) {
                    i10 = R.id.commentDislikes;
                    ImageButton imageButton = (ImageButton) a2.b.a(view, R.id.commentDislikes);
                    if (imageButton != null) {
                        i10 = R.id.comment_like_count;
                        TextView textView2 = (TextView) a2.b.a(view, R.id.comment_like_count);
                        if (textView2 != null) {
                            i10 = R.id.commentLikes;
                            ImageButton imageButton2 = (ImageButton) a2.b.a(view, R.id.commentLikes);
                            if (imageButton2 != null) {
                                i10 = R.id.commentMention;
                                ImageView imageView2 = (ImageView) a2.b.a(view, R.id.commentMention);
                                if (imageView2 != null) {
                                    i10 = R.id.comment_menu;
                                    ImageView imageView3 = (ImageView) a2.b.a(view, R.id.comment_menu);
                                    if (imageView3 != null) {
                                        i10 = R.id.commentReplies;
                                        ImageView imageView4 = (ImageView) a2.b.a(view, R.id.commentReplies);
                                        if (imageView4 != null) {
                                            i10 = R.id.comment_reply_count;
                                            TextView textView3 = (TextView) a2.b.a(view, R.id.comment_reply_count);
                                            if (textView3 != null) {
                                                return new e3((LinearLayout) view, contentViewFlipper, imageView, textView, imageButton, textView2, imageButton2, imageView2, imageView3, imageView4, textView3);
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

    public static e3 b(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.widget_comment_action, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }
}
