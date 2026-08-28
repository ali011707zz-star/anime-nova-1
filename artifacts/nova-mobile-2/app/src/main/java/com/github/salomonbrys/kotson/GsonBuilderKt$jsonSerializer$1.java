package com.github.salomonbrys.kotson;

import com.github.salomonbrys.kotson.e;
import ic.l;
import ja.p;
import ja.q;
import java.lang.reflect.Type;

/* compiled from: GsonBuilder.kt */
/* loaded from: classes.dex */
final class GsonBuilderKt$jsonSerializer$1<T> implements q<T> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f4664a;

    @Override // ja.q
    public final ja.l serialize(T t10, Type type, p pVar) {
        l lVar = this.f4664a;
        jc.l.b(t10, "src");
        jc.l.b(type, "type");
        jc.l.b(pVar, "context");
        return (ja.l) lVar.invoke(new e(t10, type, new e.a(pVar)));
    }
}
