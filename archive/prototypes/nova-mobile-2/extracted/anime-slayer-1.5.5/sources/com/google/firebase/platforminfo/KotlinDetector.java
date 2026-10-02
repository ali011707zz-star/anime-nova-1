package com.google.firebase.platforminfo;

import vb.c;

/* loaded from: classes.dex */
public final class KotlinDetector {
    public static String detectVersion() {
        try {
            return c.f15007k.toString();
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }
}
