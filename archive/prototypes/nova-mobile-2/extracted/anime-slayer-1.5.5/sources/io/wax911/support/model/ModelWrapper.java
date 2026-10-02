package io.wax911.support.model;

import jc.g;
import jc.l;
import okhttp3.Headers;
import okhttp3.ResponseBody;

/* compiled from: ModelWrapper.kt */
/* loaded from: classes.dex */
public final class ModelWrapper<T> {
    private final int code;
    private final ResponseBody error;
    private final Headers headers;
    private final T model;

    public ModelWrapper() {
        this(0, null, null, null, 15, null);
    }

    public ModelWrapper(int i10, T t10, Headers headers, ResponseBody responseBody) {
        this.code = i10;
        this.model = t10;
        this.headers = headers;
        this.error = responseBody;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ModelWrapper copy$default(ModelWrapper modelWrapper, int i10, Object obj, Headers headers, ResponseBody responseBody, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = modelWrapper.code;
        }
        if ((i11 & 2) != 0) {
            obj = modelWrapper.model;
        }
        if ((i11 & 4) != 0) {
            headers = modelWrapper.headers;
        }
        if ((i11 & 8) != 0) {
            responseBody = modelWrapper.error;
        }
        return modelWrapper.copy(i10, obj, headers, responseBody);
    }

    public final int component1() {
        return this.code;
    }

    public final T component2() {
        return this.model;
    }

    public final Headers component3() {
        return this.headers;
    }

    public final ResponseBody component4() {
        return this.error;
    }

    public final ModelWrapper<T> copy(int i10, T t10, Headers headers, ResponseBody responseBody) {
        return new ModelWrapper<>(i10, t10, headers, responseBody);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ModelWrapper)) {
            return false;
        }
        ModelWrapper modelWrapper = (ModelWrapper) obj;
        return this.code == modelWrapper.code && l.a(this.model, modelWrapper.model) && l.a(this.headers, modelWrapper.headers) && l.a(this.error, modelWrapper.error);
    }

    public final int getCode() {
        return this.code;
    }

    public final ResponseBody getError() {
        return this.error;
    }

    public final Headers getHeaders() {
        return this.headers;
    }

    public final T getModel() {
        return this.model;
    }

    public int hashCode() {
        int i10 = this.code * 31;
        T t10 = this.model;
        int hashCode = (i10 + (t10 == null ? 0 : t10.hashCode())) * 31;
        Headers headers = this.headers;
        int hashCode2 = (hashCode + (headers == null ? 0 : headers.hashCode())) * 31;
        ResponseBody responseBody = this.error;
        return hashCode2 + (responseBody != null ? responseBody.hashCode() : 0);
    }

    public final boolean isNotFound() {
        return this.code == 404;
    }

    public final boolean isSuccessful() {
        int i10 = this.code;
        return 200 <= i10 && i10 < 300;
    }

    public String toString() {
        return "ModelWrapper(code=" + this.code + ", model=" + this.model + ", headers=" + this.headers + ", error=" + this.error + ')';
    }

    public /* synthetic */ ModelWrapper(int i10, Object obj, Headers headers, ResponseBody responseBody, int i11, g gVar) {
        this((i11 & 1) != 0 ? 500 : i10, (i11 & 2) != 0 ? null : obj, (i11 & 4) != 0 ? null : headers, (i11 & 8) != 0 ? null : responseBody);
    }
}
