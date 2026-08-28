package l7;

import android.widget.CompoundButton;
import w6.q;

/* compiled from: ViewExtensions.kt */
/* loaded from: classes.dex */
public final class l implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ q f10503f;

    public l(q qVar) {
        this.f10503f = qVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
        this.f10503f.c(Boolean.valueOf(z10));
    }
}
