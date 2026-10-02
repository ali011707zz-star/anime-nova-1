package t0;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import p0.i;

/* compiled from: EditorInfoCompat.java */
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f13999a = new String[0];

    /* compiled from: EditorInfoCompat.java */
    /* renamed from: t0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0344a {
        public static void a(EditorInfo editorInfo, CharSequence charSequence, int i10) {
            editorInfo.setInitialSurroundingSubText(charSequence, i10);
        }
    }

    public static String[] a(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : f13999a;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return f13999a;
        }
        String[] stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
        }
        return stringArray != null ? stringArray : f13999a;
    }

    public static boolean b(CharSequence charSequence, int i10, int i11) {
        if (i11 == 0) {
            return Character.isLowSurrogate(charSequence.charAt(i10));
        }
        if (i11 != 1) {
            return false;
        }
        return Character.isHighSurrogate(charSequence.charAt(i10));
    }

    public static boolean c(int i10) {
        int i11 = i10 & 4095;
        return i11 == 129 || i11 == 225 || i11 == 18;
    }

    public static void d(EditorInfo editorInfo, String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
        editorInfo.extras.putStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
    }

    public static void e(EditorInfo editorInfo, CharSequence charSequence, int i10) {
        i.g(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            C0344a.a(editorInfo, charSequence, i10);
            return;
        }
        int i11 = editorInfo.initialSelStart;
        int i12 = editorInfo.initialSelEnd;
        int i13 = i11 > i12 ? i12 - i10 : i11 - i10;
        int i14 = i11 > i12 ? i11 - i10 : i12 - i10;
        int length = charSequence.length();
        if (i10 >= 0 && i13 >= 0 && i14 <= length) {
            if (c(editorInfo.inputType)) {
                g(editorInfo, null, 0, 0);
                return;
            } else if (length <= 2048) {
                g(editorInfo, charSequence, i13, i14);
                return;
            } else {
                h(editorInfo, charSequence, i13, i14);
                return;
            }
        }
        g(editorInfo, null, 0, 0);
    }

    public static void f(EditorInfo editorInfo, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            C0344a.a(editorInfo, charSequence, 0);
        } else {
            e(editorInfo, charSequence, 0);
        }
    }

    public static void g(EditorInfo editorInfo, CharSequence charSequence, int i10, int i11) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i10);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i11);
    }

    public static void h(EditorInfo editorInfo, CharSequence charSequence, int i10, int i11) {
        CharSequence subSequence;
        int i12 = i11 - i10;
        int i13 = i12 > 1024 ? 0 : i12;
        int length = charSequence.length() - i11;
        int i14 = 2048 - i13;
        double d10 = i14;
        Double.isNaN(d10);
        int min = Math.min(length, i14 - Math.min(i10, (int) (d10 * 0.8d)));
        int min2 = Math.min(i10, i14 - min);
        int i15 = i10 - min2;
        if (b(charSequence, i15, 0)) {
            i15++;
            min2--;
        }
        if (b(charSequence, (i11 + min) - 1, 1)) {
            min--;
        }
        int i16 = min2 + i13 + min;
        if (i13 != i12) {
            subSequence = TextUtils.concat(charSequence.subSequence(i15, i15 + min2), charSequence.subSequence(i11, min + i11));
        } else {
            subSequence = charSequence.subSequence(i15, i16 + i15);
        }
        int i17 = min2 + 0;
        g(editorInfo, subSequence, i17, i13 + i17);
    }
}
