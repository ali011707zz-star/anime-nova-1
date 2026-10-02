package ja;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: DefaultDateTypeAdapter.java */
/* loaded from: classes.dex */
public final class a extends s<Date> {

    /* renamed from: a, reason: collision with root package name */
    public final Class<? extends Date> f9087a;

    /* renamed from: b, reason: collision with root package name */
    public final List<DateFormat> f9088b;

    public a(Class<? extends Date> cls, String str) {
        ArrayList arrayList = new ArrayList();
        this.f9088b = arrayList;
        this.f9087a = c(cls);
        Locale locale = Locale.US;
        arrayList.add(new SimpleDateFormat(str, locale));
        if (Locale.getDefault().equals(locale)) {
            return;
        }
        arrayList.add(new SimpleDateFormat(str));
    }

    public static Class<? extends Date> c(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    public final Date a(String str) {
        synchronized (this.f9088b) {
            Iterator<DateFormat> it2 = this.f9088b.iterator();
            while (it2.hasNext()) {
                try {
                    return it2.next().parse(str);
                } catch (ParseException unused) {
                }
            }
            try {
                return ma.a.c(str, new ParsePosition(0));
            } catch (ParseException e10) {
                throw new JsonSyntaxException(str, e10);
            }
        }
    }

    @Override // ja.s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        Date a10 = a(jsonReader.nextString());
        Class<? extends Date> cls = this.f9087a;
        if (cls == Date.class) {
            return a10;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(a10.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(a10.getTime());
        }
        throw new AssertionError();
    }

    @Override // ja.s
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this.f9088b) {
            jsonWriter.value(this.f9088b.get(0).format(date));
        }
    }

    public String toString() {
        DateFormat dateFormat = this.f9088b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    public a(Class<? extends Date> cls, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        this.f9088b = arrayList;
        this.f9087a = c(cls);
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i10, i11, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i10, i11));
        }
        if (la.d.e()) {
            arrayList.add(la.i.c(i10, i11));
        }
    }
}
