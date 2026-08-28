package l7;

import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import w6.s;

/* compiled from: ViewExtensions.kt */
/* loaded from: classes.dex */
public final class n implements ChipGroup.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f10505a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChipGroup f10506b;

    public n(s sVar, ChipGroup chipGroup) {
        this.f10505a = sVar;
        this.f10506b = chipGroup;
    }

    @Override // com.google.android.material.chip.ChipGroup.OnCheckedChangeListener
    public final void onCheckedChanged(ChipGroup chipGroup, int i10) {
        if (i10 == -1) {
            this.f10505a.c(-1);
            return;
        }
        this.f10505a.c(Integer.valueOf(this.f10506b.indexOfChild((Chip) chipGroup.findViewById(i10))));
    }
}
