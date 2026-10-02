package rc;

import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Debug.kt */
/* loaded from: classes2.dex */
public final class u0 {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f13337a = false;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f13338b;

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f13339c;

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicLong f13340d;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
    
        if (r0.equals("auto") != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0037, code lost:
    
        if (r0.equals("on") != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0042, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0040, code lost:
    
        if (r0.equals("") != false) goto L23;
     */
    static {
        boolean a10;
        String d10 = wc.b0.d("kotlinx.coroutines.debug");
        boolean z10 = false;
        if (d10 != null) {
            int hashCode = d10.hashCode();
            if (hashCode != 0) {
                if (hashCode != 3551) {
                    if (hashCode != 109935) {
                        if (hashCode == 3005871) {
                        }
                    } else if (d10.equals("off")) {
                        a10 = false;
                    }
                }
                throw new IllegalStateException(("System property 'kotlinx.coroutines.debug' has unrecognized value '" + ((Object) d10) + '\'').toString());
            }
            f13338b = a10;
            if (a10 && wc.b0.e("kotlinx.coroutines.stacktrace.recovery", true)) {
                z10 = true;
            }
            f13339c = z10;
            f13340d = new AtomicLong(0L);
        }
        a10 = a();
        f13338b = a10;
        if (a10) {
            z10 = true;
        }
        f13339c = z10;
        f13340d = new AtomicLong(0L);
    }

    public static final boolean a() {
        return f13337a;
    }

    public static final AtomicLong b() {
        return f13340d;
    }

    public static final boolean c() {
        return f13338b;
    }

    public static final boolean d() {
        return f13339c;
    }
}
