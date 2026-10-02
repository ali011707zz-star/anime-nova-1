package g6;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.chip.ChipGroup;
import io.wax911.support.custom.recycler.SupportRecyclerView;

/* compiled from: BrowseFragmentUserPage.kt */
/* loaded from: classes.dex */
public class k extends h {

    /* compiled from: BrowseFragmentUserPage.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<vb.p> {
        public a() {
            super(0);
        }

        public final void a() {
            c G = k.this.G();
            if (G == null) {
                return;
            }
            G.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: BrowseFragmentUserPage.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<vb.p> {
        public b() {
            super(0);
        }

        public final void a() {
            c G = k.this.G();
            if (G == null) {
                return;
            }
            G.j();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    public static final void i0(k kVar, ChipGroup chipGroup, int i10) {
        jc.l.f(kVar, "this$0");
        if (i10 == -1) {
            kVar.h0("all");
            return;
        }
        switch (i10) {
            case R.id.chip_movie /* 2131362067 */:
                kVar.h0("Movie");
                return;
            case R.id.chip_not_yet_aired /* 2131362068 */:
            case R.id.chip_ongoing /* 2131362070 */:
            default:
                return;
            case R.id.chip_ona /* 2131362069 */:
                kVar.h0("ONA");
                return;
            case R.id.chip_ova /* 2131362071 */:
                kVar.h0("OVA");
                return;
            case R.id.chip_special /* 2131362072 */:
                kVar.h0("Special");
                return;
            case R.id.chip_tv /* 2131362073 */:
                kVar.h0("TV");
                return;
        }
    }

    public static final void j0(k kVar, ChipGroup chipGroup, int i10) {
        jc.l.f(kVar, "this$0");
        if (i10 == -1) {
            kVar.g0("all");
            return;
        }
        if (i10 == R.id.chip_completed) {
            kVar.g0("Finished Airing");
        } else if (i10 == R.id.chip_not_yet_aired) {
            kVar.g0("Not Yet Aired");
        } else {
            if (i10 != R.id.chip_ongoing) {
                return;
            }
            kVar.g0("Currently Airing");
        }
    }

    @Override // g6.e
    public void P(boolean z10) {
        AppBarLayout appBarLayout = H().f8169b;
        jc.l.e(appBarLayout, "binding.appBar");
        appBarLayout.setVisibility(z10 ? 0 : 8);
    }

    @Override // g6.e
    public void V(SupportRecyclerView supportRecyclerView) {
        jc.l.f(supportRecyclerView, "<this>");
        int g10 = k7.b.g(4);
        supportRecyclerView.setPadding(g10, 0, g10, g10);
    }

    public final void g0(String str) {
        jc.l.f(str, "state");
        RecyclerView M = M();
        if (M != null) {
            c G = G();
            M.setAdapter(G == null ? null : G.l(new u(new a())));
        }
        com.github.salomonbrys.kotson.d.a(K(), "anime_status", str);
        R(K(), true);
    }

    public final void h0(String str) {
        jc.l.f(str, "type");
        RecyclerView M = M();
        if (M != null) {
            c G = G();
            M.setAdapter(G == null ? null : G.l(new u(new b())));
        }
        com.github.salomonbrys.kotson.d.a(K(), "anime_type", str);
        R(K(), true);
    }

    @Override // g6.h, g6.e, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(false);
        F(true);
    }

    @Override // g6.e, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        AppBarLayout appBarLayout = H().f8169b;
        jc.l.e(appBarLayout, "binding.appBar");
        appBarLayout.setVisibility(0);
        H().f8186s.setOnCheckedChangeListener(new ChipGroup.OnCheckedChangeListener() { // from class: g6.i
            @Override // com.google.android.material.chip.ChipGroup.OnCheckedChangeListener
            public final void onCheckedChanged(ChipGroup chipGroup, int i10) {
                k.i0(k.this, chipGroup, i10);
            }
        });
        H().f8184q.setOnCheckedChangeListener(new ChipGroup.OnCheckedChangeListener() { // from class: g6.j
            @Override // com.google.android.material.chip.ChipGroup.OnCheckedChangeListener
            public final void onCheckedChanged(ChipGroup chipGroup, int i10) {
                k.j0(k.this, chipGroup, i10);
            }
        });
    }
}
