package x4;

import android.webkit.JavascriptInterface;
import ic.l;
import vb.p;

/* compiled from: Requests.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final l<String, p> f15958a;

    /* JADX WARN: Multi-variable type inference failed */
    public a(l<? super String, p> lVar) {
        jc.l.f(lVar, "block");
        this.f15958a = lVar;
    }

    @JavascriptInterface
    public final void showHTML(String str) {
        jc.l.f(str, "html");
        this.f15958a.invoke(str);
    }
}
