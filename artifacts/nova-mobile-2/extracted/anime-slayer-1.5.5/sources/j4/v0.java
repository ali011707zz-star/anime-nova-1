package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import com.anslayer.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.ChipGroup;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: DialogFilterBinding.java */
/* loaded from: classes.dex */
public final class v0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final NestedScrollView f8761a;

    /* renamed from: b, reason: collision with root package name */
    public final ChipGroup f8762b;

    /* renamed from: c, reason: collision with root package name */
    public final ChipGroup f8763c;

    /* renamed from: d, reason: collision with root package name */
    public final MaterialButton f8764d;

    /* renamed from: e, reason: collision with root package name */
    public final ChipGroup f8765e;

    /* renamed from: f, reason: collision with root package name */
    public final ChipGroup f8766f;

    /* renamed from: g, reason: collision with root package name */
    public final ChipGroup f8767g;

    /* renamed from: h, reason: collision with root package name */
    public final MaterialButton f8768h;

    /* renamed from: i, reason: collision with root package name */
    public final ChipGroup f8769i;

    /* renamed from: j, reason: collision with root package name */
    public final SingleLineTextView f8770j;

    /* renamed from: k, reason: collision with root package name */
    public final ChipGroup f8771k;

    /* renamed from: l, reason: collision with root package name */
    public final MaterialButton f8772l;

    public v0(NestedScrollView nestedScrollView, ChipGroup chipGroup, ChipGroup chipGroup2, MaterialButton materialButton, ChipGroup chipGroup3, ChipGroup chipGroup4, ChipGroup chipGroup5, MaterialButton materialButton2, ChipGroup chipGroup6, SingleLineTextView singleLineTextView, ChipGroup chipGroup7, MaterialButton materialButton3) {
        this.f8761a = nestedScrollView;
        this.f8762b = chipGroup;
        this.f8763c = chipGroup2;
        this.f8764d = materialButton;
        this.f8765e = chipGroup3;
        this.f8766f = chipGroup4;
        this.f8767g = chipGroup5;
        this.f8768h = materialButton2;
        this.f8769i = chipGroup6;
        this.f8770j = singleLineTextView;
        this.f8771k = chipGroup7;
        this.f8772l = materialButton3;
    }

    public static v0 a(View view) {
        int i10 = R.id.anime_age_rating_tags;
        ChipGroup chipGroup = (ChipGroup) a2.b.a(view, R.id.anime_age_rating_tags);
        if (chipGroup != null) {
            i10 = R.id.anime_genre_tags;
            ChipGroup chipGroup2 = (ChipGroup) a2.b.a(view, R.id.anime_genre_tags);
            if (chipGroup2 != null) {
                i10 = R.id.anime_genre_toggle;
                MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.anime_genre_toggle);
                if (materialButton != null) {
                    i10 = R.id.anime_season_tags;
                    ChipGroup chipGroup3 = (ChipGroup) a2.b.a(view, R.id.anime_season_tags);
                    if (chipGroup3 != null) {
                        i10 = R.id.anime_status_tags;
                        ChipGroup chipGroup4 = (ChipGroup) a2.b.a(view, R.id.anime_status_tags);
                        if (chipGroup4 != null) {
                            i10 = R.id.anime_studio_tags;
                            ChipGroup chipGroup5 = (ChipGroup) a2.b.a(view, R.id.anime_studio_tags);
                            if (chipGroup5 != null) {
                                i10 = R.id.anime_studio_toggle;
                                MaterialButton materialButton2 = (MaterialButton) a2.b.a(view, R.id.anime_studio_toggle);
                                if (materialButton2 != null) {
                                    i10 = R.id.anime_type_tags;
                                    ChipGroup chipGroup6 = (ChipGroup) a2.b.a(view, R.id.anime_type_tags);
                                    if (chipGroup6 != null) {
                                        i10 = R.id.anime_type_title;
                                        SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.anime_type_title);
                                        if (singleLineTextView != null) {
                                            i10 = R.id.anime_year_tags;
                                            ChipGroup chipGroup7 = (ChipGroup) a2.b.a(view, R.id.anime_year_tags);
                                            if (chipGroup7 != null) {
                                                i10 = R.id.anime_year_toggle;
                                                MaterialButton materialButton3 = (MaterialButton) a2.b.a(view, R.id.anime_year_toggle);
                                                if (materialButton3 != null) {
                                                    return new v0((NestedScrollView) view, chipGroup, chipGroup2, materialButton, chipGroup3, chipGroup4, chipGroup5, materialButton2, chipGroup6, singleLineTextView, chipGroup7, materialButton3);
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

    public static v0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_filter, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public NestedScrollView b() {
        return this.f8761a;
    }
}
