package com.twitter.sdk.android.core;

import com.google.gson.JsonParseException;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import ja.f;
import ja.j;
import ja.k;
import ja.l;
import ja.n;
import ja.p;
import ja.q;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class AuthTokenAdapter implements q<AuthToken>, k<AuthToken> {
    private static final String AUTH_TOKEN = "auth_token";
    private static final String AUTH_TYPE = "auth_type";
    public static final Map<String, Class<? extends AuthToken>> authTypeRegistry;
    private final f gson = new f();

    static {
        HashMap hashMap = new HashMap();
        authTypeRegistry = hashMap;
        hashMap.put("oauth1a", TwitterAuthToken.class);
        hashMap.put("oauth2", OAuth2Token.class);
        hashMap.put("guest", GuestAuthToken.class);
    }

    public static String getAuthTypeString(Class<? extends AuthToken> cls) {
        for (Map.Entry<String, Class<? extends AuthToken>> entry : authTypeRegistry.entrySet()) {
            if (entry.getValue().equals(cls)) {
                return entry.getKey();
            }
        }
        return "";
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // ja.k
    public AuthToken deserialize(l lVar, Type type, j jVar) throws JsonParseException {
        n b10 = lVar.b();
        String d10 = b10.m(AUTH_TYPE).d();
        return (AuthToken) this.gson.h(b10.l(AUTH_TOKEN), authTypeRegistry.get(d10));
    }

    @Override // ja.q
    public l serialize(AuthToken authToken, Type type, p pVar) {
        n nVar = new n();
        nVar.j(AUTH_TYPE, getAuthTypeString(authToken.getClass()));
        nVar.i(AUTH_TOKEN, this.gson.z(authToken));
        return nVar;
    }
}
