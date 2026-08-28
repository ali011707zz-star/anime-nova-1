package io.wax911.support.util;

import ic.a;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.attribute.SeasonType;
import jc.l;
import jc.m;

/* compiled from: SupportDateUtil.kt */
/* loaded from: classes.dex */
public final class SupportDateUtil$currentSeasonIndex$2 extends m implements a<Integer> {
    public static final SupportDateUtil$currentSeasonIndex$2 INSTANCE = new SupportDateUtil$currentSeasonIndex$2();

    public SupportDateUtil$currentSeasonIndex$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // ic.a
    public final Integer invoke() {
        String[] strArr;
        strArr = SupportDateUtil.seasons;
        String str = strArr[SupportDateUtil.INSTANCE.getCalendar().get(2)];
        String[] strArr2 = SeasonType.Seasons;
        l.e(strArr2, "Seasons");
        return Integer.valueOf(SupportExtentionKt.constructListFrom(strArr2).indexOf(str));
    }
}
