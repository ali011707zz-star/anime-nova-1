package com.github.salomonbrys.kotson;

import ja.m;
import ja.n;
import java.util.NoSuchElementException;
import jc.l;

/* compiled from: Element.kt */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final m f4665a;

    static {
        m mVar = m.f9141a;
        l.b(mVar, "JsonNull.INSTANCE");
        f4665a = mVar;
    }

    public static final boolean a(n nVar, String str) {
        l.g(nVar, "$receiver");
        l.g(str, "key");
        return nVar.n(str);
    }

    public static final ja.l b(ja.l lVar, String str) {
        l.g(lVar, "$receiver");
        l.g(str, "key");
        return d(e(lVar), str);
    }

    public static final m c() {
        return f4665a;
    }

    public static final ja.l d(n nVar, String str) {
        l.g(nVar, "$receiver");
        l.g(str, "key");
        ja.l l10 = nVar.l(str);
        if (l10 != null) {
            return l10;
        }
        throw new NoSuchElementException("'" + str + "' is not found");
    }

    public static final n e(ja.l lVar) {
        l.g(lVar, "$receiver");
        n b10 = lVar.b();
        l.b(b10, "asJsonObject");
        return b10;
    }

    public static final String f(ja.l lVar) {
        l.g(lVar, "$receiver");
        String d10 = lVar.d();
        l.b(d10, "asString");
        return d10;
    }
}
