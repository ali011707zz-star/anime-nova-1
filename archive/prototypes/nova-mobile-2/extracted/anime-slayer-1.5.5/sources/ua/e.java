package ua;

import androidx.lifecycle.k;
import jc.l;
import ra.f;

/* compiled from: YouTubePlayerUtils.kt */
/* loaded from: classes.dex */
public final class e {
    public static final void a(f fVar, k kVar, String str, float f10) {
        l.f(fVar, "<this>");
        l.f(kVar, "lifecycle");
        l.f(str, "videoId");
        b(fVar, kVar.b() == k.c.RESUMED, str, f10);
    }

    public static final /* synthetic */ void b(f fVar, boolean z10, String str, float f10) {
        l.f(fVar, "<this>");
        l.f(str, "videoId");
        if (z10) {
            fVar.g(str, f10);
        } else {
            fVar.h(str, f10);
        }
    }
}
