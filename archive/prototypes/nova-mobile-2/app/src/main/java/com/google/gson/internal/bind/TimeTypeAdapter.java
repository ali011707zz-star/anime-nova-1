package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import ja.f;
import ja.s;
import ja.t;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public final class TimeTypeAdapter extends s<Time> {

    /* renamed from: b, reason: collision with root package name */
    public static final t f4808b = new t() { // from class: com.google.gson.internal.bind.TimeTypeAdapter.1
        @Override // ja.t
        public <T> s<T> create(f fVar, oa.a<T> aVar) {
            if (aVar.getRawType() == Time.class) {
                return new TimeTypeAdapter();
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final DateFormat f4809a = new SimpleDateFormat("hh:mm:ss a");

    @Override // ja.s
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized Time read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        try {
            return new Time(this.f4809a.parse(jsonReader.nextString()).getTime());
        } catch (ParseException e10) {
            throw new JsonSyntaxException(e10);
        }
    }

    @Override // ja.s
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized void write(JsonWriter jsonWriter, Time time) throws IOException {
        jsonWriter.value(time == null ? null : this.f4809a.format((Date) time));
    }
}
