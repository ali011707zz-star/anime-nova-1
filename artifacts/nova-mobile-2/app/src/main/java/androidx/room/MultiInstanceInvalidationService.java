package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import androidx.room.b;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: f, reason: collision with root package name */
    public int f3103f = 0;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap<Integer, String> f3104g = new HashMap<>();

    /* renamed from: h, reason: collision with root package name */
    public final RemoteCallbackList<androidx.room.a> f3105h = new a();

    /* renamed from: i, reason: collision with root package name */
    public final b.a f3106i = new b();

    /* loaded from: classes.dex */
    public class a extends RemoteCallbackList<androidx.room.a> {
        public a() {
        }

        @Override // android.os.RemoteCallbackList
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCallbackDied(androidx.room.a aVar, Object obj) {
            MultiInstanceInvalidationService.this.f3104g.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    /* loaded from: classes.dex */
    public class b extends b.a {
        public b() {
        }

        @Override // androidx.room.b
        public int l(androidx.room.a aVar, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f3105h) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i10 = multiInstanceInvalidationService.f3103f + 1;
                multiInstanceInvalidationService.f3103f = i10;
                if (multiInstanceInvalidationService.f3105h.register(aVar, Integer.valueOf(i10))) {
                    MultiInstanceInvalidationService.this.f3104g.put(Integer.valueOf(i10), str);
                    return i10;
                }
                MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                multiInstanceInvalidationService2.f3103f--;
                return 0;
            }
        }

        @Override // androidx.room.b
        public void m(int i10, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f3105h) {
                String str = MultiInstanceInvalidationService.this.f3104g.get(Integer.valueOf(i10));
                if (str == null) {
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.f3105h.beginBroadcast();
                for (int i11 = 0; i11 < beginBroadcast; i11++) {
                    try {
                        int intValue = ((Integer) MultiInstanceInvalidationService.this.f3105h.getBroadcastCookie(i11)).intValue();
                        String str2 = MultiInstanceInvalidationService.this.f3104g.get(Integer.valueOf(intValue));
                        if (i10 != intValue && str.equals(str2)) {
                            try {
                                MultiInstanceInvalidationService.this.f3105h.getBroadcastItem(i11).i(strArr);
                            } catch (RemoteException unused) {
                            }
                        }
                    } finally {
                        MultiInstanceInvalidationService.this.f3105h.finishBroadcast();
                    }
                }
            }
        }

        @Override // androidx.room.b
        public void o(androidx.room.a aVar, int i10) {
            synchronized (MultiInstanceInvalidationService.this.f3105h) {
                MultiInstanceInvalidationService.this.f3105h.unregister(aVar);
                MultiInstanceInvalidationService.this.f3104g.remove(Integer.valueOf(i10));
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f3106i;
    }
}
