package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import androidx.lifecycle.LiveData;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import o1.p0;
import o1.u;
import org.apache.http.client.methods.HttpDelete;
import r1.g;
import r1.k;

/* compiled from: InvalidationTracker.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: o, reason: collision with root package name */
    public static final String[] f3113o = {"UPDATE", HttpDelete.METHOD_NAME, "INSERT"};

    /* renamed from: b, reason: collision with root package name */
    public final String[] f3115b;

    /* renamed from: c, reason: collision with root package name */
    public Map<String, Set<String>> f3116c;

    /* renamed from: e, reason: collision with root package name */
    public final p0 f3118e;

    /* renamed from: h, reason: collision with root package name */
    public volatile k f3121h;

    /* renamed from: i, reason: collision with root package name */
    public final b f3122i;

    /* renamed from: j, reason: collision with root package name */
    public final u f3123j;

    /* renamed from: l, reason: collision with root package name */
    public androidx.room.d f3125l;

    /* renamed from: d, reason: collision with root package name */
    public o1.a f3117d = null;

    /* renamed from: f, reason: collision with root package name */
    public AtomicBoolean f3119f = new AtomicBoolean(false);

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f3120g = false;

    /* renamed from: k, reason: collision with root package name */
    @SuppressLint({"RestrictedApi"})
    public final m.b<AbstractC0054c, d> f3124k = new m.b<>();

    /* renamed from: m, reason: collision with root package name */
    public final Object f3126m = new Object();

    /* renamed from: n, reason: collision with root package name */
    public Runnable f3127n = new a();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap<String, Integer> f3114a = new HashMap<>();

    /* compiled from: InvalidationTracker.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        public final Set<Integer> a() {
            HashSet hashSet = new HashSet();
            Cursor B = c.this.f3118e.B(new r1.a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
            while (B.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(B.getInt(0)));
                } catch (Throwable th) {
                    B.close();
                    throw th;
                }
            }
            B.close();
            if (!hashSet.isEmpty()) {
                c.this.f3121h.A();
            }
            return hashSet;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0071, code lost:
        
            if (r0 != null) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
        
            r0.b();
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
        
            if (r1 == null) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x009a, code lost:
        
            if (r1.isEmpty() != false) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x009c, code lost:
        
            r0 = r5.f3128f.f3124k;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00a0, code lost:
        
            monitor-enter(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00a1, code lost:
        
            r2 = r5.f3128f.f3124k.iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00ad, code lost:
        
            if (r2.hasNext() == false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00af, code lost:
        
            r2.next().getValue().a(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00bf, code lost:
        
            monitor-exit(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00c4, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0091, code lost:
        
            if (r0 == null) goto L38;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            o1.a aVar;
            o1.a aVar2;
            Lock l10 = c.this.f3118e.l();
            l10.lock();
            Set<Integer> set = null;
            try {
                try {
                    if (!c.this.f()) {
                        if (aVar != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    if (!c.this.f3119f.compareAndSet(true, false)) {
                        l10.unlock();
                        o1.a aVar3 = c.this.f3117d;
                        if (aVar3 != null) {
                            aVar3.b();
                            return;
                        }
                        return;
                    }
                    if (c.this.f3118e.s()) {
                        l10.unlock();
                        o1.a aVar4 = c.this.f3117d;
                        if (aVar4 != null) {
                            aVar4.b();
                            return;
                        }
                        return;
                    }
                    g v02 = c.this.f3118e.n().v0();
                    v02.l0();
                    try {
                        set = a();
                        v02.g0();
                        l10.unlock();
                        aVar2 = c.this.f3117d;
                    } finally {
                        v02.f();
                    }
                } catch (SQLiteException | IllegalStateException unused) {
                    l10.unlock();
                    aVar2 = c.this.f3117d;
                }
            } finally {
                l10.unlock();
                aVar = c.this.f3117d;
                if (aVar != null) {
                    aVar.b();
                }
            }
        }
    }

    /* compiled from: InvalidationTracker.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final long[] f3129a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean[] f3130b;

        /* renamed from: c, reason: collision with root package name */
        public final int[] f3131c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f3132d;

        public b(int i10) {
            long[] jArr = new long[i10];
            this.f3129a = jArr;
            boolean[] zArr = new boolean[i10];
            this.f3130b = zArr;
            this.f3131c = new int[i10];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        public int[] a() {
            synchronized (this) {
                if (!this.f3132d) {
                    return null;
                }
                int length = this.f3129a.length;
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = 1;
                    boolean z10 = this.f3129a[i10] > 0;
                    boolean[] zArr = this.f3130b;
                    if (z10 != zArr[i10]) {
                        int[] iArr = this.f3131c;
                        if (!z10) {
                            i11 = 2;
                        }
                        iArr[i10] = i11;
                    } else {
                        this.f3131c[i10] = 0;
                    }
                    zArr[i10] = z10;
                }
                this.f3132d = false;
                return (int[]) this.f3131c.clone();
            }
        }

        public boolean b(int... iArr) {
            boolean z10;
            synchronized (this) {
                z10 = false;
                for (int i10 : iArr) {
                    long[] jArr = this.f3129a;
                    long j10 = jArr[i10];
                    jArr[i10] = 1 + j10;
                    if (j10 == 0) {
                        this.f3132d = true;
                        z10 = true;
                    }
                }
            }
            return z10;
        }

        public boolean c(int... iArr) {
            boolean z10;
            synchronized (this) {
                z10 = false;
                for (int i10 : iArr) {
                    long[] jArr = this.f3129a;
                    long j10 = jArr[i10];
                    jArr[i10] = j10 - 1;
                    if (j10 == 1) {
                        this.f3132d = true;
                        z10 = true;
                    }
                }
            }
            return z10;
        }

        public void d() {
            synchronized (this) {
                Arrays.fill(this.f3130b, false);
                this.f3132d = true;
            }
        }
    }

    /* compiled from: InvalidationTracker.java */
    /* renamed from: androidx.room.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0054c {

        /* renamed from: a, reason: collision with root package name */
        public final String[] f3133a;

        public AbstractC0054c(String[] strArr) {
            this.f3133a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        public boolean a() {
            return false;
        }

        public abstract void b(Set<String> set);
    }

    /* compiled from: InvalidationTracker.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f3134a;

        /* renamed from: b, reason: collision with root package name */
        public final String[] f3135b;

        /* renamed from: c, reason: collision with root package name */
        public final AbstractC0054c f3136c;

        /* renamed from: d, reason: collision with root package name */
        public final Set<String> f3137d;

        public d(AbstractC0054c abstractC0054c, int[] iArr, String[] strArr) {
            this.f3136c = abstractC0054c;
            this.f3134a = iArr;
            this.f3135b = strArr;
            if (iArr.length == 1) {
                HashSet hashSet = new HashSet();
                hashSet.add(strArr[0]);
                this.f3137d = Collections.unmodifiableSet(hashSet);
                return;
            }
            this.f3137d = null;
        }

        public void a(Set<Integer> set) {
            int length = this.f3134a.length;
            Set<String> set2 = null;
            for (int i10 = 0; i10 < length; i10++) {
                if (set.contains(Integer.valueOf(this.f3134a[i10]))) {
                    if (length == 1) {
                        set2 = this.f3137d;
                    } else {
                        if (set2 == null) {
                            set2 = new HashSet<>(length);
                        }
                        set2.add(this.f3135b[i10]);
                    }
                }
            }
            if (set2 != null) {
                this.f3136c.b(set2);
            }
        }

        public void b(String[] strArr) {
            Set<String> set = null;
            if (this.f3135b.length == 1) {
                int length = strArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    if (strArr[i10].equalsIgnoreCase(this.f3135b[0])) {
                        set = this.f3137d;
                        break;
                    }
                    i10++;
                }
            } else {
                HashSet hashSet = new HashSet();
                for (String str : strArr) {
                    String[] strArr2 = this.f3135b;
                    int length2 = strArr2.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 < length2) {
                            String str2 = strArr2[i11];
                            if (str2.equalsIgnoreCase(str)) {
                                hashSet.add(str2);
                                break;
                            }
                            i11++;
                        }
                    }
                }
                if (hashSet.size() > 0) {
                    set = hashSet;
                }
            }
            if (set != null) {
                this.f3136c.b(set);
            }
        }
    }

    /* compiled from: InvalidationTracker.java */
    /* loaded from: classes.dex */
    public static class e extends AbstractC0054c {

        /* renamed from: b, reason: collision with root package name */
        public final c f3138b;

        /* renamed from: c, reason: collision with root package name */
        public final WeakReference<AbstractC0054c> f3139c;

        public e(c cVar, AbstractC0054c abstractC0054c) {
            super(abstractC0054c.f3133a);
            this.f3138b = cVar;
            this.f3139c = new WeakReference<>(abstractC0054c);
        }

        @Override // androidx.room.c.AbstractC0054c
        public void b(Set<String> set) {
            AbstractC0054c abstractC0054c = this.f3139c.get();
            if (abstractC0054c == null) {
                this.f3138b.k(this);
            } else {
                abstractC0054c.b(set);
            }
        }
    }

    public c(p0 p0Var, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f3118e = p0Var;
        this.f3122i = new b(strArr.length);
        this.f3116c = map2;
        this.f3123j = new u(p0Var);
        int length = strArr.length;
        this.f3115b = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArr[i10];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.f3114a.put(lowerCase, Integer.valueOf(i10));
            String str2 = map.get(strArr[i10]);
            if (str2 != null) {
                this.f3115b[i10] = str2.toLowerCase(locale);
            } else {
                this.f3115b[i10] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.f3114a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                HashMap<String, Integer> hashMap = this.f3114a;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    public static void c(StringBuilder sb2, String str, String str2) {
        sb2.append("`");
        sb2.append("room_table_modification_trigger_");
        sb2.append(str);
        sb2.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        sb2.append(str2);
        sb2.append("`");
    }

    public static void d(g gVar) {
        if (Build.VERSION.SDK_INT >= 16 && gVar.b0()) {
            gVar.l0();
        } else {
            gVar.g();
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void a(AbstractC0054c abstractC0054c) {
        d g10;
        String[] l10 = l(abstractC0054c.f3133a);
        int[] iArr = new int[l10.length];
        int length = l10.length;
        for (int i10 = 0; i10 < length; i10++) {
            Integer num = this.f3114a.get(l10[i10].toLowerCase(Locale.US));
            if (num != null) {
                iArr[i10] = num.intValue();
            } else {
                throw new IllegalArgumentException("There is no table with name " + l10[i10]);
            }
        }
        d dVar = new d(abstractC0054c, iArr, l10);
        synchronized (this.f3124k) {
            g10 = this.f3124k.g(abstractC0054c, dVar);
        }
        if (g10 == null && this.f3122i.b(iArr)) {
            q();
        }
    }

    public void b(AbstractC0054c abstractC0054c) {
        a(new e(this, abstractC0054c));
    }

    public <T> LiveData<T> e(String[] strArr, boolean z10, Callable<T> callable) {
        return this.f3123j.a(s(strArr), z10, callable);
    }

    public boolean f() {
        if (!this.f3118e.y()) {
            return false;
        }
        if (!this.f3120g) {
            this.f3118e.n().v0();
        }
        return this.f3120g;
    }

    public void g(g gVar) {
        synchronized (this) {
            if (this.f3120g) {
                return;
            }
            gVar.s("PRAGMA temp_store = MEMORY;");
            gVar.s("PRAGMA recursive_triggers='ON';");
            gVar.s("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            r(gVar);
            this.f3121h = gVar.C("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            this.f3120g = true;
        }
    }

    public void h(String... strArr) {
        synchronized (this.f3124k) {
            Iterator<Map.Entry<AbstractC0054c, d>> it2 = this.f3124k.iterator();
            while (it2.hasNext()) {
                Map.Entry<AbstractC0054c, d> next = it2.next();
                if (!next.getKey().a()) {
                    next.getValue().b(strArr);
                }
            }
        }
    }

    public void i() {
        synchronized (this) {
            this.f3120g = false;
            this.f3122i.d();
        }
    }

    public void j() {
        if (this.f3119f.compareAndSet(false, true)) {
            o1.a aVar = this.f3117d;
            if (aVar != null) {
                aVar.e();
            }
            this.f3118e.o().execute(this.f3127n);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void k(AbstractC0054c abstractC0054c) {
        d h10;
        synchronized (this.f3124k) {
            h10 = this.f3124k.h(abstractC0054c);
        }
        if (h10 == null || !this.f3122i.c(h10.f3134a)) {
            return;
        }
        q();
    }

    public final String[] l(String[] strArr) {
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f3116c.containsKey(lowerCase)) {
                hashSet.addAll(this.f3116c.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public void m(o1.a aVar) {
        this.f3117d = aVar;
        aVar.h(new Runnable() { // from class: o1.v
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.c.this.i();
            }
        });
    }

    public void n(Context context, String str, Intent intent) {
        this.f3125l = new androidx.room.d(context, str, intent, this, this.f3118e.o());
    }

    public final void o(g gVar, int i10) {
        gVar.s("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i10 + ", 0)");
        String str = this.f3115b[i10];
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : f3113o) {
            sb2.setLength(0);
            sb2.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            c(sb2, str, str2);
            sb2.append(" AFTER ");
            sb2.append(str2);
            sb2.append(" ON `");
            sb2.append(str);
            sb2.append("` BEGIN UPDATE ");
            sb2.append("room_table_modification_log");
            sb2.append(" SET ");
            sb2.append("invalidated");
            sb2.append(" = 1");
            sb2.append(" WHERE ");
            sb2.append("table_id");
            sb2.append(" = ");
            sb2.append(i10);
            sb2.append(" AND ");
            sb2.append("invalidated");
            sb2.append(" = 0");
            sb2.append("; END");
            gVar.s(sb2.toString());
        }
    }

    public final void p(g gVar, int i10) {
        String str = this.f3115b[i10];
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : f3113o) {
            sb2.setLength(0);
            sb2.append("DROP TRIGGER IF EXISTS ");
            c(sb2, str, str2);
            gVar.s(sb2.toString());
        }
    }

    public void q() {
        if (this.f3118e.y()) {
            r(this.f3118e.n().v0());
        }
    }

    public void r(g gVar) {
        if (gVar.Q()) {
            return;
        }
        try {
            Lock l10 = this.f3118e.l();
            l10.lock();
            try {
                synchronized (this.f3126m) {
                    int[] a10 = this.f3122i.a();
                    if (a10 == null) {
                        return;
                    }
                    int length = a10.length;
                    d(gVar);
                    for (int i10 = 0; i10 < length; i10++) {
                        try {
                            int i11 = a10[i10];
                            if (i11 == 1) {
                                o(gVar, i10);
                            } else if (i11 == 2) {
                                p(gVar, i10);
                            }
                        } finally {
                            gVar.f();
                        }
                    }
                    gVar.g0();
                }
            } finally {
                l10.unlock();
            }
        } catch (SQLiteException | IllegalStateException unused) {
        }
    }

    public final String[] s(String[] strArr) {
        String[] l10 = l(strArr);
        for (String str : l10) {
            if (!this.f3114a.containsKey(str.toLowerCase(Locale.US))) {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
        }
        return l10;
    }
}
