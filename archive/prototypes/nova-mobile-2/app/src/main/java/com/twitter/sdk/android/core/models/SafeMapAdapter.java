package com.twitter.sdk.android.core.models;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import oa.a;

/* loaded from: classes.dex */
public class SafeMapAdapter implements t {
    @Override // ja.t
    public <T> s<T> create(f fVar, final a<T> aVar) {
        final s<T> o10 = fVar.o(this, aVar);
        return new s<T>() { // from class: com.twitter.sdk.android.core.models.SafeMapAdapter.1
            @Override // ja.s
            public T read(JsonReader jsonReader) throws IOException {
                T t10 = (T) o10.read(jsonReader);
                if (!Map.class.isAssignableFrom(aVar.getRawType())) {
                    return t10;
                }
                if (t10 == null) {
                    return (T) Collections.EMPTY_MAP;
                }
                return (T) Collections.unmodifiableMap((Map) t10);
            }

            @Override // ja.s
            public void write(JsonWriter jsonWriter, T t10) throws IOException {
                o10.write(jsonWriter, t10);
            }
        };
    }
}
