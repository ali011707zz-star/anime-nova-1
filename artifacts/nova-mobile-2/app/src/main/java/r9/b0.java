package r9;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import k9.h;
import s9.a;

/* compiled from: SQLiteEventStore.java */
/* loaded from: classes.dex */
public class b0 implements r9.c, s9.a {

    /* renamed from: j, reason: collision with root package name */
    public static final h9.b f13102j = h9.b.b("proto");

    /* renamed from: f, reason: collision with root package name */
    public final h0 f13103f;

    /* renamed from: g, reason: collision with root package name */
    public final t9.a f13104g;

    /* renamed from: h, reason: collision with root package name */
    public final t9.a f13105h;

    /* renamed from: i, reason: collision with root package name */
    public final r9.d f13106i;

    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes.dex */
    public interface b<T, U> {
        U apply(T t10);
    }

    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final String f13107a;

        /* renamed from: b, reason: collision with root package name */
        public final String f13108b;

        public c(String str, String str2) {
            this.f13107a = str;
            this.f13108b = str2;
        }
    }

    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes.dex */
    public interface d<T> {
        T a();
    }

    public b0(t9.a aVar, t9.a aVar2, r9.d dVar, h0 h0Var) {
        this.f13103f = h0Var;
        this.f13104g = aVar;
        this.f13105h = aVar2;
        this.f13106i = dVar;
    }

    public static /* synthetic */ Integer O0(long j10, SQLiteDatabase sQLiteDatabase) {
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", new String[]{String.valueOf(j10)}));
    }

    public static /* synthetic */ Object P0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    public static /* synthetic */ Object Q0(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    public static /* synthetic */ SQLiteDatabase R0(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    public static /* synthetic */ Long S0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    public static /* synthetic */ Long T0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean U0(k9.m mVar, SQLiteDatabase sQLiteDatabase) {
        Long K0 = K0(sQLiteDatabase, mVar);
        if (K0 == null) {
            return Boolean.FALSE;
        }
        return (Boolean) l1(H0().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{K0.toString()}), new b() { // from class: r9.m
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    public static /* synthetic */ List V0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(k9.m.a().b(cursor.getString(1)).d(u9.a.b(cursor.getInt(2))).c(g1(cursor.getString(3))).a());
        }
        return arrayList;
    }

    public static /* synthetic */ List W0(SQLiteDatabase sQLiteDatabase) {
        return (List) l1(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() { // from class: r9.a0
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                List V0;
                V0 = b0.V0((Cursor) obj);
                return V0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List X0(k9.m mVar, SQLiteDatabase sQLiteDatabase) {
        List<i> e12 = e1(sQLiteDatabase, mVar);
        return N0(e12, f1(sQLiteDatabase, e12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object Y0(List list, k9.m mVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j10 = cursor.getLong(0);
            boolean z10 = cursor.getInt(7) != 0;
            h.a k10 = k9.h.a().j(cursor.getString(1)).i(cursor.getLong(2)).k(cursor.getLong(3));
            if (z10) {
                k10.h(new k9.g(j1(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                k10.h(new k9.g(j1(cursor.getString(4)), h1(j10)));
            }
            if (!cursor.isNull(6)) {
                k10.g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(i.a(j10, mVar, k10.d()));
        }
        return null;
    }

    public static /* synthetic */ Object Z0(Map map, Cursor cursor) {
        while (true) {
            if (!cursor.moveToNext()) {
                return null;
            }
            long j10 = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j10));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j10), set);
            }
            set.add(new c(cursor.getString(1), cursor.getString(2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long a1(k9.m mVar, k9.h hVar, SQLiteDatabase sQLiteDatabase) {
        if (M0()) {
            return -1L;
        }
        long B0 = B0(sQLiteDatabase, mVar);
        int e10 = this.f13106i.e();
        byte[] a10 = hVar.e().a();
        boolean z10 = a10.length <= e10;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(B0));
        contentValues.put("transport_name", hVar.j());
        contentValues.put("timestamp_ms", Long.valueOf(hVar.f()));
        contentValues.put("uptime_ms", Long.valueOf(hVar.k()));
        contentValues.put("payload_encoding", hVar.e().b().a());
        contentValues.put("code", hVar.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z10));
        contentValues.put("payload", z10 ? a10 : new byte[0]);
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z10) {
            double length = a10.length;
            double d10 = e10;
            Double.isNaN(length);
            Double.isNaN(d10);
            int ceil = (int) Math.ceil(length / d10);
            for (int i10 = 1; i10 <= ceil; i10++) {
                byte[] copyOfRange = Arrays.copyOfRange(a10, (i10 - 1) * e10, Math.min(i10 * e10, a10.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i10));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : hVar.i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put(AppMeasurementSdk.ConditionalUserProperty.NAME, entry.getKey());
            contentValues3.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    public static /* synthetic */ byte[] b1(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i10 += blob.length;
        }
        byte[] bArr = new byte[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            byte[] bArr2 = (byte[]) arrayList.get(i12);
            System.arraycopy(bArr2, 0, bArr, i11, bArr2.length);
            i11 += bArr2.length;
        }
        return bArr;
    }

    public static /* synthetic */ Object c1(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    public static /* synthetic */ Object d1(long j10, k9.m mVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j10));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{mVar.b(), String.valueOf(u9.a.a(mVar.d()))}) < 1) {
            contentValues.put("backend_name", mVar.b());
            contentValues.put("priority", Integer.valueOf(u9.a.a(mVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    public static byte[] g1(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    public static h9.b j1(String str) {
        if (str == null) {
            return f13102j;
        }
        return h9.b.b(str);
    }

    public static String k1(Iterable<i> iterable) {
        StringBuilder sb2 = new StringBuilder("(");
        Iterator<i> it2 = iterable.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().c());
            if (it2.hasNext()) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    public static <T> T l1(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public final long B0(SQLiteDatabase sQLiteDatabase, k9.m mVar) {
        Long K0 = K0(sQLiteDatabase, mVar);
        if (K0 != null) {
            return K0.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", mVar.b());
        contentValues.put("priority", Integer.valueOf(u9.a.a(mVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (mVar.c() != null) {
            contentValues.put("extras", Base64.encodeToString(mVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    @Override // r9.c
    public void E0(final k9.m mVar, final long j10) {
        L0(new b() { // from class: r9.s
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                Object d12;
                d12 = b0.d1(j10, mVar, (SQLiteDatabase) obj);
                return d12;
            }
        });
    }

    public SQLiteDatabase H0() {
        final h0 h0Var = this.f13103f;
        h0Var.getClass();
        return (SQLiteDatabase) i1(new d() { // from class: r9.r
            @Override // r9.b0.d
            public final Object a() {
                return h0.this.getWritableDatabase();
            }
        }, new b() { // from class: r9.o
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                SQLiteDatabase R0;
                R0 = b0.R0((Throwable) obj);
                return R0;
            }
        });
    }

    public final long I0() {
        return H0().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    public final long J0() {
        return H0().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    public final Long K0(SQLiteDatabase sQLiteDatabase, k9.m mVar) {
        StringBuilder sb2 = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(mVar.b(), String.valueOf(u9.a.a(mVar.d()))));
        if (mVar.c() != null) {
            sb2.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(mVar.c(), 0));
        } else {
            sb2.append(" and extras is null");
        }
        return (Long) l1(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb2.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new b() { // from class: r9.k
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                Long T0;
                T0 = b0.T0((Cursor) obj);
                return T0;
            }
        });
    }

    public <T> T L0(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase H0 = H0();
        H0.beginTransaction();
        try {
            T apply = bVar.apply(H0);
            H0.setTransactionSuccessful();
            return apply;
        } finally {
            H0.endTransaction();
        }
    }

    public final boolean M0() {
        return I0() * J0() >= this.f13106i.f();
    }

    public final List<i> N0(List<i> list, Map<Long, Set<c>> map) {
        ListIterator<i> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            i next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.c()))) {
                h.a l10 = next.b().l();
                for (c cVar : map.get(Long.valueOf(next.c()))) {
                    l10.c(cVar.f13107a, cVar.f13108b);
                }
                listIterator.set(i.a(next.c(), next.d(), l10.d()));
            }
        }
        return list;
    }

    @Override // r9.c
    public Iterable<k9.m> S() {
        return (Iterable) L0(new b() { // from class: r9.n
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                List W0;
                W0 = b0.W0((SQLiteDatabase) obj);
                return W0;
            }
        });
    }

    @Override // s9.a
    public <T> T b(a.InterfaceC0342a<T> interfaceC0342a) {
        SQLiteDatabase H0 = H0();
        w0(H0);
        try {
            T execute = interfaceC0342a.execute();
            H0.setTransactionSuccessful();
            return execute;
        } finally {
            H0.endTransaction();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13103f.close();
    }

    @Override // r9.c
    public boolean e(final k9.m mVar) {
        return ((Boolean) L0(new b() { // from class: r9.w
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                Boolean U0;
                U0 = b0.this.U0(mVar, (SQLiteDatabase) obj);
                return U0;
            }
        })).booleanValue();
    }

    @Override // r9.c
    public i e0(final k9.m mVar, final k9.h hVar) {
        n9.a.b("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", mVar.d(), hVar.j(), mVar.b());
        long longValue = ((Long) L0(new b() { // from class: r9.y
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                Long a12;
                a12 = b0.this.a1(mVar, hVar, (SQLiteDatabase) obj);
                return a12;
            }
        })).longValue();
        if (longValue < 1) {
            return null;
        }
        return i.a(longValue, mVar, hVar);
    }

    public final List<i> e1(SQLiteDatabase sQLiteDatabase, final k9.m mVar) {
        final ArrayList arrayList = new ArrayList();
        Long K0 = K0(sQLiteDatabase, mVar);
        if (K0 == null) {
            return arrayList;
        }
        l1(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{K0.toString()}, null, null, null, String.valueOf(this.f13106i.d())), new b() { // from class: r9.v
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                Object Y0;
                Y0 = b0.this.Y0(arrayList, mVar, (Cursor) obj);
                return Y0;
            }
        });
        return arrayList;
    }

    public final Map<Long, Set<c>> f1(SQLiteDatabase sQLiteDatabase, List<i> list) {
        final HashMap hashMap = new HashMap();
        StringBuilder sb2 = new StringBuilder("event_id IN (");
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb2.append(list.get(i10).c());
            if (i10 < list.size() - 1) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        l1(sQLiteDatabase.query("event_metadata", new String[]{"event_id", AppMeasurementSdk.ConditionalUserProperty.NAME, AppMeasurementSdk.ConditionalUserProperty.VALUE}, sb2.toString(), null, null, null, null), new b() { // from class: r9.u
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                Object Z0;
                Z0 = b0.Z0(hashMap, (Cursor) obj);
                return Z0;
            }
        });
        return hashMap;
    }

    public final byte[] h1(long j10) {
        return (byte[]) l1(H0().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j10)}, null, null, "sequence_num"), new b() { // from class: r9.z
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                byte[] b12;
                b12 = b0.b1((Cursor) obj);
                return b12;
            }
        });
    }

    @Override // r9.c
    public int i() {
        final long a10 = this.f13104g.a() - this.f13106i.c();
        return ((Integer) L0(new b() { // from class: r9.j
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                Integer O0;
                O0 = b0.O0(a10, (SQLiteDatabase) obj);
                return O0;
            }
        })).intValue();
    }

    public final <T> T i1(d<T> dVar, b<Throwable, T> bVar) {
        long a10 = this.f13105h.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e10) {
                if (this.f13105h.a() >= this.f13106i.b() + a10) {
                    return bVar.apply(e10);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // r9.c
    public void l(Iterable<i> iterable) {
        if (iterable.iterator().hasNext()) {
            H0().compileStatement("DELETE FROM events WHERE _id in " + k1(iterable)).execute();
        }
    }

    @Override // r9.c
    public Iterable<i> o(final k9.m mVar) {
        return (Iterable) L0(new b() { // from class: r9.x
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                List X0;
                X0 = b0.this.X0(mVar, (SQLiteDatabase) obj);
                return X0;
            }
        });
    }

    @Override // r9.c
    public void o0(Iterable<i> iterable) {
        if (iterable.iterator().hasNext()) {
            final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + k1(iterable);
            L0(new b() { // from class: r9.t
                @Override // r9.b0.b
                public final Object apply(Object obj) {
                    Object c12;
                    c12 = b0.c1(str, (SQLiteDatabase) obj);
                    return c12;
                }
            });
        }
    }

    @Override // r9.c
    public long p0(k9.m mVar) {
        return ((Long) l1(H0().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{mVar.b(), String.valueOf(u9.a.a(mVar.d()))}), new b() { // from class: r9.l
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                Long S0;
                S0 = b0.S0((Cursor) obj);
                return S0;
            }
        })).longValue();
    }

    public final void w0(final SQLiteDatabase sQLiteDatabase) {
        i1(new d() { // from class: r9.q
            @Override // r9.b0.d
            public final Object a() {
                Object P0;
                P0 = b0.P0(sQLiteDatabase);
                return P0;
            }
        }, new b() { // from class: r9.p
            @Override // r9.b0.b
            public final Object apply(Object obj) {
                Object Q0;
                Q0 = b0.Q0((Throwable) obj);
                return Q0;
            }
        });
    }
}
