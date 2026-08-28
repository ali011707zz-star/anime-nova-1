package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import la.d;
import la.i;

/* loaded from: classes.dex */
public final class DateTypeAdapter extends s<Date> {

    /* renamed from: b, reason: collision with root package name */
    public static final t f4777b = new t() { // from class: com.google.gson.internal.bind.DateTypeAdapter.1
        @Override // ja.t
        public <T> s<T> create(f fVar, oa.a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new DateTypeAdapter();
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final List<DateFormat> f4778a;

    public DateTypeAdapter() {
        ArrayList arrayList = new ArrayList();
        this.f4778a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (d.e()) {
            arrayList.add(i.c(2, 2));
        }
    }

    public final synchronized Date a(String str) {
        Iterator<DateFormat> it2 = this.f4778a.iterator();
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

    @Override // ja.s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return a(jsonReader.nextString());
    }

    @Override // ja.s
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public synchronized void write(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.nullValue();
        } else {
            jsonWriter.value(this.f4778a.get(0).format(date));
        }
    }
}
