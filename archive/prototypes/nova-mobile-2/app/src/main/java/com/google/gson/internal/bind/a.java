package com.google.gson.internal.bind;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import ja.i;
import ja.l;
import ja.m;
import ja.n;
import ja.o;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* compiled from: JsonTreeReader.java */
/* loaded from: classes.dex */
public final class a extends JsonReader {

    /* renamed from: j, reason: collision with root package name */
    public static final Reader f4868j = new C0094a();

    /* renamed from: k, reason: collision with root package name */
    public static final Object f4869k = new Object();

    /* renamed from: f, reason: collision with root package name */
    public Object[] f4870f;

    /* renamed from: g, reason: collision with root package name */
    public int f4871g;

    /* renamed from: h, reason: collision with root package name */
    public String[] f4872h;

    /* renamed from: i, reason: collision with root package name */
    public int[] f4873i;

    /* compiled from: JsonTreeReader.java */
    /* renamed from: com.google.gson.internal.bind.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0094a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i10, int i11) throws IOException {
            throw new AssertionError();
        }
    }

    public a(l lVar) {
        super(f4868j);
        this.f4870f = new Object[32];
        this.f4871g = 0;
        this.f4872h = new String[32];
        this.f4873i = new int[32];
        x(lVar);
    }

    private String locationString() {
        return " at path " + getPath();
    }

    public final void b(JsonToken jsonToken) throws IOException {
        if (peek() == jsonToken) {
            return;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + peek() + locationString());
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginArray() throws IOException {
        b(JsonToken.BEGIN_ARRAY);
        x(((i) d()).iterator());
        this.f4873i[this.f4871g - 1] = 0;
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginObject() throws IOException {
        b(JsonToken.BEGIN_OBJECT);
        x(((n) d()).k().iterator());
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4870f = new Object[]{f4869k};
        this.f4871g = 1;
    }

    public final Object d() {
        return this.f4870f[this.f4871g - 1];
    }

    @Override // com.google.gson.stream.JsonReader
    public void endArray() throws IOException {
        b(JsonToken.END_ARRAY);
        h();
        h();
        int i10 = this.f4871g;
        if (i10 > 0) {
            int[] iArr = this.f4873i;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public void endObject() throws IOException {
        b(JsonToken.END_OBJECT);
        h();
        h();
        int i10 = this.f4871g;
        if (i10 > 0) {
            int[] iArr = this.f4873i;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String getPath() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i10 = 0;
        while (i10 < this.f4871g) {
            Object[] objArr = this.f4870f;
            if (objArr[i10] instanceof i) {
                i10++;
                if (objArr[i10] instanceof Iterator) {
                    sb2.append('[');
                    sb2.append(this.f4873i[i10]);
                    sb2.append(']');
                }
            } else if (objArr[i10] instanceof n) {
                i10++;
                if (objArr[i10] instanceof Iterator) {
                    sb2.append('.');
                    String[] strArr = this.f4872h;
                    if (strArr[i10] != null) {
                        sb2.append(strArr[i10]);
                    }
                }
            }
            i10++;
        }
        return sb2.toString();
    }

    public final Object h() {
        Object[] objArr = this.f4870f;
        int i10 = this.f4871g - 1;
        this.f4871g = i10;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean hasNext() throws IOException {
        JsonToken peek = peek();
        return (peek == JsonToken.END_OBJECT || peek == JsonToken.END_ARRAY) ? false : true;
    }

    public void k() throws IOException {
        b(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) d()).next();
        x(entry.getValue());
        x(new o((String) entry.getKey()));
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean nextBoolean() throws IOException {
        b(JsonToken.BOOLEAN);
        boolean i10 = ((o) h()).i();
        int i11 = this.f4871g;
        if (i11 > 0) {
            int[] iArr = this.f4873i;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
        }
        return i10;
    }

    @Override // com.google.gson.stream.JsonReader
    public double nextDouble() throws IOException {
        JsonToken peek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (peek != jsonToken && peek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek + locationString());
        }
        double j10 = ((o) d()).j();
        if (!isLenient() && (Double.isNaN(j10) || Double.isInfinite(j10))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + j10);
        }
        h();
        int i10 = this.f4871g;
        if (i10 > 0) {
            int[] iArr = this.f4873i;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return j10;
    }

    @Override // com.google.gson.stream.JsonReader
    public int nextInt() throws IOException {
        JsonToken peek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (peek != jsonToken && peek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek + locationString());
        }
        int k10 = ((o) d()).k();
        h();
        int i10 = this.f4871g;
        if (i10 > 0) {
            int[] iArr = this.f4873i;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return k10;
    }

    @Override // com.google.gson.stream.JsonReader
    public long nextLong() throws IOException {
        JsonToken peek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (peek != jsonToken && peek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek + locationString());
        }
        long l10 = ((o) d()).l();
        h();
        int i10 = this.f4871g;
        if (i10 > 0) {
            int[] iArr = this.f4873i;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return l10;
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextName() throws IOException {
        b(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) d()).next();
        String str = (String) entry.getKey();
        this.f4872h[this.f4871g - 1] = str;
        x(entry.getValue());
        return str;
    }

    @Override // com.google.gson.stream.JsonReader
    public void nextNull() throws IOException {
        b(JsonToken.NULL);
        h();
        int i10 = this.f4871g;
        if (i10 > 0) {
            int[] iArr = this.f4873i;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextString() throws IOException {
        JsonToken peek = peek();
        JsonToken jsonToken = JsonToken.STRING;
        if (peek != jsonToken && peek != JsonToken.NUMBER) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek + locationString());
        }
        String d10 = ((o) h()).d();
        int i10 = this.f4871g;
        if (i10 > 0) {
            int[] iArr = this.f4873i;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return d10;
    }

    @Override // com.google.gson.stream.JsonReader
    public JsonToken peek() throws IOException {
        if (this.f4871g == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object d10 = d();
        if (d10 instanceof Iterator) {
            boolean z10 = this.f4870f[this.f4871g - 2] instanceof n;
            Iterator it2 = (Iterator) d10;
            if (!it2.hasNext()) {
                return z10 ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (z10) {
                return JsonToken.NAME;
            }
            x(it2.next());
            return peek();
        }
        if (d10 instanceof n) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (d10 instanceof i) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (d10 instanceof o) {
            o oVar = (o) d10;
            if (oVar.q()) {
                return JsonToken.STRING;
            }
            if (oVar.n()) {
                return JsonToken.BOOLEAN;
            }
            if (oVar.p()) {
                return JsonToken.NUMBER;
            }
            throw new AssertionError();
        }
        if (d10 instanceof m) {
            return JsonToken.NULL;
        }
        if (d10 == f4869k) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new AssertionError();
    }

    @Override // com.google.gson.stream.JsonReader
    public void skipValue() throws IOException {
        if (peek() == JsonToken.NAME) {
            nextName();
            this.f4872h[this.f4871g - 2] = "null";
        } else {
            h();
            int i10 = this.f4871g;
            if (i10 > 0) {
                this.f4872h[i10 - 1] = "null";
            }
        }
        int i11 = this.f4871g;
        if (i11 > 0) {
            int[] iArr = this.f4873i;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String toString() {
        return a.class.getSimpleName();
    }

    public final void x(Object obj) {
        int i10 = this.f4871g;
        Object[] objArr = this.f4870f;
        if (i10 == objArr.length) {
            int i11 = i10 * 2;
            this.f4870f = Arrays.copyOf(objArr, i11);
            this.f4873i = Arrays.copyOf(this.f4873i, i11);
            this.f4872h = (String[]) Arrays.copyOf(this.f4872h, i11);
        }
        Object[] objArr2 = this.f4870f;
        int i12 = this.f4871g;
        this.f4871g = i12 + 1;
        objArr2[i12] = obj;
    }
}
