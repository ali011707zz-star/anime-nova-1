package com.anslayer.api.converter;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import jc.l;
import okhttp3.ResponseBody;
import qc.t;
import qc.u;
import rd.f;
import rd.r;
import vb.e;
import y4.a;

/* compiled from: BodyConverter.kt */
/* loaded from: classes.dex */
public final class BodyConverter extends f.a {

    /* compiled from: BodyConverter.kt */
    /* loaded from: classes.dex */
    public static final class ResponseBodyConverter<T> implements f<ResponseBody, T> {
        private final int correctionRequired;
        private final e gson$delegate;
        private final Type type;

        public ResponseBodyConverter(Type type) {
            l.f(type, "type");
            this.type = type;
            this.correctionRequired = a.f16430a.a();
            this.gson$delegate = vb.f.a(BodyConverter$ResponseBodyConverter$special$$inlined$injectLazy$1.INSTANCE);
        }

        private final String correctJsonFormat(String str) {
            String str2 = l.a(str, "{\"response\":[]}") ? "{\"response\":null}" : str;
            if (u.C(str, "\"episodes\":[]", false, 2, null)) {
                str2 = t.v(str2, "\"episodes\":[]", "\"episodes\":null", false, 4, null);
            }
            String str3 = str2;
            if (u.C(str, "\"related_recommendations\":[]", false, 2, null)) {
                str3 = t.v(str3, "\"related_recommendations\":[]", "\"related_recommendations\":null", false, 4, null);
            }
            String str4 = str3;
            if (u.C(str, "\"related_news\":[]", false, 2, null)) {
                str4 = t.v(str4, "\"related_news\":[]", "\"related_news\":null", false, 4, null);
            }
            String str5 = str4;
            if (u.C(str, "\"related_animes\":[]", false, 2, null)) {
                str5 = t.v(str5, "\"related_animes\":[]", "\"related_animes\":null", false, 4, null);
            }
            return this.correctionRequired > 1 ? str5 : "";
        }

        private final ja.f getGson() {
            return (ja.f) this.gson$delegate.getValue();
        }

        @Override // rd.f
        public T convert(ResponseBody responseBody) {
            T t10;
            l.f(responseBody, AppMeasurementSdk.ConditionalUserProperty.VALUE);
            try {
                try {
                    String string = responseBody.string();
                    l.e(string, "responseValue");
                    t10 = (T) getGson().l(correctJsonFormat(string), this.type);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    responseBody.close();
                    t10 = null;
                }
                return t10;
            } finally {
                responseBody.close();
            }
        }
    }

    @Override // rd.f.a
    public f<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, r rVar) {
        l.f(type, "type");
        l.f(annotationArr, "annotations");
        l.f(rVar, "retrofit");
        return new ResponseBodyConverter(type);
    }
}
