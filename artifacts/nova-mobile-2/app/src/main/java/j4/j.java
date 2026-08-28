package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import com.anslayer.R;
import com.anslayer.widget.SlayerImage;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: AdapterMediaBinding.java */
/* loaded from: classes.dex */
public final class j implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CardView f8442a;

    /* renamed from: b, reason: collision with root package name */
    public final CardView f8443b;

    /* renamed from: c, reason: collision with root package name */
    public final SlayerImage f8444c;

    /* renamed from: d, reason: collision with root package name */
    public final SingleLineTextView f8445d;

    public j(CardView cardView, CardView cardView2, SlayerImage slayerImage, SingleLineTextView singleLineTextView) {
        this.f8442a = cardView;
        this.f8443b = cardView2;
        this.f8444c = slayerImage;
        this.f8445d = singleLineTextView;
    }

    public static j a(View view) {
        CardView cardView = (CardView) view;
        int i10 = R.id.seriesImage;
        SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.seriesImage);
        if (slayerImage != null) {
            i10 = R.id.seriesTitle;
            SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.seriesTitle);
            if (singleLineTextView != null) {
                return new j(cardView, cardView, slayerImage, singleLineTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_media, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public CardView b() {
        return this.f8442a;
    }
}
