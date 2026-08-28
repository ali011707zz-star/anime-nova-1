package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import com.anslayer.R;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import io.wax911.support.custom.recycler.SupportRecyclerView;

/* compiled from: CharactersFragmentBinding.java */
/* loaded from: classes.dex */
public final class j0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ProgressLayout f8446a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8447b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8448c;

    /* renamed from: d, reason: collision with root package name */
    public final SupportRecyclerView f8449d;

    /* renamed from: e, reason: collision with root package name */
    public final LinearLayout f8450e;

    /* renamed from: f, reason: collision with root package name */
    public final Group f8451f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f8452g;

    /* renamed from: h, reason: collision with root package name */
    public final ProgressLayout f8453h;

    /* renamed from: i, reason: collision with root package name */
    public final NestedScrollView f8454i;

    /* renamed from: j, reason: collision with root package name */
    public final SupportRecyclerView f8455j;

    /* renamed from: k, reason: collision with root package name */
    public final LinearLayout f8456k;

    /* renamed from: l, reason: collision with root package name */
    public final Group f8457l;

    /* renamed from: m, reason: collision with root package name */
    public final TextView f8458m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f8459n;

    /* renamed from: o, reason: collision with root package name */
    public final TextView f8460o;

    /* renamed from: p, reason: collision with root package name */
    public final SupportRecyclerView f8461p;

    /* renamed from: q, reason: collision with root package name */
    public final LinearLayout f8462q;

    /* renamed from: r, reason: collision with root package name */
    public final Group f8463r;

    /* renamed from: s, reason: collision with root package name */
    public final TextView f8464s;

    public j0(ProgressLayout progressLayout, TextView textView, TextView textView2, SupportRecyclerView supportRecyclerView, LinearLayout linearLayout, Group group, TextView textView3, ProgressLayout progressLayout2, NestedScrollView nestedScrollView, SupportRecyclerView supportRecyclerView2, LinearLayout linearLayout2, Group group2, TextView textView4, TextView textView5, TextView textView6, SupportRecyclerView supportRecyclerView3, LinearLayout linearLayout3, Group group3, TextView textView7) {
        this.f8446a = progressLayout;
        this.f8447b = textView;
        this.f8448c = textView2;
        this.f8449d = supportRecyclerView;
        this.f8450e = linearLayout;
        this.f8451f = group;
        this.f8452g = textView3;
        this.f8453h = progressLayout2;
        this.f8454i = nestedScrollView;
        this.f8455j = supportRecyclerView2;
        this.f8456k = linearLayout2;
        this.f8457l = group2;
        this.f8458m = textView4;
        this.f8459n = textView5;
        this.f8460o = textView6;
        this.f8461p = supportRecyclerView3;
        this.f8462q = linearLayout3;
        this.f8463r = group3;
        this.f8464s = textView7;
    }

    public static j0 a(View view) {
        int i10 = R.id.empty_text;
        TextView textView = (TextView) a2.b.a(view, R.id.empty_text);
        if (textView != null) {
            i10 = R.id.main_characters_header;
            TextView textView2 = (TextView) a2.b.a(view, R.id.main_characters_header);
            if (textView2 != null) {
                i10 = R.id.main_characters_list;
                SupportRecyclerView supportRecyclerView = (SupportRecyclerView) a2.b.a(view, R.id.main_characters_list);
                if (supportRecyclerView != null) {
                    i10 = R.id.main_container;
                    LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.main_container);
                    if (linearLayout != null) {
                        i10 = R.id.main_group;
                        Group group = (Group) a2.b.a(view, R.id.main_group);
                        if (group != null) {
                            i10 = R.id.main_see_more;
                            TextView textView3 = (TextView) a2.b.a(view, R.id.main_see_more);
                            if (textView3 != null) {
                                ProgressLayout progressLayout = (ProgressLayout) view;
                                i10 = R.id.seriesNestedScrollView;
                                NestedScrollView nestedScrollView = (NestedScrollView) a2.b.a(view, R.id.seriesNestedScrollView);
                                if (nestedScrollView != null) {
                                    i10 = R.id.staff_characters_list;
                                    SupportRecyclerView supportRecyclerView2 = (SupportRecyclerView) a2.b.a(view, R.id.staff_characters_list);
                                    if (supportRecyclerView2 != null) {
                                        i10 = R.id.staff_container;
                                        LinearLayout linearLayout2 = (LinearLayout) a2.b.a(view, R.id.staff_container);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.staff_group;
                                            Group group2 = (Group) a2.b.a(view, R.id.staff_group);
                                            if (group2 != null) {
                                                i10 = R.id.staff_header;
                                                TextView textView4 = (TextView) a2.b.a(view, R.id.staff_header);
                                                if (textView4 != null) {
                                                    i10 = R.id.staff_see_more;
                                                    TextView textView5 = (TextView) a2.b.a(view, R.id.staff_see_more);
                                                    if (textView5 != null) {
                                                        i10 = R.id.support_characters_header;
                                                        TextView textView6 = (TextView) a2.b.a(view, R.id.support_characters_header);
                                                        if (textView6 != null) {
                                                            i10 = R.id.support_characters_list;
                                                            SupportRecyclerView supportRecyclerView3 = (SupportRecyclerView) a2.b.a(view, R.id.support_characters_list);
                                                            if (supportRecyclerView3 != null) {
                                                                i10 = R.id.support_container;
                                                                LinearLayout linearLayout3 = (LinearLayout) a2.b.a(view, R.id.support_container);
                                                                if (linearLayout3 != null) {
                                                                    i10 = R.id.support_group;
                                                                    Group group3 = (Group) a2.b.a(view, R.id.support_group);
                                                                    if (group3 != null) {
                                                                        i10 = R.id.support_see_more;
                                                                        TextView textView7 = (TextView) a2.b.a(view, R.id.support_see_more);
                                                                        if (textView7 != null) {
                                                                            return new j0(progressLayout, textView, textView2, supportRecyclerView, linearLayout, group, textView3, progressLayout, nestedScrollView, supportRecyclerView2, linearLayout2, group2, textView4, textView5, textView6, supportRecyclerView3, linearLayout3, group3, textView7);
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

    public static j0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.characters_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ProgressLayout b() {
        return this.f8446a;
    }
}
