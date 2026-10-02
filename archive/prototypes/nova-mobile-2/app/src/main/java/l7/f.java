package l7;

import android.content.res.Resources;
import com.anslayer.R;
import com.anslayer.widget.SupportRefreshLayout;
import io.wax911.support.SupportExtentionKt;

/* compiled from: SupportRefreshExtensions.kt */
/* loaded from: classes.dex */
public final class f {
    public static final androidx.fragment.app.e a(SupportRefreshLayout supportRefreshLayout, androidx.fragment.app.e eVar, r5.b<?> bVar) {
        jc.l.f(supportRefreshLayout, "<this>");
        jc.l.f(bVar, "presenter");
        if (eVar == null) {
            return null;
        }
        Resources resources = eVar.getResources();
        jc.l.e(resources, "it.resources");
        supportRefreshLayout.D(1, SupportExtentionKt.getNavigationBarHeight(resources));
        supportRefreshLayout.setProgressBackgroundColorSchemeColor(SupportExtentionKt.getColorFromAttr(eVar, R.attr.swipeRefreshLayoutSpinnerBackgroundColor));
        supportRefreshLayout.setColorSchemeColors(SupportExtentionKt.getColorFromAttr(eVar, R.attr.colorOnPrimary));
        supportRefreshLayout.setPermitRefresh(bVar.isPager());
        supportRefreshLayout.setPermitLoad(false);
        supportRefreshLayout.setVisibility(8);
        return eVar;
    }

    public static final void b(SupportRefreshLayout supportRefreshLayout) {
        jc.l.f(supportRefreshLayout, "<this>");
        supportRefreshLayout.setRefreshing(false);
        supportRefreshLayout.setLoading(false);
    }
}
