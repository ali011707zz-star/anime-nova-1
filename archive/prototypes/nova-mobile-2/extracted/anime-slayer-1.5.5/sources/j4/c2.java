package j4;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import com.anslayer.R;
import com.anslayer.widget.RightAlignedHorizontalScrollView;
import com.google.android.material.chip.ChipGroup;

/* compiled from: SectionMalInfoBinding.java */
/* loaded from: classes.dex */
public final class c2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8196a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8197b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8198c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8199d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8200e;

    /* renamed from: f, reason: collision with root package name */
    public final Barrier f8201f;

    /* renamed from: g, reason: collision with root package name */
    public final RightAlignedHorizontalScrollView f8202g;

    /* renamed from: h, reason: collision with root package name */
    public final ChipGroup f8203h;

    /* renamed from: i, reason: collision with root package name */
    public final ChipGroup f8204i;

    /* renamed from: j, reason: collision with root package name */
    public final ChipGroup f8205j;

    /* renamed from: k, reason: collision with root package name */
    public final TextView f8206k;

    /* renamed from: l, reason: collision with root package name */
    public final TextView f8207l;

    /* renamed from: m, reason: collision with root package name */
    public final TextView f8208m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f8209n;

    /* renamed from: o, reason: collision with root package name */
    public final Group f8210o;

    /* renamed from: p, reason: collision with root package name */
    public final TextView f8211p;

    /* renamed from: q, reason: collision with root package name */
    public final TextView f8212q;

    /* renamed from: r, reason: collision with root package name */
    public final Group f8213r;

    /* renamed from: s, reason: collision with root package name */
    public final TextView f8214s;

    /* renamed from: t, reason: collision with root package name */
    public final TextView f8215t;

    /* renamed from: u, reason: collision with root package name */
    public final TextView f8216u;

    /* renamed from: v, reason: collision with root package name */
    public final Guideline f8217v;

    public c2(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, Barrier barrier, RightAlignedHorizontalScrollView rightAlignedHorizontalScrollView, ChipGroup chipGroup, ChipGroup chipGroup2, ChipGroup chipGroup3, TextView textView5, TextView textView6, TextView textView7, TextView textView8, Group group, TextView textView9, TextView textView10, Group group2, TextView textView11, TextView textView12, TextView textView13, Guideline guideline) {
        this.f8196a = constraintLayout;
        this.f8197b = textView;
        this.f8198c = textView2;
        this.f8199d = textView3;
        this.f8200e = textView4;
        this.f8201f = barrier;
        this.f8202g = rightAlignedHorizontalScrollView;
        this.f8203h = chipGroup;
        this.f8204i = chipGroup2;
        this.f8205j = chipGroup3;
        this.f8206k = textView5;
        this.f8207l = textView6;
        this.f8208m = textView7;
        this.f8209n = textView8;
        this.f8210o = group;
        this.f8211p = textView9;
        this.f8212q = textView10;
        this.f8213r = group2;
        this.f8214s = textView11;
        this.f8215t = textView12;
        this.f8216u = textView13;
        this.f8217v = guideline;
    }

    public static c2 a(View view) {
        int i10 = R.id.aired_from_label;
        TextView textView = (TextView) a2.b.a(view, R.id.aired_from_label);
        if (textView != null) {
            i10 = R.id.aired_from_value;
            TextView textView2 = (TextView) a2.b.a(view, R.id.aired_from_value);
            if (textView2 != null) {
                i10 = R.id.aired_to_label;
                TextView textView3 = (TextView) a2.b.a(view, R.id.aired_to_label);
                if (textView3 != null) {
                    i10 = R.id.aired_to_value;
                    TextView textView4 = (TextView) a2.b.a(view, R.id.aired_to_value);
                    if (textView4 != null) {
                        i10 = R.id.anime_chips_barrier;
                        Barrier barrier = (Barrier) a2.b.a(view, R.id.anime_chips_barrier);
                        if (barrier != null) {
                            i10 = R.id.anime_genres_tags_compact;
                            RightAlignedHorizontalScrollView rightAlignedHorizontalScrollView = (RightAlignedHorizontalScrollView) a2.b.a(view, R.id.anime_genres_tags_compact);
                            if (rightAlignedHorizontalScrollView != null) {
                                i10 = R.id.anime_genres_tags_compact_chips;
                                ChipGroup chipGroup = (ChipGroup) a2.b.a(view, R.id.anime_genres_tags_compact_chips);
                                if (chipGroup != null) {
                                    i10 = R.id.anime_genres_tags_full_chips;
                                    ChipGroup chipGroup2 = (ChipGroup) a2.b.a(view, R.id.anime_genres_tags_full_chips);
                                    if (chipGroup2 != null) {
                                        i10 = R.id.anime_studios_tags;
                                        ChipGroup chipGroup3 = (ChipGroup) a2.b.a(view, R.id.anime_studios_tags);
                                        if (chipGroup3 != null) {
                                            i10 = R.id.anime_studios_unknown;
                                            TextView textView5 = (TextView) a2.b.a(view, R.id.anime_studios_unknown);
                                            if (textView5 != null) {
                                                i10 = R.id.anime_summary_text;
                                                TextView textView6 = (TextView) a2.b.a(view, R.id.anime_summary_text);
                                                if (textView6 != null) {
                                                    i10 = R.id.duration_label;
                                                    TextView textView7 = (TextView) a2.b.a(view, R.id.duration_label);
                                                    if (textView7 != null) {
                                                        i10 = R.id.duration_value;
                                                        TextView textView8 = (TextView) a2.b.a(view, R.id.duration_value);
                                                        if (textView8 != null) {
                                                            i10 = R.id.eng_title_group;
                                                            Group group = (Group) a2.b.a(view, R.id.eng_title_group);
                                                            if (group != null) {
                                                                i10 = R.id.eng_title_label;
                                                                TextView textView9 = (TextView) a2.b.a(view, R.id.eng_title_label);
                                                                if (textView9 != null) {
                                                                    i10 = R.id.eng_title_value;
                                                                    TextView textView10 = (TextView) a2.b.a(view, R.id.eng_title_value);
                                                                    if (textView10 != null) {
                                                                        i10 = R.id.mal_info_group;
                                                                        Group group2 = (Group) a2.b.a(view, R.id.mal_info_group);
                                                                        if (group2 != null) {
                                                                            i10 = R.id.source_label;
                                                                            TextView textView11 = (TextView) a2.b.a(view, R.id.source_label);
                                                                            if (textView11 != null) {
                                                                                i10 = R.id.source_value;
                                                                                TextView textView12 = (TextView) a2.b.a(view, R.id.source_value);
                                                                                if (textView12 != null) {
                                                                                    i10 = R.id.studio_label;
                                                                                    TextView textView13 = (TextView) a2.b.a(view, R.id.studio_label);
                                                                                    if (textView13 != null) {
                                                                                        i10 = R.id.verticalcenter;
                                                                                        Guideline guideline = (Guideline) a2.b.a(view, R.id.verticalcenter);
                                                                                        if (guideline != null) {
                                                                                            return new c2((ConstraintLayout) view, textView, textView2, textView3, textView4, barrier, rightAlignedHorizontalScrollView, chipGroup, chipGroup2, chipGroup3, textView5, textView6, textView7, textView8, group, textView9, textView10, group2, textView11, textView12, textView13, guideline);
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
}
