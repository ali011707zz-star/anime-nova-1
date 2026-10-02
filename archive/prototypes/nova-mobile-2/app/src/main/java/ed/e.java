package ed;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import org.greenrobot.eventbus.EventBusException;

/* compiled from: HandlerPoster.java */
/* loaded from: classes.dex */
public class e extends Handler implements k {

    /* renamed from: f, reason: collision with root package name */
    public final j f6337f;

    /* renamed from: g, reason: collision with root package name */
    public final int f6338g;

    /* renamed from: h, reason: collision with root package name */
    public final c f6339h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6340i;

    public e(c cVar, Looper looper, int i10) {
        super(looper);
        this.f6339h = cVar;
        this.f6338g = i10;
        this.f6337f = new j();
    }

    @Override // ed.k
    public void a(p pVar, Object obj) {
        i a10 = i.a(pVar, obj);
        synchronized (this) {
            this.f6337f.a(a10);
            if (!this.f6340i) {
                this.f6340i = true;
                if (!sendMessage(obtainMessage())) {
                    throw new EventBusException("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                i b10 = this.f6337f.b();
                if (b10 == null) {
                    synchronized (this) {
                        b10 = this.f6337f.b();
                        if (b10 == null) {
                            this.f6340i = false;
                            return;
                        }
                    }
                }
                this.f6339h.h(b10);
            } while (SystemClock.uptimeMillis() - uptimeMillis < this.f6338g);
            if (sendMessage(obtainMessage())) {
                this.f6340i = true;
                return;
            }
            throw new EventBusException("Could not send handler message");
        } finally {
            this.f6340i = false;
        }
    }
}
