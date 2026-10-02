package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.google.android.material.button.MaterialButton;
import com.nguyenhoanglam.progresslayout.ProgressLayout;

/* compiled from: VoiceActorDetailsFragmentBinding.java */
/* loaded from: classes.dex */
public final class a3 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ProgressLayout f8140a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8141b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8142c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8143d;

    /* renamed from: e, reason: collision with root package name */
    public final RecyclerView f8144e;

    /* renamed from: f, reason: collision with root package name */
    public final View f8145f;

    /* renamed from: g, reason: collision with root package name */
    public final MaterialButton f8146g;

    /* renamed from: h, reason: collision with root package name */
    public final ProgressLayout f8147h;

    /* renamed from: i, reason: collision with root package name */
    public final NestedScrollView f8148i;

    public a3(ProgressLayout progressLayout, ImageView imageView, TextView textView, TextView textView2, RecyclerView recyclerView, View view, MaterialButton materialButton, ProgressLayout progressLayout2, NestedScrollView nestedScrollView) {
        this.f8140a = progressLayout;
        this.f8141b = imageView;
        this.f8142c = textView;
        this.f8143d = textView2;
        this.f8144e = recyclerView;
        this.f8145f = view;
        this.f8146g = materialButton;
        this.f8147h = progressLayout2;
        this.f8148i = nestedScrollView;
    }

    public static a3 a(View view) {
        int i10 = R.id.actor_cover;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.actor_cover);
        if (imageView != null) {
            i10 = R.id.actor_name;
            TextView textView = (TextView) a2.b.a(view, R.id.actor_name);
            if (textView != null) {
                i10 = R.id.actor_nation;
                TextView textView2 = (TextView) a2.b.a(view, R.id.actor_nation);
                if (textView2 != null) {
                    i10 = R.id.anime_character_list;
                    RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.anime_character_list);
                    if (recyclerView != null) {
                        i10 = R.id.divider;
                        View a10 = a2.b.a(view, R.id.divider);
                        if (a10 != null) {
                            i10 = R.id.more;
                            MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.more);
                            if (materialButton != null) {
                                ProgressLayout progressLayout = (ProgressLayout) view;
                                i10 = R.id.seriesNestedScrollView;
                                NestedScrollView nestedScrollView = (NestedScrollView) a2.b.a(view, R.id.seriesNestedScrollView);
                                if (nestedScrollView != null) {
                                    return new a3(progressLayout, imageView, textView, textView2, recyclerView, a10, materialButton, progressLayout, nestedScrollView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a3 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a3 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.voice_actor_details_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ProgressLayout b() {
        return this.f8140a;
    }
}
