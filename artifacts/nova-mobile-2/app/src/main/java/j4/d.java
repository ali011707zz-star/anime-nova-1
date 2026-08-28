package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.drawerlayout.widget.DrawerLayout;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.tabs.TabLayout;

/* compiled from: ActivityMainBinding.java */
/* loaded from: classes.dex */
public final class d implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final DrawerLayout f8223a;

    /* renamed from: b, reason: collision with root package name */
    public final DrawerLayout f8224b;

    /* renamed from: c, reason: collision with root package name */
    public final NavigationView f8225c;

    /* renamed from: d, reason: collision with root package name */
    public final TabLayout f8226d;

    /* renamed from: e, reason: collision with root package name */
    public final MaterialToolbar f8227e;

    public d(DrawerLayout drawerLayout, DrawerLayout drawerLayout2, NavigationView navigationView, TabLayout tabLayout, MaterialToolbar materialToolbar) {
        this.f8223a = drawerLayout;
        this.f8224b = drawerLayout2;
        this.f8225c = navigationView;
        this.f8226d = tabLayout;
        this.f8227e = materialToolbar;
    }

    public static d a(View view) {
        DrawerLayout drawerLayout = (DrawerLayout) view;
        int i10 = R.id.navigationDrawer;
        NavigationView navigationView = (NavigationView) a2.b.a(view, R.id.navigationDrawer);
        if (navigationView != null) {
            i10 = R.id.tabs;
            TabLayout tabLayout = (TabLayout) a2.b.a(view, R.id.tabs);
            if (tabLayout != null) {
                i10 = R.id.toolbar;
                MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                if (materialToolbar != null) {
                    return new d(drawerLayout, drawerLayout, navigationView, tabLayout, materialToolbar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public DrawerLayout b() {
        return this.f8223a;
    }
}
