package io.wax911.support.util;

import ic.a;
import io.wax911.support.base.attribute.SeasonType;
import jc.m;

/* compiled from: SupportDateUtil.kt */
/* loaded from: classes.dex */
public final class SupportDateUtil$currentSeason$2 extends m implements a<String> {
    public static final SupportDateUtil$currentSeason$2 INSTANCE = new SupportDateUtil$currentSeason$2();

    public SupportDateUtil$currentSeason$2() {
        super(0);
    }

    @Override // ic.a
    public final String invoke() {
        return SeasonType.Seasons[SupportDateUtil.INSTANCE.getCalendar().get(2)];
    }
}
