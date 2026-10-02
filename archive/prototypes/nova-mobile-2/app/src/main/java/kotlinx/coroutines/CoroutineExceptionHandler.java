package kotlinx.coroutines;

import ac.g;

/* compiled from: CoroutineExceptionHandler.kt */
/* loaded from: classes2.dex */
public interface CoroutineExceptionHandler extends g.b {

    /* renamed from: b, reason: collision with root package name */
    public static final a f10174b = a.f10175f;

    /* compiled from: CoroutineExceptionHandler.kt */
    /* loaded from: classes2.dex */
    public static final class a implements g.c<CoroutineExceptionHandler> {

        /* renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ a f10175f = new a();
    }

    void handleException(g gVar, Throwable th);
}
