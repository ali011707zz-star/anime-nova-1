package com.twitter.sdk.android.core.models;

import com.google.gson.JsonParseException;
import ja.j;
import ja.k;
import ja.l;
import ja.n;
import ja.p;
import ja.q;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class BindingValuesAdapter implements q<BindingValues>, k<BindingValues> {
    private static final String BOOLEAN_MEMBER = "boolean_value";
    private static final String BOOLEAN_TYPE = "BOOLEAN";
    private static final String IMAGE_TYPE = "IMAGE";
    private static final String IMAGE_VALUE_MEMBER = "image_value";
    private static final String STRING_TYPE = "STRING";
    private static final String TYPE_MEMBER = "type";
    private static final String TYPE_VALUE_MEMBER = "string_value";
    private static final String USER_TYPE = "USER";
    private static final String USER_VALUE_MEMBER = "user_value";

    public Object getValue(n nVar, j jVar) {
        l l10 = nVar.l(TYPE_MEMBER);
        if (l10 == null || !l10.h()) {
            return null;
        }
        String d10 = l10.d();
        d10.hashCode();
        char c10 = 65535;
        switch (d10.hashCode()) {
            case -1838656495:
                if (d10.equals(STRING_TYPE)) {
                    c10 = 0;
                    break;
                }
                break;
            case 2614219:
                if (d10.equals(USER_TYPE)) {
                    c10 = 1;
                    break;
                }
                break;
            case 69775675:
                if (d10.equals(IMAGE_TYPE)) {
                    c10 = 2;
                    break;
                }
                break;
            case 782694408:
                if (d10.equals(BOOLEAN_TYPE)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return jVar.a(nVar.l(TYPE_VALUE_MEMBER), String.class);
            case 1:
                return jVar.a(nVar.l(USER_VALUE_MEMBER), UserValue.class);
            case 2:
                return jVar.a(nVar.l(IMAGE_VALUE_MEMBER), ImageValue.class);
            case 3:
                return jVar.a(nVar.l(BOOLEAN_MEMBER), Boolean.class);
            default:
                return null;
        }
    }

    @Override // ja.q
    public l serialize(BindingValues bindingValues, Type type, p pVar) {
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // ja.k
    public BindingValues deserialize(l lVar, Type type, j jVar) throws JsonParseException {
        if (!lVar.g()) {
            return new BindingValues();
        }
        Set<Map.Entry<String, l>> k10 = lVar.b().k();
        HashMap hashMap = new HashMap(32);
        for (Map.Entry<String, l> entry : k10) {
            hashMap.put(entry.getKey(), getValue(entry.getValue().b(), jVar));
        }
        return new BindingValues(hashMap);
    }
}
