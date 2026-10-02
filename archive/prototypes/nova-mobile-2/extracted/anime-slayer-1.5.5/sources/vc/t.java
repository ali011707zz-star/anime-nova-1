package vc;

/* compiled from: ChannelFlow.kt */
/* loaded from: classes2.dex */
public final class t<T> implements ac.d<T>, cc.e {

    /* renamed from: f, reason: collision with root package name */
    public final ac.d<T> f15096f;

    /* renamed from: g, reason: collision with root package name */
    public final ac.g f15097g;

    /* JADX WARN: Multi-variable type inference failed */
    public t(ac.d<? super T> dVar, ac.g gVar) {
        this.f15096f = dVar;
        this.f15097g = gVar;
    }

    @Override // cc.e
    public cc.e getCallerFrame() {
        ac.d<T> dVar = this.f15096f;
        if (dVar instanceof cc.e) {
            return (cc.e) dVar;
        }
        return null;
    }

    @Override // ac.d
    public ac.g getContext() {
        return this.f15097g;
    }

    @Override // cc.e
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // ac.d
    public void resumeWith(Object obj) {
        this.f15096f.resumeWith(obj);
    }
}
