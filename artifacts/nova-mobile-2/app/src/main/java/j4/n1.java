package j4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: PeopleProfileFragmentBinding.java */
/* loaded from: classes.dex */
public final class n1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8557a;

    /* renamed from: b, reason: collision with root package name */
    public final AppBarLayout f8558b;

    /* renamed from: c, reason: collision with root package name */
    public final MaterialButton f8559c;

    /* renamed from: d, reason: collision with root package name */
    public final CollapsingToolbarLayout f8560d;

    /* renamed from: e, reason: collision with root package name */
    public final CoordinatorLayout f8561e;

    /* renamed from: f, reason: collision with root package name */
    public final ErrorView f8562f;

    /* renamed from: g, reason: collision with root package name */
    public final RecyclerView f8563g;

    /* renamed from: h, reason: collision with root package name */
    public final SingleLineTextView f8564h;

    /* renamed from: i, reason: collision with root package name */
    public final ViewPager f8565i;

    /* renamed from: j, reason: collision with root package name */
    public final LinearLayout f8566j;

    /* renamed from: k, reason: collision with root package name */
    public final ProgressBar f8567k;

    /* renamed from: l, reason: collision with root package name */
    public final TextView f8568l;

    /* renamed from: m, reason: collision with root package name */
    public final TabLayout f8569m;

    /* renamed from: n, reason: collision with root package name */
    public final MaterialToolbar f8570n;

    /* renamed from: o, reason: collision with root package name */
    public final TextView f8571o;

    /* renamed from: p, reason: collision with root package name */
    public final AppCompatImageView f8572p;

    /* renamed from: q, reason: collision with root package name */
    public final ShapeableImageView f8573q;

    /* renamed from: r, reason: collision with root package name */
    public final SingleLineTextView f8574r;

    public n1(LinearLayout linearLayout, AppBarLayout appBarLayout, MaterialButton materialButton, CollapsingToolbarLayout collapsingToolbarLayout, CoordinatorLayout coordinatorLayout, ErrorView errorView, RecyclerView recyclerView, SingleLineTextView singleLineTextView, ViewPager viewPager, LinearLayout linearLayout2, ProgressBar progressBar, TextView textView, TabLayout tabLayout, MaterialToolbar materialToolbar, TextView textView2, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, SingleLineTextView singleLineTextView2) {
        this.f8557a = linearLayout;
        this.f8558b = appBarLayout;
        this.f8559c = materialButton;
        this.f8560d = collapsingToolbarLayout;
        this.f8561e = coordinatorLayout;
        this.f8562f = errorView;
        this.f8563g = recyclerView;
        this.f8564h = singleLineTextView;
        this.f8565i = viewPager;
        this.f8566j = linearLayout2;
        this.f8567k = progressBar;
        this.f8568l = textView;
        this.f8569m = tabLayout;
        this.f8570n = materialToolbar;
        this.f8571o = textView2;
        this.f8572p = appCompatImageView;
        this.f8573q = shapeableImageView;
        this.f8574r = singleLineTextView2;
    }

    public static n1 a(View view) {
        int i10 = R.id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) a2.b.a(view, R.id.app_bar);
        if (appBarLayout != null) {
            i10 = R.id.blocked;
            MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.blocked);
            if (materialButton != null) {
                i10 = R.id.collapse_toolbar;
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) a2.b.a(view, R.id.collapse_toolbar);
                if (collapsingToolbarLayout != null) {
                    i10 = R.id.content;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) a2.b.a(view, R.id.content);
                    if (coordinatorLayout != null) {
                        i10 = R.id.error_view;
                        ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
                        if (errorView != null) {
                            i10 = R.id.icon_items_container;
                            RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.icon_items_container);
                            if (recyclerView != null) {
                                i10 = R.id.name;
                                SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.name);
                                if (singleLineTextView != null) {
                                    i10 = R.id.pager;
                                    ViewPager viewPager = (ViewPager) a2.b.a(view, R.id.pager);
                                    if (viewPager != null) {
                                        i10 = R.id.profile_user_details;
                                        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.profile_user_details);
                                        if (linearLayout != null) {
                                            i10 = R.id.progress;
                                            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                                            if (progressBar != null) {
                                                i10 = R.id.role;
                                                TextView textView = (TextView) a2.b.a(view, R.id.role);
                                                if (textView != null) {
                                                    i10 = R.id.tabs;
                                                    TabLayout tabLayout = (TabLayout) a2.b.a(view, R.id.tabs);
                                                    if (tabLayout != null) {
                                                        i10 = R.id.toolbar;
                                                        MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                                                        if (materialToolbar != null) {
                                                            i10 = R.id.user_bio;
                                                            TextView textView2 = (TextView) a2.b.a(view, R.id.user_bio);
                                                            if (textView2 != null) {
                                                                i10 = R.id.user_cover;
                                                                AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.user_cover);
                                                                if (appCompatImageView != null) {
                                                                    i10 = R.id.user_image;
                                                                    ShapeableImageView shapeableImageView = (ShapeableImageView) a2.b.a(view, R.id.user_image);
                                                                    if (shapeableImageView != null) {
                                                                        i10 = R.id.user_name;
                                                                        SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.user_name);
                                                                        if (singleLineTextView2 != null) {
                                                                            return new n1((LinearLayout) view, appBarLayout, materialButton, collapsingToolbarLayout, coordinatorLayout, errorView, recyclerView, singleLineTextView, viewPager, linearLayout, progressBar, textView, tabLayout, materialToolbar, textView2, appCompatImageView, shapeableImageView, singleLineTextView2);
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
