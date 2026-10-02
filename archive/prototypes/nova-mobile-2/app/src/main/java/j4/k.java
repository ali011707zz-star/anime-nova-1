package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.anslayer.R;
import com.anslayer.widget.SlayerCard;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: AdapterNotificationBinding.java */
/* loaded from: classes.dex */
public final class k implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final SlayerCard f8479a;

    /* renamed from: b, reason: collision with root package name */
    public final View f8480b;

    /* renamed from: c, reason: collision with root package name */
    public final SlayerCard f8481c;

    /* renamed from: d, reason: collision with root package name */
    public final SingleLineTextView f8482d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8483e;

    /* renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f8484f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f8485g;

    /* renamed from: h, reason: collision with root package name */
    public final TextView f8486h;

    public k(SlayerCard slayerCard, View view, SlayerCard slayerCard2, SingleLineTextView singleLineTextView, TextView textView, AppCompatImageView appCompatImageView, TextView textView2, TextView textView3) {
        this.f8479a = slayerCard;
        this.f8480b = view;
        this.f8481c = slayerCard2;
        this.f8482d = singleLineTextView;
        this.f8483e = textView;
        this.f8484f = appCompatImageView;
        this.f8485g = textView2;
        this.f8486h = textView3;
    }

    public static k a(View view) {
        int i10 = R.id.backdrop;
        View a10 = a2.b.a(view, R.id.backdrop);
        if (a10 != null) {
            SlayerCard slayerCard = (SlayerCard) view;
            i10 = R.id.notification_date;
            SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.notification_date);
            if (singleLineTextView != null) {
                i10 = R.id.notification_extra;
                TextView textView = (TextView) a2.b.a(view, R.id.notification_extra);
                if (textView != null) {
                    i10 = R.id.notification_item_option;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.notification_item_option);
                    if (appCompatImageView != null) {
                        i10 = R.id.notification_text_type;
                        TextView textView2 = (TextView) a2.b.a(view, R.id.notification_text_type);
                        if (textView2 != null) {
                            i10 = R.id.notification_user;
                            TextView textView3 = (TextView) a2.b.a(view, R.id.notification_user);
                            if (textView3 != null) {
                                return new k(slayerCard, a10, slayerCard, singleLineTextView, textView, appCompatImageView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_notification, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public SlayerCard b() {
        return this.f8479a;
    }
}
