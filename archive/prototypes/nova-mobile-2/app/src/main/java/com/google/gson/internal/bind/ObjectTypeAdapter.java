package com.google.gson.internal.bind;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.util.ArrayList;
import la.g;

/* loaded from: classes.dex */
public final class ObjectTypeAdapter extends s<Object> {

    /* renamed from: b, reason: collision with root package name */
    public static final t f4786b = new t() { // from class: com.google.gson.internal.bind.ObjectTypeAdapter.1
        @Override // ja.t
        public <T> s<T> create(f fVar, oa.a<T> aVar) {
            if (aVar.getRawType() == Object.class) {
                return new ObjectTypeAdapter(fVar);
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final f f4787a;

    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4788a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f4788a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4788a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4788a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4788a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4788a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4788a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ObjectTypeAdapter(f fVar) {
        this.f4787a = fVar;
    }

    @Override // ja.s
    public Object read(JsonReader jsonReader) throws IOException {
        switch (a.f4788a[jsonReader.peek().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(read(jsonReader));
                }
                jsonReader.endArray();
                return arrayList;
            case 2:
                g gVar = new g();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    gVar.put(jsonReader.nextName(), read(jsonReader));
                }
                jsonReader.endObject();
                return gVar;
            case 3:
                return jsonReader.nextString();
            case 4:
                return Double.valueOf(jsonReader.nextDouble());
            case 5:
                return Boolean.valueOf(jsonReader.nextBoolean());
            case 6:
                jsonReader.nextNull();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // ja.s
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        s m10 = this.f4787a.m(obj.getClass());
        if (m10 instanceof ObjectTypeAdapter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        } else {
            m10.write(jsonWriter, obj);
        }
    }
}
