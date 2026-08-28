package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.nguyenhoanglam.progresslayout.ProgressLayout;

/* compiled from: CharacterDetailsBinding.java */
/* loaded from: classes.dex */
public final class f0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ProgressLayout f8334a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8335b;

    /* renamed from: c, reason: collision with root package name */
    public final RecyclerView f8336c;

    /* renamed from: d, reason: collision with root package name */
    public final ImageView f8337d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8338e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8339f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f8340g;

    /* renamed from: h, reason: collision with root package name */
    public final View f8341h;

    /* renamed from: i, reason: collision with root package name */
    public final AppCompatImageView f8342i;

    /* renamed from: j, reason: collision with root package name */
    public final TextView f8343j;

    /* renamed from: k, reason: collision with root package name */
    public final ProgressLayout f8344k;

    /* renamed from: l, reason: collision with root package name */
    public final NestedScrollView f8345l;

    /* renamed from: m, reason: collision with root package name */
    public final RecyclerView f8346m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f8347n;

    public f0(ProgressLayout progressLayout, TextView textView, RecyclerView recyclerView, ImageView imageView, TextView textView2, TextView textView3, TextView textView4, View view, AppCompatImageView appCompatImageView, TextView textView5, ProgressLayout progressLayout2, NestedScrollView nestedScrollView, RecyclerView recyclerView2, TextView textView6) {
        this.f8334a = progressLayout;
        this.f8335b = textView;
        this.f8336c = recyclerView;
        this.f8337d = imageView;
        this.f8338e = textView2;
        this.f8339f = textView3;
        this.f8340g = textView4;
        this.f8341h = view;
        this.f8342i = appCompatImageView;
        this.f8343j = textView5;
        this.f8344k = progressLayout2;
        this.f8345l = nestedScrollView;
        this.f8346m = recyclerView2;
        this.f8347n = textView6;
    }

    public static f0 a(View view) {
        int i10 = R.id.anime_header;
        TextView textView = (TextView) a2.b.a(view, R.id.anime_header);
        if (textView != null) {
            i10 = R.id.anime_list;
            RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.anime_list);
            if (recyclerView != null) {
                i10 = R.id.character_cover;
                ImageView imageView = (ImageView) a2.b.a(view, R.id.character_cover);
                if (imageView != null) {
                    i10 = R.id.character_description;
                    TextView textView2 = (TextView) a2.b.a(view, R.id.character_description);
                    if (textView2 != null) {
                        i10 = R.id.character_love_count;
                        TextView textView3 = (TextView) a2.b.a(view, R.id.character_love_count);
                        if (textView3 != null) {
                            i10 = R.id.character_name;
                            TextView textView4 = (TextView) a2.b.a(view, R.id.character_name);
                            if (textView4 != null) {
                                i10 = R.id.divider;
                                View a10 = a2.b.a(view, R.id.divider);
                                if (a10 != null) {
                                    i10 = R.id.heart;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.heart);
                                    if (appCompatImageView != null) {
                                        i10 = R.id.liked_text;
                                        TextView textView5 = (TextView) a2.b.a(view, R.id.liked_text);
                                        if (textView5 != null) {
                                            ProgressLayout progressLayout = (ProgressLayout) view;
                                            i10 = R.id.seriesNestedScrollView;
                                            NestedScrollView nestedScrollView = (NestedScrollView) a2.b.a(view, R.id.seriesNestedScrollView);
                                            if (nestedScrollView != null) {
                                                i10 = R.id.voice_actors_list;
                                                RecyclerView recyclerView2 = (RecyclerView) a2.b.a(view, R.id.voice_actors_list);
                                                if (recyclerView2 != null) {
                                                    i10 = R.id.voice_header;
                                                    TextView textView6 = (TextView) a2.b.a(view, R.id.voice_header);
                                                    if (textView6 != null) {
                                                        return new f0(progressLayout, textView, recyclerView, imageView, textView2, textView3, textView4, a10, appCompatImageView, textView5, progressLayout, nestedScrollView, recyclerView2, textView6);
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

    public static f0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.character_details, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ProgressLayout b() {
        return this.f8334a;
    }
}
