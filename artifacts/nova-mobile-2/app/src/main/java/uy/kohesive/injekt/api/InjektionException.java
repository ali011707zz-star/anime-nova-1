package uy.kohesive.injekt.api;

import jc.l;

/* compiled from: Exceptions.kt */
/* loaded from: classes2.dex */
public final class InjektionException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InjektionException(String str) {
        super(str);
        l.g(str, "msg");
    }
}
