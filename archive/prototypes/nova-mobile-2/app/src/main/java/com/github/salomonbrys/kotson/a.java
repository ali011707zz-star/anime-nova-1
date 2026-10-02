package com.github.salomonbrys.kotson;

import ja.n;
import ja.o;
import java.util.Iterator;
import jc.l;
import vb.i;

/* compiled from: Builder.kt */
/* loaded from: classes.dex */
public final class a {
    public static final n a(Iterator<? extends i<String, ?>> it2) {
        n nVar = new n();
        while (it2.hasNext()) {
            i<String, ?> next = it2.next();
            nVar.i(next.a(), g(next.b()));
        }
        return nVar;
    }

    public static final n b(i<String, ?>... iVarArr) {
        l.g(iVarArr, "values");
        return a(jc.b.a(iVarArr));
    }

    public static final o c(char c10) {
        return new o(Character.valueOf(c10));
    }

    public static final o d(Number number) {
        l.g(number, "$receiver");
        return new o(number);
    }

    public static final o e(String str) {
        l.g(str, "$receiver");
        return new o(str);
    }

    public static final o f(boolean z10) {
        return new o(Boolean.valueOf(z10));
    }

    public static final ja.l g(Object obj) {
        if (obj == null) {
            return b.c();
        }
        if (obj instanceof ja.l) {
            return (ja.l) obj;
        }
        if (obj instanceof String) {
            return e((String) obj);
        }
        if (obj instanceof Number) {
            return d((Number) obj);
        }
        if (obj instanceof Character) {
            return c(((Character) obj).charValue());
        }
        if (obj instanceof Boolean) {
            return f(((Boolean) obj).booleanValue());
        }
        throw new IllegalArgumentException(obj + " cannot be converted to JSON");
    }
}
