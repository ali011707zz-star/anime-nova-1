package qc;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Regex.kt */
/* loaded from: classes2.dex */
public final class i implements Serializable {

    /* renamed from: g, reason: collision with root package name */
    public static final a f12701g = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final Pattern f12702f;

    /* compiled from: Regex.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public i(Pattern pattern) {
        jc.l.f(pattern, "nativePattern");
        this.f12702f = pattern;
    }

    public final g a(CharSequence charSequence) {
        g c10;
        jc.l.f(charSequence, "input");
        Matcher matcher = this.f12702f.matcher(charSequence);
        jc.l.e(matcher, "nativePattern.matcher(input)");
        c10 = j.c(matcher, charSequence);
        return c10;
    }

    public final boolean b(CharSequence charSequence) {
        jc.l.f(charSequence, "input");
        return this.f12702f.matcher(charSequence).matches();
    }

    public final String c(CharSequence charSequence, String str) {
        jc.l.f(charSequence, "input");
        jc.l.f(str, "replacement");
        String replaceAll = this.f12702f.matcher(charSequence).replaceAll(str);
        jc.l.e(replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return replaceAll;
    }

    public final List<String> d(CharSequence charSequence, int i10) {
        jc.l.f(charSequence, "input");
        u.a0(i10);
        Matcher matcher = this.f12702f.matcher(charSequence);
        if (i10 != 1 && matcher.find()) {
            ArrayList arrayList = new ArrayList(i10 > 0 ? nc.g.c(i10, 10) : 10);
            int i11 = 0;
            int i12 = i10 - 1;
            do {
                arrayList.add(charSequence.subSequence(i11, matcher.start()).toString());
                i11 = matcher.end();
                if (i12 >= 0 && arrayList.size() == i12) {
                    break;
                }
            } while (matcher.find());
            arrayList.add(charSequence.subSequence(i11, charSequence.length()).toString());
            return arrayList;
        }
        return wb.k.d(charSequence.toString());
    }

    public String toString() {
        String pattern = this.f12702f.toString();
        jc.l.e(pattern, "nativePattern.toString()");
        return pattern;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public i(String str) {
        this(r2);
        jc.l.f(str, "pattern");
        Pattern compile = Pattern.compile(str);
        jc.l.e(compile, "compile(pattern)");
    }
}
