package com.github.salomonbrys.kotson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import jc.l;
import jc.u;
import kotlin.TypeCastException;
import wb.i;
import wb.m;

/* compiled from: GsonBuilder.kt */
/* loaded from: classes.dex */
public final class c {
    public static final boolean a(ParameterizedType parameterizedType) {
        Type type;
        l.g(parameterizedType, "$receiver");
        u uVar = new u();
        uVar.f9191f = false;
        u uVar2 = new u();
        uVar2.f9191f = false;
        u uVar3 = new u();
        uVar3.f9191f = false;
        Type rawType = parameterizedType.getRawType();
        if (rawType != null) {
            TypeVariable[] typeParameters = ((Class) rawType).getTypeParameters();
            int i10 = 0;
            int i11 = 0;
            while (i10 < typeParameters.length) {
                TypeVariable typeVariable = typeParameters[i10];
                int i12 = i11 + 1;
                Type type2 = parameterizedType.getActualTypeArguments()[i11];
                if (type2 instanceof WildcardType) {
                    Type[] bounds = typeVariable.getBounds();
                    int i13 = 0;
                    while (true) {
                        if (i13 >= bounds.length) {
                            type = null;
                            break;
                        }
                        type = bounds[i13];
                        if (i.o(((WildcardType) type2).getUpperBounds(), type)) {
                            break;
                        }
                        i13++;
                    }
                    if (type != null) {
                        if (l.a(type, Object.class)) {
                            uVar.f9191f = true;
                        } else {
                            uVar2.f9191f = true;
                        }
                    } else {
                        uVar3.f9191f = true;
                    }
                } else {
                    uVar3.f9191f = true;
                }
                i10++;
                i11 = i12;
            }
            boolean z10 = uVar.f9191f;
            if (!z10 || !uVar3.f9191f) {
                return z10 || (uVar2.f9191f && !uVar3.f9191f);
            }
            throw new IllegalArgumentException("Either none or all type parameters can be wildcard in " + parameterizedType);
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<*>");
    }

    public static final Type b(Type type) {
        l.g(type, "type");
        if (!(type instanceof ParameterizedType)) {
            return type;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        ArrayList<Type> arrayList = new ArrayList(actualTypeArguments.length);
        for (Type type2 : actualTypeArguments) {
            if (type2 instanceof WildcardType) {
                type2 = ((WildcardType) type2).getUpperBounds()[0];
            }
            arrayList.add(type2);
        }
        ArrayList arrayList2 = new ArrayList(m.q(arrayList, 10));
        for (Type type3 : arrayList) {
            l.b(type3, "it");
            arrayList2.add(b(type3));
        }
        Object[] array = arrayList2.toArray(new Type[arrayList2.size()]);
        if (array != null) {
            Type[] typeArr = (Type[]) array;
            Type type4 = oa.a.getParameterized(parameterizedType.getRawType(), (Type[]) Arrays.copyOf(typeArr, typeArr.length)).getType();
            l.b(type4, "TypeToken.getParameteriz…rawType, *arguments).type");
            return type4;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
