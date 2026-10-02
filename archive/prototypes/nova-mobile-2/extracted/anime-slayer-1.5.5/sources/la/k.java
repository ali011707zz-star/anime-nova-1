package la;

import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import ja.m;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* compiled from: Streams.java */
/* loaded from: classes.dex */
public final class k {
    public static ja.l a(JsonReader jsonReader) throws JsonParseException {
        boolean z10;
        try {
            try {
                jsonReader.peek();
                z10 = false;
            } catch (EOFException e10) {
                e = e10;
                z10 = true;
            }
            try {
                return TypeAdapters.X.read(jsonReader);
            } catch (EOFException e11) {
                e = e11;
                if (z10) {
                    return m.f9141a;
                }
                throw new JsonSyntaxException(e);
            }
        } catch (MalformedJsonException e12) {
            throw new JsonSyntaxException(e12);
        } catch (IOException e13) {
            throw new JsonIOException(e13);
        } catch (NumberFormatException e14) {
            throw new JsonSyntaxException(e14);
        }
    }

    public static void b(ja.l lVar, JsonWriter jsonWriter) throws IOException {
        TypeAdapters.X.write(jsonWriter, lVar);
    }

    public static Writer c(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    /* compiled from: Streams.java */
    /* loaded from: classes.dex */
    public static final class a extends Writer {

        /* renamed from: f, reason: collision with root package name */
        public final Appendable f10620f;

        /* renamed from: g, reason: collision with root package name */
        public final C0249a f10621g = new C0249a();

        /* compiled from: Streams.java */
        /* renamed from: la.k$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0249a implements CharSequence {

            /* renamed from: f, reason: collision with root package name */
            public char[] f10622f;

            @Override // java.lang.CharSequence
            public char charAt(int i10) {
                return this.f10622f[i10];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f10622f.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i10, int i11) {
                return new String(this.f10622f, i10, i11 - i10);
            }
        }

        public a(Appendable appendable) {
            this.f10620f = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) throws IOException {
            C0249a c0249a = this.f10621g;
            c0249a.f10622f = cArr;
            this.f10620f.append(c0249a, i10, i11 + i10);
        }

        @Override // java.io.Writer
        public void write(int i10) throws IOException {
            this.f10620f.append((char) i10);
        }
    }
}
