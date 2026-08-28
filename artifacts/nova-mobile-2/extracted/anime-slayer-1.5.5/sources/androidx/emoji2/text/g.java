package androidx.emoji2.text;

import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.emoji2.text.d;
import androidx.emoji2.text.l;
import java.util.Arrays;

/* compiled from: EmojiProcessor.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final d.i f1961a;

    /* renamed from: b, reason: collision with root package name */
    public final l f1962b;

    /* renamed from: c, reason: collision with root package name */
    public d.InterfaceC0036d f1963c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1964d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f1965e;

    /* compiled from: EmojiProcessor.java */
    /* loaded from: classes.dex */
    public static final class a {
        public static int a(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    i10--;
                    if (i10 < 0) {
                        return z10 ? -1 : 0;
                    }
                    char charAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        i11--;
                    } else if (!Character.isSurrogate(charAt)) {
                        i11--;
                    } else {
                        if (Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        z10 = true;
                    }
                }
                return i10;
            }
        }

        public static int b(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    if (i10 >= length) {
                        if (z10) {
                            return -1;
                        }
                        return length;
                    }
                    char charAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i11--;
                        i10++;
                    } else if (!Character.isSurrogate(charAt)) {
                        i11--;
                        i10++;
                    } else {
                        if (Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i10++;
                        z10 = true;
                    }
                }
                return i10;
            }
        }
    }

    /* compiled from: EmojiProcessor.java */
    /* loaded from: classes.dex */
    public static class b implements d.InterfaceC0036d {

        /* renamed from: b, reason: collision with root package name */
        public static final ThreadLocal<StringBuilder> f1966b = new ThreadLocal<>();

        /* renamed from: a, reason: collision with root package name */
        public final TextPaint f1967a;

        public b() {
            TextPaint textPaint = new TextPaint();
            this.f1967a = textPaint;
            textPaint.setTextSize(10.0f);
        }

        public static StringBuilder b() {
            ThreadLocal<StringBuilder> threadLocal = f1966b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            return threadLocal.get();
        }

        @Override // androidx.emoji2.text.d.InterfaceC0036d
        public boolean a(CharSequence charSequence, int i10, int i11, int i12) {
            int i13 = Build.VERSION.SDK_INT;
            if (i13 < 23 && i12 > i13) {
                return false;
            }
            StringBuilder b10 = b();
            b10.setLength(0);
            while (i10 < i11) {
                b10.append(charSequence.charAt(i10));
                i10++;
            }
            return h0.f.a(this.f1967a, b10.toString());
        }
    }

    /* compiled from: EmojiProcessor.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public int f1968a = 1;

        /* renamed from: b, reason: collision with root package name */
        public final l.a f1969b;

        /* renamed from: c, reason: collision with root package name */
        public l.a f1970c;

        /* renamed from: d, reason: collision with root package name */
        public l.a f1971d;

        /* renamed from: e, reason: collision with root package name */
        public int f1972e;

        /* renamed from: f, reason: collision with root package name */
        public int f1973f;

        /* renamed from: g, reason: collision with root package name */
        public final boolean f1974g;

        /* renamed from: h, reason: collision with root package name */
        public final int[] f1975h;

        public c(l.a aVar, boolean z10, int[] iArr) {
            this.f1969b = aVar;
            this.f1970c = aVar;
            this.f1974g = z10;
            this.f1975h = iArr;
        }

        public static boolean d(int i10) {
            return i10 == 65039;
        }

        public static boolean f(int i10) {
            return i10 == 65038;
        }

        public int a(int i10) {
            l.a a10 = this.f1970c.a(i10);
            int i11 = 3;
            if (this.f1968a == 2) {
                if (a10 != null) {
                    this.f1970c = a10;
                    this.f1973f++;
                } else if (f(i10)) {
                    i11 = g();
                } else if (!d(i10)) {
                    if (this.f1970c.b() != null) {
                        if (this.f1973f == 1) {
                            if (h()) {
                                this.f1971d = this.f1970c;
                                g();
                            } else {
                                i11 = g();
                            }
                        } else {
                            this.f1971d = this.f1970c;
                            g();
                        }
                    } else {
                        i11 = g();
                    }
                }
                i11 = 2;
            } else if (a10 == null) {
                i11 = g();
            } else {
                this.f1968a = 2;
                this.f1970c = a10;
                this.f1973f = 1;
                i11 = 2;
            }
            this.f1972e = i10;
            return i11;
        }

        public f b() {
            return this.f1970c.b();
        }

        public f c() {
            return this.f1971d.b();
        }

        public boolean e() {
            return this.f1968a == 2 && this.f1970c.b() != null && (this.f1973f > 1 || h());
        }

        public final int g() {
            this.f1968a = 1;
            this.f1970c = this.f1969b;
            this.f1973f = 0;
            return 1;
        }

        public final boolean h() {
            if (this.f1970c.b().j() || d(this.f1972e)) {
                return true;
            }
            if (this.f1974g) {
                if (this.f1975h == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.f1975h, this.f1970c.b().b(0)) < 0) {
                    return true;
                }
            }
            return false;
        }
    }

    public g(l lVar, d.i iVar, d.InterfaceC0036d interfaceC0036d, boolean z10, int[] iArr) {
        this.f1961a = iVar;
        this.f1962b = lVar;
        this.f1963c = interfaceC0036d;
        this.f1964d = z10;
        this.f1965e = iArr;
    }

    public static boolean b(Editable editable, KeyEvent keyEvent, boolean z10) {
        h[] hVarArr;
        if (g(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!f(selectionStart, selectionEnd) && (hVarArr = (h[]) editable.getSpans(selectionStart, selectionEnd, h.class)) != null && hVarArr.length > 0) {
            for (h hVar : hVarArr) {
                int spanStart = editable.getSpanStart(hVar);
                int spanEnd = editable.getSpanEnd(hVar);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean c(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        int max;
        int min;
        if (editable != null && inputConnection != null && i10 >= 0 && i11 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (f(selectionStart, selectionEnd)) {
                return false;
            }
            if (z10) {
                max = a.a(editable, selectionStart, Math.max(i10, 0));
                min = a.b(editable, selectionEnd, Math.max(i11, 0));
                if (max == -1 || min == -1) {
                    return false;
                }
            } else {
                max = Math.max(selectionStart - i10, 0);
                min = Math.min(selectionEnd + i11, editable.length());
            }
            h[] hVarArr = (h[]) editable.getSpans(max, min, h.class);
            if (hVarArr != null && hVarArr.length > 0) {
                for (h hVar : hVarArr) {
                    int spanStart = editable.getSpanStart(hVar);
                    int spanEnd = editable.getSpanEnd(hVar);
                    max = Math.min(spanStart, max);
                    min = Math.max(spanEnd, min);
                }
                int max2 = Math.max(max, 0);
                int min2 = Math.min(min, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(max2, min2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    public static boolean d(Editable editable, int i10, KeyEvent keyEvent) {
        boolean b10;
        if (i10 != 67) {
            b10 = i10 != 112 ? false : b(editable, keyEvent, true);
        } else {
            b10 = b(editable, keyEvent, false);
        }
        if (!b10) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    public static boolean f(int i10, int i11) {
        return i10 == -1 || i11 == -1 || i10 != i11;
    }

    public static boolean g(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    public final void a(Spannable spannable, f fVar, int i10, int i11) {
        spannable.setSpan(this.f1961a.a(fVar), i10, i11, 33);
    }

    public final boolean e(CharSequence charSequence, int i10, int i11, f fVar) {
        if (fVar.d() == 0) {
            fVar.k(this.f1963c.a(charSequence, i10, i11, fVar.h()));
        }
        return fVar.d() == 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x010f, code lost:
    
        ((androidx.emoji2.text.m) r10).d();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0042 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:96:0x000d, B:99:0x0012, B:101:0x0016, B:103:0x0025, B:9:0x0031, B:11:0x003b, B:13:0x003e, B:15:0x0042, B:17:0x004e, B:19:0x0051, B:23:0x005e, B:29:0x006d, B:30:0x007b, B:34:0x0096, B:60:0x00a6, B:64:0x00b2, B:65:0x00b7, B:47:0x00c1, B:50:0x00c8, B:37:0x00cd, B:39:0x00d8, B:71:0x00df, B:75:0x00e9, B:78:0x00f5, B:79:0x00fb, B:6:0x002b), top: B:95:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00f5 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:96:0x000d, B:99:0x0012, B:101:0x0016, B:103:0x0025, B:9:0x0031, B:11:0x003b, B:13:0x003e, B:15:0x0042, B:17:0x004e, B:19:0x0051, B:23:0x005e, B:29:0x006d, B:30:0x007b, B:34:0x0096, B:60:0x00a6, B:64:0x00b2, B:65:0x00b7, B:47:0x00c1, B:50:0x00c8, B:37:0x00cd, B:39:0x00d8, B:71:0x00df, B:75:0x00e9, B:78:0x00f5, B:79:0x00fb, B:6:0x002b), top: B:95:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0107 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CharSequence h(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
        c cVar;
        Spannable spannable;
        int codePointAt;
        int i13;
        int a10;
        h[] hVarArr;
        boolean z11 = charSequence instanceof m;
        if (z11) {
            ((m) charSequence).a();
        }
        Spannable spannable2 = null;
        if (!z11) {
            try {
                if (!(charSequence instanceof Spannable)) {
                    if ((charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(i10 - 1, i11 + 1, h.class) <= i11) {
                        spannable2 = new SpannableString(charSequence);
                    }
                    if (spannable2 != null && (hVarArr = (h[]) spannable2.getSpans(i10, i11, h.class)) != null && hVarArr.length > 0) {
                        for (h hVar : hVarArr) {
                            int spanStart = spannable2.getSpanStart(hVar);
                            int spanEnd = spannable2.getSpanEnd(hVar);
                            if (spanStart != i11) {
                                spannable2.removeSpan(hVar);
                            }
                            i10 = Math.min(spanStart, i10);
                            i11 = Math.max(spanEnd, i11);
                        }
                    }
                    if (i10 != i11 && i10 < charSequence.length()) {
                        if (i12 != Integer.MAX_VALUE && spannable2 != null) {
                            i12 -= ((h[]) spannable2.getSpans(0, spannable2.length(), h.class)).length;
                        }
                        cVar = new c(this.f1962b.f(), this.f1964d, this.f1965e);
                        spannable = spannable2;
                        codePointAt = Character.codePointAt(charSequence, i10);
                        int i14 = 0;
                        loop1: while (true) {
                            i13 = i10;
                            while (i10 < i11 && i14 < i12) {
                                a10 = cVar.a(codePointAt);
                                if (a10 != 1) {
                                    i13 += Character.charCount(Character.codePointAt(charSequence, i13));
                                    if (i13 < i11) {
                                        codePointAt = Character.codePointAt(charSequence, i13);
                                    }
                                    i10 = i13;
                                } else if (a10 == 2) {
                                    i10 += Character.charCount(codePointAt);
                                    if (i10 < i11) {
                                        codePointAt = Character.codePointAt(charSequence, i10);
                                    }
                                } else if (a10 == 3) {
                                    if (z10 || !e(charSequence, i13, i10, cVar.c())) {
                                        if (spannable == null) {
                                            spannable = new SpannableString(charSequence);
                                        }
                                        a(spannable, cVar.c(), i13, i10);
                                        i14++;
                                    }
                                }
                            }
                        }
                        if (cVar.e() && i14 < i12 && (z10 || !e(charSequence, i13, i10, cVar.b()))) {
                            if (spannable == null) {
                                spannable = new SpannableString(charSequence);
                            }
                            a(spannable, cVar.b(), i13, i10);
                        }
                        if (spannable == null) {
                            spannable = charSequence;
                        }
                        return spannable;
                    }
                    return charSequence;
                }
            } finally {
                if (z11) {
                    ((m) charSequence).d();
                }
            }
        }
        spannable2 = (Spannable) charSequence;
        if (spannable2 != null) {
            while (r5 < r4) {
            }
        }
        if (i10 != i11) {
            if (i12 != Integer.MAX_VALUE) {
                i12 -= ((h[]) spannable2.getSpans(0, spannable2.length(), h.class)).length;
            }
            cVar = new c(this.f1962b.f(), this.f1964d, this.f1965e);
            spannable = spannable2;
            codePointAt = Character.codePointAt(charSequence, i10);
            int i142 = 0;
            loop1: while (true) {
                i13 = i10;
                while (i10 < i11) {
                    a10 = cVar.a(codePointAt);
                    if (a10 != 1) {
                    }
                }
            }
            if (cVar.e()) {
                if (spannable == null) {
                }
                a(spannable, cVar.b(), i13, i10);
            }
            if (spannable == null) {
            }
            return spannable;
        }
        return charSequence;
    }
}
