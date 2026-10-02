package com.google.gson.internal.bind;

import com.google.gson.stream.JsonWriter;
import ja.i;
import ja.l;
import ja.m;
import ja.n;
import ja.o;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: JsonTreeWriter.java */
/* loaded from: classes.dex */
public final class b extends JsonWriter {

    /* renamed from: i, reason: collision with root package name */
    public static final Writer f4874i = new a();

    /* renamed from: j, reason: collision with root package name */
    public static final o f4875j = new o("closed");

    /* renamed from: f, reason: collision with root package name */
    public final List<l> f4876f;

    /* renamed from: g, reason: collision with root package name */
    public String f4877g;

    /* renamed from: h, reason: collision with root package name */
    public l f4878h;

    /* compiled from: JsonTreeWriter.java */
    /* loaded from: classes.dex */
    public class a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) {
            throw new AssertionError();
        }
    }

    public b() {
        super(f4874i);
        this.f4876f = new ArrayList();
        this.f4878h = m.f9141a;
    }

    public l b() {
        if (this.f4876f.isEmpty()) {
            return this.f4878h;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f4876f);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter beginArray() throws IOException {
        i iVar = new i();
        h(iVar);
        this.f4876f.add(iVar);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter beginObject() throws IOException {
        n nVar = new n();
        h(nVar);
        this.f4876f.add(nVar);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f4876f.isEmpty()) {
            this.f4876f.add(f4875j);
            return;
        }
        throw new IOException("Incomplete document");
    }

    public final l d() {
        return this.f4876f.get(r0.size() - 1);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter endArray() throws IOException {
        if (!this.f4876f.isEmpty() && this.f4877g == null) {
            if (d() instanceof i) {
                this.f4876f.remove(r0.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter endObject() throws IOException {
        if (!this.f4876f.isEmpty() && this.f4877g == null) {
            if (d() instanceof n) {
                this.f4876f.remove(r0.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public void flush() throws IOException {
    }

    public final void h(l lVar) {
        if (this.f4877g != null) {
            if (!lVar.f() || getSerializeNulls()) {
                ((n) d()).i(this.f4877g, lVar);
            }
            this.f4877g = null;
            return;
        }
        if (this.f4876f.isEmpty()) {
            this.f4878h = lVar;
            return;
        }
        l d10 = d();
        if (d10 instanceof i) {
            ((i) d10).i(lVar);
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter name(String str) throws IOException {
        if (str != null) {
            if (!this.f4876f.isEmpty() && this.f4877g == null) {
                if (d() instanceof n) {
                    this.f4877g = str;
                    return this;
                }
                throw new IllegalStateException();
            }
            throw new IllegalStateException();
        }
        throw new NullPointerException("name == null");
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter nullValue() throws IOException {
        h(m.f9141a);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        h(new o(str));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(boolean z10) throws IOException {
        h(new o(Boolean.valueOf(z10)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        h(new o(bool));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(double d10) throws IOException {
        if (!isLenient() && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d10);
        }
        h(new o(Double.valueOf(d10)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(long j10) throws IOException {
        h(new o(Long.valueOf(j10)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        h(new o(number));
        return this;
    }
}
