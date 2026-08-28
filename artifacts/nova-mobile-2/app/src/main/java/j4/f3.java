package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import com.anslayer.R;
import com.anslayer.widget.ContentViewFlipper;
import com.anslayer.widget.MaxHeightScrollView;
import com.anslayer.widget.SpoilerView;

/* compiled from: WidgetComposerBinding.java */
/* loaded from: classes.dex */
public final class f3 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8355a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8356b;

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatEditText f8357c;

    /* renamed from: d, reason: collision with root package name */
    public final ImageButton f8358d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8359e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8360f;

    /* renamed from: g, reason: collision with root package name */
    public final LinearLayout f8361g;

    /* renamed from: h, reason: collision with root package name */
    public final MaxHeightScrollView f8362h;

    /* renamed from: i, reason: collision with root package name */
    public final LinearLayout f8363i;

    /* renamed from: j, reason: collision with root package name */
    public final SpoilerView f8364j;

    /* renamed from: k, reason: collision with root package name */
    public final ContentViewFlipper f8365k;

    public f3(LinearLayout linearLayout, TextView textView, AppCompatEditText appCompatEditText, ImageButton imageButton, TextView textView2, TextView textView3, LinearLayout linearLayout2, MaxHeightScrollView maxHeightScrollView, LinearLayout linearLayout3, SpoilerView spoilerView, ContentViewFlipper contentViewFlipper) {
        this.f8355a = linearLayout;
        this.f8356b = textView;
        this.f8357c = appCompatEditText;
        this.f8358d = imageButton;
        this.f8359e = textView2;
        this.f8360f = textView3;
        this.f8361g = linearLayout2;
        this.f8362h = maxHeightScrollView;
        this.f8363i = linearLayout3;
        this.f8364j = spoilerView;
        this.f8365k = contentViewFlipper;
    }

    public static f3 a(View view) {
        int i10 = R.id.cancel_replying;
        TextView textView = (TextView) a2.b.a(view, R.id.cancel_replying);
        if (textView != null) {
            i10 = R.id.comment_box;
            AppCompatEditText appCompatEditText = (AppCompatEditText) a2.b.a(view, R.id.comment_box);
            if (appCompatEditText != null) {
                i10 = R.id.message_send_btn;
                ImageButton imageButton = (ImageButton) a2.b.a(view, R.id.message_send_btn);
                if (imageButton != null) {
                    i10 = R.id.remaining_text;
                    TextView textView2 = (TextView) a2.b.a(view, R.id.remaining_text);
                    if (textView2 != null) {
                        i10 = R.id.reply_to;
                        TextView textView3 = (TextView) a2.b.a(view, R.id.reply_to);
                        if (textView3 != null) {
                            i10 = R.id.replying_to_container;
                            LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.replying_to_container);
                            if (linearLayout != null) {
                                i10 = R.id.scroll_view;
                                MaxHeightScrollView maxHeightScrollView = (MaxHeightScrollView) a2.b.a(view, R.id.scroll_view);
                                if (maxHeightScrollView != null) {
                                    i10 = R.id.simplebox_container;
                                    LinearLayout linearLayout2 = (LinearLayout) a2.b.a(view, R.id.simplebox_container);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.spoiler;
                                        SpoilerView spoilerView = (SpoilerView) a2.b.a(view, R.id.spoiler);
                                        if (spoilerView != null) {
                                            i10 = R.id.widgetFlipper;
                                            ContentViewFlipper contentViewFlipper = (ContentViewFlipper) a2.b.a(view, R.id.widgetFlipper);
                                            if (contentViewFlipper != null) {
                                                return new f3((LinearLayout) view, textView, appCompatEditText, imageButton, textView2, textView3, linearLayout, maxHeightScrollView, linearLayout2, spoilerView, contentViewFlipper);
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

    public static f3 b(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.widget_composer, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }
}
