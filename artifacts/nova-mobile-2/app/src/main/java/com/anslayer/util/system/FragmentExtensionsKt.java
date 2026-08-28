package com.anslayer.util.system;

import androidx.fragment.app.Fragment;
import jc.l;
import kc.a;

/* compiled from: FragmentExtensions.kt */
/* loaded from: classes.dex */
public final class FragmentExtensionsKt {
    public static final <T> a<Fragment, T> a(Fragment fragment) {
        l.f(fragment, "<this>");
        return new FragmentExtensionsKt$viewLifecycle$1(fragment);
    }
}
