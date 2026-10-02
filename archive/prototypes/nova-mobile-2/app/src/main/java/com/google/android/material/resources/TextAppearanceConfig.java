package com.google.android.material.resources;

@Deprecated
/* loaded from: classes.dex */
public class TextAppearanceConfig {
    private static boolean shouldLoadFontSynchronously;

    public static void setShouldLoadFontSynchronously(boolean z10) {
        shouldLoadFontSynchronously = z10;
    }

    public static boolean shouldLoadFontSynchronously() {
        return shouldLoadFontSynchronously;
    }
}
