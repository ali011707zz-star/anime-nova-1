package zd;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.l;
import kotlin.TypeCastException;

/* compiled from: TypeInfo.kt */
/* loaded from: classes2.dex */
public abstract class a<T> implements g<T> {
    private final Type type;

    public a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new IllegalArgumentException("Internal error: TypeReference constructed without actual type information");
        }
        if (genericSuperclass != null) {
            Type type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
            l.b(type, "(superClass as Parameter…tActualTypeArguments()[0]");
            l.b(type, "javaClass.getGenericSupe…lTypeArguments()[0]\n    }");
            this.type = type;
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.reflect.ParameterizedType");
    }

    @Override // zd.g
    public Type getType() {
        return this.type;
    }
}
