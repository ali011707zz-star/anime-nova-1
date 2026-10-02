package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.switchmaterial.SwitchMaterial;

/* compiled from: UserSettingsActivityBinding.java */
/* loaded from: classes.dex */
public final class y2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8845a;

    /* renamed from: b, reason: collision with root package name */
    public final AppBarLayout f8846b;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f8847c;

    /* renamed from: d, reason: collision with root package name */
    public final SwitchMaterial f8848d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8849e;

    /* renamed from: f, reason: collision with root package name */
    public final View f8850f;

    /* renamed from: g, reason: collision with root package name */
    public final MaterialButton f8851g;

    /* renamed from: h, reason: collision with root package name */
    public final MaterialButton f8852h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f8853i;

    /* renamed from: j, reason: collision with root package name */
    public final LinearLayout f8854j;

    /* renamed from: k, reason: collision with root package name */
    public final FrameLayout f8855k;

    /* renamed from: l, reason: collision with root package name */
    public final SwitchMaterial f8856l;

    /* renamed from: m, reason: collision with root package name */
    public final ProgressBar f8857m;

    /* renamed from: n, reason: collision with root package name */
    public final FrameLayout f8858n;

    /* renamed from: o, reason: collision with root package name */
    public final SwitchMaterial f8859o;

    /* renamed from: p, reason: collision with root package name */
    public final MaterialToolbar f8860p;

    /* renamed from: q, reason: collision with root package name */
    public final MaterialButton f8861q;

    public y2(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, FrameLayout frameLayout, SwitchMaterial switchMaterial, TextView textView, View view, MaterialButton materialButton, MaterialButton materialButton2, TextView textView2, LinearLayout linearLayout, FrameLayout frameLayout2, SwitchMaterial switchMaterial2, ProgressBar progressBar, FrameLayout frameLayout3, SwitchMaterial switchMaterial3, MaterialToolbar materialToolbar, MaterialButton materialButton3) {
        this.f8845a = constraintLayout;
        this.f8846b = appBarLayout;
        this.f8847c = frameLayout;
        this.f8848d = switchMaterial;
        this.f8849e = textView;
        this.f8850f = view;
        this.f8851g = materialButton;
        this.f8852h = materialButton2;
        this.f8853i = textView2;
        this.f8854j = linearLayout;
        this.f8855k = frameLayout2;
        this.f8856l = switchMaterial2;
        this.f8857m = progressBar;
        this.f8858n = frameLayout3;
        this.f8859o = switchMaterial3;
        this.f8860p = materialToolbar;
        this.f8861q = materialButton3;
    }

    public static y2 a(View view) {
        int i10 = R.id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) a2.b.a(view, R.id.app_bar);
        if (appBarLayout != null) {
            i10 = R.id.auto_toggle_watched_ep_container;
            FrameLayout frameLayout = (FrameLayout) a2.b.a(view, R.id.auto_toggle_watched_ep_container);
            if (frameLayout != null) {
                i10 = R.id.auto_toggle_watched_ep_switch;
                SwitchMaterial switchMaterial = (SwitchMaterial) a2.b.a(view, R.id.auto_toggle_watched_ep_switch);
                if (switchMaterial != null) {
                    i10 = R.id.change_password;
                    TextView textView = (TextView) a2.b.a(view, R.id.change_password);
                    if (textView != null) {
                        i10 = R.id.divider;
                        View a10 = a2.b.a(view, R.id.divider);
                        if (a10 != null) {
                            i10 = R.id.email_link;
                            MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.email_link);
                            if (materialButton != null) {
                                i10 = R.id.google_link;
                                MaterialButton materialButton2 = (MaterialButton) a2.b.a(view, R.id.google_link);
                                if (materialButton2 != null) {
                                    i10 = R.id.linked_account_header;
                                    TextView textView2 = (TextView) a2.b.a(view, R.id.linked_account_header);
                                    if (textView2 != null) {
                                        i10 = R.id.linked_container;
                                        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.linked_container);
                                        if (linearLayout != null) {
                                            i10 = R.id.news_container;
                                            FrameLayout frameLayout2 = (FrameLayout) a2.b.a(view, R.id.news_container);
                                            if (frameLayout2 != null) {
                                                i10 = R.id.news_notification_switch;
                                                SwitchMaterial switchMaterial2 = (SwitchMaterial) a2.b.a(view, R.id.news_notification_switch);
                                                if (switchMaterial2 != null) {
                                                    i10 = R.id.progress;
                                                    ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                                                    if (progressBar != null) {
                                                        i10 = R.id.show_mylist_container;
                                                        FrameLayout frameLayout3 = (FrameLayout) a2.b.a(view, R.id.show_mylist_container);
                                                        if (frameLayout3 != null) {
                                                            i10 = R.id.show_mylist_switch;
                                                            SwitchMaterial switchMaterial3 = (SwitchMaterial) a2.b.a(view, R.id.show_mylist_switch);
                                                            if (switchMaterial3 != null) {
                                                                i10 = R.id.toolbar;
                                                                MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                                                                if (materialToolbar != null) {
                                                                    i10 = R.id.twitter_link;
                                                                    MaterialButton materialButton3 = (MaterialButton) a2.b.a(view, R.id.twitter_link);
                                                                    if (materialButton3 != null) {
                                                                        return new y2((ConstraintLayout) view, appBarLayout, frameLayout, switchMaterial, textView, a10, materialButton, materialButton2, textView2, linearLayout, frameLayout2, switchMaterial2, progressBar, frameLayout3, switchMaterial3, materialToolbar, materialButton3);
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

    public static y2 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static y2 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_settings_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8845a;
    }
}
