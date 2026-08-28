package l7;

import android.view.View;

/* compiled from: ViewExtensions.kt */
/* loaded from: classes.dex */
public final class k implements View.OnClickListener {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ic.p<String, String, vb.p> f10500f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f10501g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f10502h;

    /* JADX WARN: Multi-variable type inference failed */
    public k(ic.p<? super String, ? super String, vb.p> pVar, String str, String str2) {
        this.f10500f = pVar;
        this.f10501g = str;
        this.f10502h = str2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f10500f.invoke(this.f10501g, this.f10502h);
    }
}
