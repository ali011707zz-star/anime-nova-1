package com.google.gson.internal.bind;

import com.google.android.material.badge.BadgeDrawable;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes.dex */
public final class TypeAdapters {
    public static final ja.s<String> A;
    public static final ja.s<BigDecimal> B;
    public static final ja.s<BigInteger> C;
    public static final ja.t D;
    public static final ja.s<StringBuilder> E;
    public static final ja.t F;
    public static final ja.s<StringBuffer> G;
    public static final ja.t H;
    public static final ja.s<URL> I;
    public static final ja.t J;
    public static final ja.s<URI> K;
    public static final ja.t L;
    public static final ja.s<InetAddress> M;
    public static final ja.t N;
    public static final ja.s<UUID> O;
    public static final ja.t P;
    public static final ja.s<Currency> Q;
    public static final ja.t R;
    public static final ja.t S;
    public static final ja.s<Calendar> T;
    public static final ja.t U;
    public static final ja.s<Locale> V;
    public static final ja.t W;
    public static final ja.s<ja.l> X;
    public static final ja.t Y;
    public static final ja.t Z;

    /* renamed from: a, reason: collision with root package name */
    public static final ja.s<Class> f4823a;

    /* renamed from: b, reason: collision with root package name */
    public static final ja.t f4824b;

    /* renamed from: c, reason: collision with root package name */
    public static final ja.s<BitSet> f4825c;

    /* renamed from: d, reason: collision with root package name */
    public static final ja.t f4826d;

    /* renamed from: e, reason: collision with root package name */
    public static final ja.s<Boolean> f4827e;

    /* renamed from: f, reason: collision with root package name */
    public static final ja.s<Boolean> f4828f;

    /* renamed from: g, reason: collision with root package name */
    public static final ja.t f4829g;

    /* renamed from: h, reason: collision with root package name */
    public static final ja.s<Number> f4830h;

    /* renamed from: i, reason: collision with root package name */
    public static final ja.t f4831i;

    /* renamed from: j, reason: collision with root package name */
    public static final ja.s<Number> f4832j;

    /* renamed from: k, reason: collision with root package name */
    public static final ja.t f4833k;

    /* renamed from: l, reason: collision with root package name */
    public static final ja.s<Number> f4834l;

    /* renamed from: m, reason: collision with root package name */
    public static final ja.t f4835m;

    /* renamed from: n, reason: collision with root package name */
    public static final ja.s<AtomicInteger> f4836n;

    /* renamed from: o, reason: collision with root package name */
    public static final ja.t f4837o;

    /* renamed from: p, reason: collision with root package name */
    public static final ja.s<AtomicBoolean> f4838p;

    /* renamed from: q, reason: collision with root package name */
    public static final ja.t f4839q;

    /* renamed from: r, reason: collision with root package name */
    public static final ja.s<AtomicIntegerArray> f4840r;

    /* renamed from: s, reason: collision with root package name */
    public static final ja.t f4841s;

    /* renamed from: t, reason: collision with root package name */
    public static final ja.s<Number> f4842t;

    /* renamed from: u, reason: collision with root package name */
    public static final ja.s<Number> f4843u;

    /* renamed from: v, reason: collision with root package name */
    public static final ja.s<Number> f4844v;

    /* renamed from: w, reason: collision with root package name */
    public static final ja.s<Number> f4845w;

    /* renamed from: x, reason: collision with root package name */
    public static final ja.t f4846x;

    /* renamed from: y, reason: collision with root package name */
    public static final ja.s<Character> f4847y;

    /* renamed from: z, reason: collision with root package name */
    public static final ja.t f4848z;

    /* loaded from: classes.dex */
    public class a extends ja.s<AtomicIntegerArray> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AtomicIntegerArray read(JsonReader jsonReader) throws IOException {
            ArrayList arrayList = new ArrayList();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                try {
                    arrayList.add(Integer.valueOf(jsonReader.nextInt()));
                } catch (NumberFormatException e10) {
                    throw new JsonSyntaxException(e10);
                }
            }
            jsonReader.endArray();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i10 = 0; i10 < size; i10++) {
                atomicIntegerArray.set(i10, ((Integer) arrayList.get(i10)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, AtomicIntegerArray atomicIntegerArray) throws IOException {
            jsonWriter.beginArray();
            int length = atomicIntegerArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                jsonWriter.value(atomicIntegerArray.get(i10));
            }
            jsonWriter.endArray();
        }
    }

    /* loaded from: classes.dex */
    public class a0 extends ja.s<Number> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Integer.valueOf(jsonReader.nextInt());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* loaded from: classes.dex */
    public class b extends ja.s<Number> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Long.valueOf(jsonReader.nextLong());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* loaded from: classes.dex */
    public class b0 extends ja.s<AtomicInteger> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AtomicInteger read(JsonReader jsonReader) throws IOException {
            try {
                return new AtomicInteger(jsonReader.nextInt());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, AtomicInteger atomicInteger) throws IOException {
            jsonWriter.value(atomicInteger.get());
        }
    }

    /* loaded from: classes.dex */
    public class c extends ja.s<Number> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Float.valueOf((float) jsonReader.nextDouble());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* loaded from: classes.dex */
    public class c0 extends ja.s<AtomicBoolean> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AtomicBoolean read(JsonReader jsonReader) throws IOException {
            return new AtomicBoolean(jsonReader.nextBoolean());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, AtomicBoolean atomicBoolean) throws IOException {
            jsonWriter.value(atomicBoolean.get());
        }
    }

    /* loaded from: classes.dex */
    public class d extends ja.s<Number> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Double.valueOf(jsonReader.nextDouble());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* loaded from: classes.dex */
    public static final class d0<T extends Enum<T>> extends ja.s<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Map<String, T> f4865a = new HashMap();

        /* renamed from: b, reason: collision with root package name */
        public final Map<T, String> f4866b = new HashMap();

        public d0(Class<T> cls) {
            try {
                for (T t10 : cls.getEnumConstants()) {
                    String name = t10.name();
                    ka.c cVar = (ka.c) cls.getField(name).getAnnotation(ka.c.class);
                    if (cVar != null) {
                        name = cVar.value();
                        for (String str : cVar.alternate()) {
                            this.f4865a.put(str, t10);
                        }
                    }
                    this.f4865a.put(name, t10);
                    this.f4866b.put(t10, name);
                }
            } catch (NoSuchFieldException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return this.f4865a.get(jsonReader.nextString());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, T t10) throws IOException {
            jsonWriter.value(t10 == null ? null : this.f4866b.get(t10));
        }
    }

    /* loaded from: classes.dex */
    public class e extends ja.s<Number> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(JsonReader jsonReader) throws IOException {
            JsonToken peek = jsonReader.peek();
            int i10 = v.f4867a[peek.ordinal()];
            if (i10 == 1 || i10 == 3) {
                return new la.f(jsonReader.nextString());
            }
            if (i10 == 4) {
                jsonReader.nextNull();
                return null;
            }
            throw new JsonSyntaxException("Expecting number, got: " + peek);
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* loaded from: classes.dex */
    public class f extends ja.s<Character> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Character read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String nextString = jsonReader.nextString();
            if (nextString.length() == 1) {
                return Character.valueOf(nextString.charAt(0));
            }
            throw new JsonSyntaxException("Expecting character, got: " + nextString);
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Character ch) throws IOException {
            jsonWriter.value(ch == null ? null : String.valueOf(ch));
        }
    }

    /* loaded from: classes.dex */
    public class g extends ja.s<String> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String read(JsonReader jsonReader) throws IOException {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            if (peek == JsonToken.BOOLEAN) {
                return Boolean.toString(jsonReader.nextBoolean());
            }
            return jsonReader.nextString();
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, String str) throws IOException {
            jsonWriter.value(str);
        }
    }

    /* loaded from: classes.dex */
    public class h extends ja.s<BigDecimal> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new BigDecimal(jsonReader.nextString());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
            jsonWriter.value(bigDecimal);
        }
    }

    /* loaded from: classes.dex */
    public class i extends ja.s<BigInteger> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new BigInteger(jsonReader.nextString());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
            jsonWriter.value(bigInteger);
        }
    }

    /* loaded from: classes.dex */
    public class j extends ja.s<StringBuilder> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return new StringBuilder(jsonReader.nextString());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, StringBuilder sb2) throws IOException {
            jsonWriter.value(sb2 == null ? null : sb2.toString());
        }
    }

    /* loaded from: classes.dex */
    public class k extends ja.s<Class> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Class read(JsonReader jsonReader) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Class cls) throws IOException {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }
    }

    /* loaded from: classes.dex */
    public class l extends ja.s<StringBuffer> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuffer read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return new StringBuffer(jsonReader.nextString());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
            jsonWriter.value(stringBuffer == null ? null : stringBuffer.toString());
        }
    }

    /* loaded from: classes.dex */
    public class m extends ja.s<URL> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public URL read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String nextString = jsonReader.nextString();
            if ("null".equals(nextString)) {
                return null;
            }
            return new URL(nextString);
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, URL url) throws IOException {
            jsonWriter.value(url == null ? null : url.toExternalForm());
        }
    }

    /* loaded from: classes.dex */
    public class n extends ja.s<URI> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public URI read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                String nextString = jsonReader.nextString();
                if ("null".equals(nextString)) {
                    return null;
                }
                return new URI(nextString);
            } catch (URISyntaxException e10) {
                throw new JsonIOException(e10);
            }
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, URI uri) throws IOException {
            jsonWriter.value(uri == null ? null : uri.toASCIIString());
        }
    }

    /* loaded from: classes.dex */
    public class o extends ja.s<InetAddress> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public InetAddress read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return InetAddress.getByName(jsonReader.nextString());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
            jsonWriter.value(inetAddress == null ? null : inetAddress.getHostAddress());
        }
    }

    /* loaded from: classes.dex */
    public class p extends ja.s<UUID> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UUID read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return UUID.fromString(jsonReader.nextString());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, UUID uuid) throws IOException {
            jsonWriter.value(uuid == null ? null : uuid.toString());
        }
    }

    /* loaded from: classes.dex */
    public class q extends ja.s<Currency> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Currency read(JsonReader jsonReader) throws IOException {
            return Currency.getInstance(jsonReader.nextString());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Currency currency) throws IOException {
            jsonWriter.value(currency.getCurrencyCode());
        }
    }

    /* loaded from: classes.dex */
    public class r extends ja.s<Calendar> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Calendar read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (jsonReader.peek() != JsonToken.END_OBJECT) {
                String nextName = jsonReader.nextName();
                int nextInt = jsonReader.nextInt();
                if ("year".equals(nextName)) {
                    i10 = nextInt;
                } else if ("month".equals(nextName)) {
                    i11 = nextInt;
                } else if ("dayOfMonth".equals(nextName)) {
                    i12 = nextInt;
                } else if ("hourOfDay".equals(nextName)) {
                    i13 = nextInt;
                } else if ("minute".equals(nextName)) {
                    i14 = nextInt;
                } else if ("second".equals(nextName)) {
                    i15 = nextInt;
                }
            }
            jsonReader.endObject();
            return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Calendar calendar) throws IOException {
            if (calendar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("year");
            jsonWriter.value(calendar.get(1));
            jsonWriter.name("month");
            jsonWriter.value(calendar.get(2));
            jsonWriter.name("dayOfMonth");
            jsonWriter.value(calendar.get(5));
            jsonWriter.name("hourOfDay");
            jsonWriter.value(calendar.get(11));
            jsonWriter.name("minute");
            jsonWriter.value(calendar.get(12));
            jsonWriter.name("second");
            jsonWriter.value(calendar.get(13));
            jsonWriter.endObject();
        }
    }

    /* loaded from: classes.dex */
    public class s extends ja.s<Locale> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Locale read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (nextToken2 == null && nextToken3 == null) {
                return new Locale(nextToken);
            }
            if (nextToken3 == null) {
                return new Locale(nextToken, nextToken2);
            }
            return new Locale(nextToken, nextToken2, nextToken3);
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Locale locale) throws IOException {
            jsonWriter.value(locale == null ? null : locale.toString());
        }
    }

    /* loaded from: classes.dex */
    public class t extends ja.s<ja.l> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ja.l read(JsonReader jsonReader) throws IOException {
            switch (v.f4867a[jsonReader.peek().ordinal()]) {
                case 1:
                    return new ja.o(new la.f(jsonReader.nextString()));
                case 2:
                    return new ja.o(Boolean.valueOf(jsonReader.nextBoolean()));
                case 3:
                    return new ja.o(jsonReader.nextString());
                case 4:
                    jsonReader.nextNull();
                    return ja.m.f9141a;
                case 5:
                    ja.i iVar = new ja.i();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        iVar.i(read(jsonReader));
                    }
                    jsonReader.endArray();
                    return iVar;
                case 6:
                    ja.n nVar = new ja.n();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        nVar.i(jsonReader.nextName(), read(jsonReader));
                    }
                    jsonReader.endObject();
                    return nVar;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, ja.l lVar) throws IOException {
            if (lVar != null && !lVar.f()) {
                if (lVar.h()) {
                    ja.o c10 = lVar.c();
                    if (c10.p()) {
                        jsonWriter.value(c10.m());
                        return;
                    } else if (c10.n()) {
                        jsonWriter.value(c10.i());
                        return;
                    } else {
                        jsonWriter.value(c10.d());
                        return;
                    }
                }
                if (lVar.e()) {
                    jsonWriter.beginArray();
                    Iterator<ja.l> it2 = lVar.a().iterator();
                    while (it2.hasNext()) {
                        write(jsonWriter, it2.next());
                    }
                    jsonWriter.endArray();
                    return;
                }
                if (lVar.g()) {
                    jsonWriter.beginObject();
                    for (Map.Entry<String, ja.l> entry : lVar.b().k()) {
                        jsonWriter.name(entry.getKey());
                        write(jsonWriter, entry.getValue());
                    }
                    jsonWriter.endObject();
                    return;
                }
                throw new IllegalArgumentException("Couldn't write " + lVar.getClass());
            }
            jsonWriter.nullValue();
        }
    }

    /* loaded from: classes.dex */
    public class u extends ja.s<BitSet> {
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
        
            if (java.lang.Integer.parseInt(r1) != 0) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        
            r5 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
        
            if (r8.nextInt() != 0) goto L23;
         */
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public BitSet read(JsonReader jsonReader) throws IOException {
            BitSet bitSet = new BitSet();
            jsonReader.beginArray();
            JsonToken peek = jsonReader.peek();
            int i10 = 0;
            while (peek != JsonToken.END_ARRAY) {
                int i11 = v.f4867a[peek.ordinal()];
                boolean z10 = true;
                if (i11 != 1) {
                    if (i11 == 2) {
                        z10 = jsonReader.nextBoolean();
                    } else if (i11 == 3) {
                        String nextString = jsonReader.nextString();
                        try {
                        } catch (NumberFormatException unused) {
                            throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + nextString);
                        }
                    } else {
                        throw new JsonSyntaxException("Invalid bitset value type: " + peek);
                    }
                    if (z10) {
                        bitSet.set(i10);
                    }
                    i10++;
                    peek = jsonReader.peek();
                }
            }
            jsonReader.endArray();
            return bitSet;
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
            jsonWriter.beginArray();
            int length = bitSet.length();
            for (int i10 = 0; i10 < length; i10++) {
                jsonWriter.value(bitSet.get(i10) ? 1L : 0L);
            }
            jsonWriter.endArray();
        }
    }

    /* loaded from: classes.dex */
    public static /* synthetic */ class v {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4867a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f4867a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4867a[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4867a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4867a[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4867a[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4867a[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4867a[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4867a[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4867a[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4867a[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes.dex */
    public class w extends ja.s<Boolean> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean read(JsonReader jsonReader) throws IOException {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            if (peek == JsonToken.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString()));
            }
            return Boolean.valueOf(jsonReader.nextBoolean());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
            jsonWriter.value(bool);
        }
    }

    /* loaded from: classes.dex */
    public class x extends ja.s<Boolean> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Boolean.valueOf(jsonReader.nextString());
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
            jsonWriter.value(bool == null ? "null" : bool.toString());
        }
    }

    /* loaded from: classes.dex */
    public class y extends ja.s<Number> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Byte.valueOf((byte) jsonReader.nextInt());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* loaded from: classes.dex */
    public class z extends ja.s<Number> {
        @Override // ja.s
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Short.valueOf((short) jsonReader.nextInt());
            } catch (NumberFormatException e10) {
                throw new JsonSyntaxException(e10);
            }
        }

        @Override // ja.s
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    static {
        ja.s<Class> nullSafe = new k().nullSafe();
        f4823a = nullSafe;
        f4824b = a(Class.class, nullSafe);
        ja.s<BitSet> nullSafe2 = new u().nullSafe();
        f4825c = nullSafe2;
        f4826d = a(BitSet.class, nullSafe2);
        w wVar = new w();
        f4827e = wVar;
        f4828f = new x();
        f4829g = b(Boolean.TYPE, Boolean.class, wVar);
        y yVar = new y();
        f4830h = yVar;
        f4831i = b(Byte.TYPE, Byte.class, yVar);
        z zVar = new z();
        f4832j = zVar;
        f4833k = b(Short.TYPE, Short.class, zVar);
        a0 a0Var = new a0();
        f4834l = a0Var;
        f4835m = b(Integer.TYPE, Integer.class, a0Var);
        ja.s<AtomicInteger> nullSafe3 = new b0().nullSafe();
        f4836n = nullSafe3;
        f4837o = a(AtomicInteger.class, nullSafe3);
        ja.s<AtomicBoolean> nullSafe4 = new c0().nullSafe();
        f4838p = nullSafe4;
        f4839q = a(AtomicBoolean.class, nullSafe4);
        ja.s<AtomicIntegerArray> nullSafe5 = new a().nullSafe();
        f4840r = nullSafe5;
        f4841s = a(AtomicIntegerArray.class, nullSafe5);
        f4842t = new b();
        f4843u = new c();
        f4844v = new d();
        e eVar = new e();
        f4845w = eVar;
        f4846x = a(Number.class, eVar);
        f fVar = new f();
        f4847y = fVar;
        f4848z = b(Character.TYPE, Character.class, fVar);
        g gVar = new g();
        A = gVar;
        B = new h();
        C = new i();
        D = a(String.class, gVar);
        j jVar = new j();
        E = jVar;
        F = a(StringBuilder.class, jVar);
        l lVar = new l();
        G = lVar;
        H = a(StringBuffer.class, lVar);
        m mVar = new m();
        I = mVar;
        J = a(URL.class, mVar);
        n nVar = new n();
        K = nVar;
        L = a(URI.class, nVar);
        o oVar = new o();
        M = oVar;
        N = e(InetAddress.class, oVar);
        p pVar = new p();
        O = pVar;
        P = a(UUID.class, pVar);
        ja.s<Currency> nullSafe6 = new q().nullSafe();
        Q = nullSafe6;
        R = a(Currency.class, nullSafe6);
        S = new ja.t() { // from class: com.google.gson.internal.bind.TypeAdapters.26

            /* renamed from: com.google.gson.internal.bind.TypeAdapters$26$a */
            /* loaded from: classes.dex */
            public class a extends ja.s<Timestamp> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ ja.s f4849a;

                public a(ja.s sVar) {
                    this.f4849a = sVar;
                }

                @Override // ja.s
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public Timestamp read(JsonReader jsonReader) throws IOException {
                    Date date = (Date) this.f4849a.read(jsonReader);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                @Override // ja.s
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public void write(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
                    this.f4849a.write(jsonWriter, timestamp);
                }
            }

            @Override // ja.t
            public <T> ja.s<T> create(ja.f fVar2, oa.a<T> aVar) {
                if (aVar.getRawType() != Timestamp.class) {
                    return null;
                }
                return new a(fVar2.m(Date.class));
            }
        };
        r rVar = new r();
        T = rVar;
        U = d(Calendar.class, GregorianCalendar.class, rVar);
        s sVar = new s();
        V = sVar;
        W = a(Locale.class, sVar);
        t tVar = new t();
        X = tVar;
        Y = e(ja.l.class, tVar);
        Z = new ja.t() { // from class: com.google.gson.internal.bind.TypeAdapters.30
            @Override // ja.t
            public <T> ja.s<T> create(ja.f fVar2, oa.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                    return null;
                }
                if (!rawType.isEnum()) {
                    rawType = rawType.getSuperclass();
                }
                return new d0(rawType);
            }
        };
    }

    public static <TT> ja.t a(final Class<TT> cls, final ja.s<TT> sVar) {
        return new ja.t() { // from class: com.google.gson.internal.bind.TypeAdapters.32
            @Override // ja.t
            public <T> ja.s<T> create(ja.f fVar, oa.a<T> aVar) {
                if (aVar.getRawType() == cls) {
                    return sVar;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + sVar + "]";
            }
        };
    }

    public static <TT> ja.t b(final Class<TT> cls, final Class<TT> cls2, final ja.s<? super TT> sVar) {
        return new ja.t() { // from class: com.google.gson.internal.bind.TypeAdapters.33
            @Override // ja.t
            public <T> ja.s<T> create(ja.f fVar, oa.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return sVar;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls2.getName() + BadgeDrawable.DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX + cls.getName() + ",adapter=" + sVar + "]";
            }
        };
    }

    public static <TT> ja.t c(final oa.a<TT> aVar, final ja.s<TT> sVar) {
        return new ja.t() { // from class: com.google.gson.internal.bind.TypeAdapters.31
            @Override // ja.t
            public <T> ja.s<T> create(ja.f fVar, oa.a<T> aVar2) {
                if (aVar2.equals(oa.a.this)) {
                    return sVar;
                }
                return null;
            }
        };
    }

    public static <TT> ja.t d(final Class<TT> cls, final Class<? extends TT> cls2, final ja.s<? super TT> sVar) {
        return new ja.t() { // from class: com.google.gson.internal.bind.TypeAdapters.34
            @Override // ja.t
            public <T> ja.s<T> create(ja.f fVar, oa.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return sVar;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + BadgeDrawable.DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX + cls2.getName() + ",adapter=" + sVar + "]";
            }
        };
    }

    public static <T1> ja.t e(final Class<T1> cls, final ja.s<T1> sVar) {
        return new ja.t() { // from class: com.google.gson.internal.bind.TypeAdapters.35

            /* JADX INFO: Add missing generic type declarations: [T1] */
            /* renamed from: com.google.gson.internal.bind.TypeAdapters$35$a */
            /* loaded from: classes.dex */
            public class a<T1> extends ja.s<T1> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ Class f4863a;

                public a(Class cls) {
                    this.f4863a = cls;
                }

                @Override // ja.s
                public T1 read(JsonReader jsonReader) throws IOException {
                    T1 t12 = (T1) sVar.read(jsonReader);
                    if (t12 == null || this.f4863a.isInstance(t12)) {
                        return t12;
                    }
                    throw new JsonSyntaxException("Expected a " + this.f4863a.getName() + " but was " + t12.getClass().getName());
                }

                @Override // ja.s
                public void write(JsonWriter jsonWriter, T1 t12) throws IOException {
                    sVar.write(jsonWriter, t12);
                }
            }

            @Override // ja.t
            public <T2> ja.s<T2> create(ja.f fVar, oa.a<T2> aVar) {
                Class<? super T2> rawType = aVar.getRawType();
                if (cls.isAssignableFrom(rawType)) {
                    return new a(rawType);
                }
                return null;
            }

            public String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + sVar + "]";
            }
        };
    }
}
