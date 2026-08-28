package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import l9.d;
import l9.h;
import l9.m;

@Keep
/* loaded from: classes.dex */
public class CctBackendFactory implements d {
    @Override // l9.d
    public m create(h hVar) {
        return new i9.d(hVar.b(), hVar.e(), hVar.d());
    }
}
