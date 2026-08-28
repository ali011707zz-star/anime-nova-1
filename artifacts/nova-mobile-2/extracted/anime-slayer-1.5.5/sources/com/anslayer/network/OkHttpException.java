package com.anslayer.network;

import jc.g;
import jc.l;
import okhttp3.Response;

/* compiled from: OkHttpExtensions.kt */
/* loaded from: classes.dex */
public final class OkHttpException extends RuntimeException {

    /* renamed from: i, reason: collision with root package name */
    public static final a f4156i = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public final transient Response f4157f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4158g;

    /* renamed from: h, reason: collision with root package name */
    public final String f4159h;

    /* compiled from: OkHttpExtensions.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final String b(Response response) {
            return "HTTP " + response.code() + ' ' + ((Object) response.message());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkHttpException(Response response) {
        super(f4156i.b(response));
        l.f(response, "response");
        this.f4157f = response;
        this.f4158g = response.code();
        String message = response.message();
        l.e(message, "response.message()");
        this.f4159h = message;
    }

    public final int a() {
        return this.f4158g;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f4159h;
    }
}
