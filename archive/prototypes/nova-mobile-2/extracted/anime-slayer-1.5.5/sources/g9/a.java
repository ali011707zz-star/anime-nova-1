package g9;

import android.graphics.Color;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpStatus;

/* compiled from: ColorTemplate.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f7041a = {Color.rgb(HttpStatus.SC_MULTI_STATUS, 248, 246), Color.rgb(148, 212, 212), Color.rgb(136, BaseTransientBottomBar.ANIMATION_FADE_DURATION, 187), Color.rgb(118, 174, HideBottomViewOnScrollBehavior.EXIT_ANIMATION_DURATION), Color.rgb(42, 109, 130)};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f7042b = {Color.rgb(217, 80, 138), Color.rgb(254, 149, 7), Color.rgb(254, 247, 120), Color.rgb(106, 167, 134), Color.rgb(53, 194, 209)};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f7043c = {Color.rgb(64, 89, 128), Color.rgb(149, 165, 124), Color.rgb(217, 184, 162), Color.rgb(191, 134, 134), Color.rgb(179, 48, 80)};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f7044d = {Color.rgb(193, 37, 82), Color.rgb(BaseProgressIndicator.MAX_ALPHA, 102, 0), Color.rgb(245, 199, 0), Color.rgb(106, 150, 31), Color.rgb(179, 100, 53)};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f7045e = {Color.rgb(192, BaseProgressIndicator.MAX_ALPHA, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE), Color.rgb(BaseProgressIndicator.MAX_ALPHA, 247, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE), Color.rgb(BaseProgressIndicator.MAX_ALPHA, 208, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE), Color.rgb(TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE, 234, BaseProgressIndicator.MAX_ALPHA), Color.rgb(BaseProgressIndicator.MAX_ALPHA, TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE, 157)};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f7046f = {c("#2ecc71"), c("#f1c40f"), c("#e74c3c"), c("#3498db")};

    public static int a(int i10, int i11) {
        return (i10 & 16777215) | ((i11 & BaseProgressIndicator.MAX_ALPHA) << 24);
    }

    public static List<Integer> b(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }

    public static int c(String str) {
        int parseLong = (int) Long.parseLong(str.replace("#", ""), 16);
        return Color.rgb((parseLong >> 16) & BaseProgressIndicator.MAX_ALPHA, (parseLong >> 8) & BaseProgressIndicator.MAX_ALPHA, (parseLong >> 0) & BaseProgressIndicator.MAX_ALPHA);
    }
}
