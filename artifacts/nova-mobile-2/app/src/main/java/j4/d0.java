package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;

/* compiled from: CharacterAnimeActorItemBinding.java */
/* loaded from: classes.dex */
public final class d0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8228a;

    /* renamed from: b, reason: collision with root package name */
    public final FrameLayout f8229b;

    /* renamed from: c, reason: collision with root package name */
    public final View f8230c;

    /* renamed from: d, reason: collision with root package name */
    public final ImageView f8231d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8232e;

    /* renamed from: f, reason: collision with root package name */
    public final ImageView f8233f;

    /* renamed from: g, reason: collision with root package name */
    public final FrameLayout f8234g;

    /* renamed from: h, reason: collision with root package name */
    public final FrameLayout f8235h;

    /* renamed from: i, reason: collision with root package name */
    public final FrameLayout f8236i;

    /* renamed from: j, reason: collision with root package name */
    public final View f8237j;

    /* renamed from: k, reason: collision with root package name */
    public final ImageView f8238k;

    /* renamed from: l, reason: collision with root package name */
    public final TextView f8239l;

    /* renamed from: m, reason: collision with root package name */
    public final TextView f8240m;

    public d0(ConstraintLayout constraintLayout, FrameLayout frameLayout, View view, ImageView imageView, TextView textView, ImageView imageView2, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, View view2, ImageView imageView3, TextView textView2, TextView textView3) {
        this.f8228a = constraintLayout;
        this.f8229b = frameLayout;
        this.f8230c = view;
        this.f8231d = imageView;
        this.f8232e = textView;
        this.f8233f = imageView2;
        this.f8234g = frameLayout2;
        this.f8235h = frameLayout3;
        this.f8236i = frameLayout4;
        this.f8237j = view2;
        this.f8238k = imageView3;
        this.f8239l = textView2;
        this.f8240m = textView3;
    }

    public static d0 a(View view) {
        int i10 = R.id.anime_container;
        FrameLayout frameLayout = (FrameLayout) a2.b.a(view, R.id.anime_container);
        if (frameLayout != null) {
            i10 = R.id.anime_gradient;
            View a10 = a2.b.a(view, R.id.anime_gradient);
            if (a10 != null) {
                i10 = R.id.anime_image;
                ImageView imageView = (ImageView) a2.b.a(view, R.id.anime_image);
                if (imageView != null) {
                    i10 = R.id.anime_name;
                    TextView textView = (TextView) a2.b.a(view, R.id.anime_name);
                    if (textView != null) {
                        i10 = R.id.arrow;
                        ImageView imageView2 = (ImageView) a2.b.a(view, R.id.arrow);
                        if (imageView2 != null) {
                            i10 = R.id.card_anime;
                            FrameLayout frameLayout2 = (FrameLayout) a2.b.a(view, R.id.card_anime);
                            if (frameLayout2 != null) {
                                i10 = R.id.card_character;
                                FrameLayout frameLayout3 = (FrameLayout) a2.b.a(view, R.id.card_character);
                                if (frameLayout3 != null) {
                                    i10 = R.id.character_container;
                                    FrameLayout frameLayout4 = (FrameLayout) a2.b.a(view, R.id.character_container);
                                    if (frameLayout4 != null) {
                                        i10 = R.id.character_gradient;
                                        View a11 = a2.b.a(view, R.id.character_gradient);
                                        if (a11 != null) {
                                            i10 = R.id.character_image;
                                            ImageView imageView3 = (ImageView) a2.b.a(view, R.id.character_image);
                                            if (imageView3 != null) {
                                                i10 = R.id.character_name;
                                                TextView textView2 = (TextView) a2.b.a(view, R.id.character_name);
                                                if (textView2 != null) {
                                                    i10 = R.id.character_role;
                                                    TextView textView3 = (TextView) a2.b.a(view, R.id.character_role);
                                                    if (textView3 != null) {
                                                        return new d0((ConstraintLayout) view, frameLayout, a10, imageView, textView, imageView2, frameLayout2, frameLayout3, frameLayout4, a11, imageView3, textView2, textView3);
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

    public static d0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.character_anime_actor_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8228a;
    }
}
