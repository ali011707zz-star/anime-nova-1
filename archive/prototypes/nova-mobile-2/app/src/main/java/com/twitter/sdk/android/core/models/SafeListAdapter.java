package com.twitter.sdk.android.core.models;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import oa.a;

/* loaded from: classes.dex */
public class SafeListAdapter implements t {
    @Override // ja.t
    public <T> s<T> create(f fVar, final a<T> aVar) {
        final s<T> o10 = fVar.o(this, aVar);
        return new s<T>() { // from class: com.twitter.sdk.android.core.models.SafeListAdapter.1
            @Override // ja.s
            public T read(JsonReader jsonReader) throws IOException {
                T t10 = (T) o10.read(jsonReader);
                if (!List.class.isAssignableFrom(aVar.getRawType())) {
                    return t10;
                }
                if (t10 == null) {
                    return (T) Collections.EMPTY_LIST;
                }
                return (T) Collections.unmodifiableList((List) t10);
            }

            @Override // ja.s
            public void write(JsonWriter jsonWriter, T t10) throws IOException {
                o10.write(jsonWriter, t10);
            }
        };
    }
}
