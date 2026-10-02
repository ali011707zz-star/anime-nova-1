package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.anslayer.R;

/* compiled from: VoiceActorItemBinding.java */
/* loaded from: classes.dex */
public final class b3 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CardView f8162a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8163b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8164c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8165d;

    public b3(CardView cardView, ImageView imageView, TextView textView, TextView textView2) {
        this.f8162a = cardView;
        this.f8163b = imageView;
        this.f8164c = textView;
        this.f8165d = textView2;
    }

    public static b3 a(View view) {
        int i10 = R.id.avatar;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.avatar);
        if (imageView != null) {
            i10 = R.id.job;
            TextView textView = (TextView) a2.b.a(view, R.id.job);
            if (textView != null) {
                i10 = R.id.name;
                TextView textView2 = (TextView) a2.b.a(view, R.id.name);
                if (textView2 != null) {
                    return new b3((CardView) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b3 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.voice_actor_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public CardView b() {
        return this.f8162a;
    }
}
