package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public final class SqlDateTypeAdapter extends s<Date> {

    /* renamed from: b, reason: collision with root package name */
    public static final t f4806b = new t() { // from class: com.google.gson.internal.bind.SqlDateTypeAdapter.1
        @Override // ja.t
        public <T> s<T> create(f fVar, oa.a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new SqlDateTypeAdapter();
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final DateFormat f4807a = new SimpleDateFormat("MMM d, yyyy");

    @Override // ja.s
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        try {
            return new Date(this.f4807a.parse(jsonReader.nextString()).getTime());
        } catch (ParseException e10) {
            throw new JsonSyntaxException(e10);
        }
    }

    @Override // ja.s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized void write(JsonWriter jsonWriter, Date date) throws IOException {
        jsonWriter.value(date == null ? null : this.f4807a.format((java.util.Date) date));
    }
}
