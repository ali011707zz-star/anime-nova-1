package r7;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: ResourceRecycler.java */
/* loaded from: classes.dex */
public class x {

    /* renamed from: a, reason: collision with root package name */
    public boolean f13077a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f13078b = new Handler(Looper.getMainLooper(), new a());

    /* compiled from: ResourceRecycler.java */
    /* loaded from: classes.dex */
    public static final class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((u) message.obj).b();
            return true;
        }
    }

    public synchronized void a(u<?> uVar, boolean z10) {
        if (!this.f13077a && !z10) {
            this.f13077a = true;
            uVar.b();
            this.f13077a = false;
        }
        this.f13078b.obtainMessage(1, uVar).sendToTarget();
    }
}
