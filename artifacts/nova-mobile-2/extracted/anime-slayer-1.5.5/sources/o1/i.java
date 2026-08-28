package o1;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.database.SQLException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import o1.i;

/* compiled from: AutoClosingRoomOpenHelper.java */
/* loaded from: classes.dex */
public final class i implements r1.h, q {

    /* renamed from: f, reason: collision with root package name */
    public final r1.h f11506f;

    /* renamed from: g, reason: collision with root package name */
    public final a f11507g;

    /* renamed from: h, reason: collision with root package name */
    public final o1.a f11508h;

    /* compiled from: AutoClosingRoomOpenHelper.java */
    /* loaded from: classes.dex */
    public static final class a implements r1.g {

        /* renamed from: f, reason: collision with root package name */
        public final o1.a f11509f;

        public a(o1.a aVar) {
            this.f11509f = aVar;
        }

        public static /* synthetic */ Boolean F(r1.g gVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                return Boolean.valueOf(gVar.b0());
            }
            return Boolean.FALSE;
        }

        public static /* synthetic */ Object G(r1.g gVar) {
            return null;
        }

        public static /* synthetic */ Object x(String str, r1.g gVar) {
            gVar.s(str);
            return null;
        }

        public static /* synthetic */ Object z(String str, Object[] objArr, r1.g gVar) {
            gVar.j0(str, objArr);
            return null;
        }

        @Override // r1.g
        public Cursor A0(String str) {
            try {
                return new c(this.f11509f.e().A0(str), this.f11509f);
            } catch (Throwable th) {
                this.f11509f.b();
                throw th;
            }
        }

        @Override // r1.g
        public r1.k C(String str) {
            return new b(str, this.f11509f);
        }

        public void L() {
            this.f11509f.c(new n.a() { // from class: o1.e
                @Override // n.a
                public final Object apply(Object obj) {
                    Object G;
                    G = i.a.G((r1.g) obj);
                    return G;
                }
            });
        }

        @Override // r1.g
        public boolean Q() {
            if (this.f11509f.d() == null) {
                return false;
            }
            return ((Boolean) this.f11509f.c(new n.a() { // from class: o1.h
                @Override // n.a
                public final Object apply(Object obj) {
                    return Boolean.valueOf(((r1.g) obj).Q());
                }
            })).booleanValue();
        }

        @Override // r1.g
        public boolean b0() {
            return ((Boolean) this.f11509f.c(new n.a() { // from class: o1.d
                @Override // n.a
                public final Object apply(Object obj) {
                    Boolean F;
                    F = i.a.F((r1.g) obj);
                    return F;
                }
            })).booleanValue();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f11509f.a();
        }

        @Override // r1.g
        public void f() {
            if (this.f11509f.d() != null) {
                try {
                    this.f11509f.d().f();
                    return;
                } finally {
                    this.f11509f.b();
                }
            }
            throw new IllegalStateException("End transaction called but delegateDb is null");
        }

        @Override // r1.g
        public void g() {
            try {
                this.f11509f.e().g();
            } catch (Throwable th) {
                this.f11509f.b();
                throw th;
            }
        }

        @Override // r1.g
        public void g0() {
            r1.g d10 = this.f11509f.d();
            if (d10 != null) {
                d10.g0();
                return;
            }
            throw new IllegalStateException("setTransactionSuccessful called but delegateDb is null");
        }

        @Override // r1.g
        public String getPath() {
            return (String) this.f11509f.c(new n.a() { // from class: o1.g
                @Override // n.a
                public final Object apply(Object obj) {
                    return ((r1.g) obj).getPath();
                }
            });
        }

        @Override // r1.g
        public Cursor i0(r1.j jVar) {
            try {
                return new c(this.f11509f.e().i0(jVar), this.f11509f);
            } catch (Throwable th) {
                this.f11509f.b();
                throw th;
            }
        }

        @Override // r1.g
        public boolean isOpen() {
            r1.g d10 = this.f11509f.d();
            if (d10 == null) {
                return false;
            }
            return d10.isOpen();
        }

        @Override // r1.g
        public void j0(final String str, final Object[] objArr) throws SQLException {
            this.f11509f.c(new n.a() { // from class: o1.c
                @Override // n.a
                public final Object apply(Object obj) {
                    Object z10;
                    z10 = i.a.z(str, objArr, (r1.g) obj);
                    return z10;
                }
            });
        }

        @Override // r1.g
        public void l0() {
            try {
                this.f11509f.e().l0();
            } catch (Throwable th) {
                this.f11509f.b();
                throw th;
            }
        }

        @Override // r1.g
        public Cursor n(r1.j jVar, CancellationSignal cancellationSignal) {
            try {
                return new c(this.f11509f.e().n(jVar, cancellationSignal), this.f11509f);
            } catch (Throwable th) {
                this.f11509f.b();
                throw th;
            }
        }

        @Override // r1.g
        public List<Pair<String, String>> q() {
            return (List) this.f11509f.c(new n.a() { // from class: o1.f
                @Override // n.a
                public final Object apply(Object obj) {
                    return ((r1.g) obj).q();
                }
            });
        }

        @Override // r1.g
        public void s(final String str) throws SQLException {
            this.f11509f.c(new n.a() { // from class: o1.b
                @Override // n.a
                public final Object apply(Object obj) {
                    Object x10;
                    x10 = i.a.x(str, (r1.g) obj);
                    return x10;
                }
            });
        }
    }

    /* compiled from: AutoClosingRoomOpenHelper.java */
    /* loaded from: classes.dex */
    public static class b implements r1.k {

        /* renamed from: f, reason: collision with root package name */
        public final String f11510f;

        /* renamed from: g, reason: collision with root package name */
        public final ArrayList<Object> f11511g = new ArrayList<>();

        /* renamed from: h, reason: collision with root package name */
        public final o1.a f11512h;

        public b(String str, o1.a aVar) {
            this.f11510f = str;
            this.f11512h = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object k(n.a aVar, r1.g gVar) {
            r1.k C = gVar.C(this.f11510f);
            d(C);
            return aVar.apply(C);
        }

        @Override // r1.k
        public int A() {
            return ((Integer) h(new n.a() { // from class: o1.k
                @Override // n.a
                public final Object apply(Object obj) {
                    return Integer.valueOf(((r1.k) obj).A());
                }
            })).intValue();
        }

        @Override // r1.i
        public void H(int i10) {
            x(i10, null);
        }

        @Override // r1.i
        public void J(int i10, double d10) {
            x(i10, Double.valueOf(d10));
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public final void d(r1.k kVar) {
            int i10 = 0;
            while (i10 < this.f11511g.size()) {
                int i11 = i10 + 1;
                Object obj = this.f11511g.get(i10);
                if (obj == null) {
                    kVar.H(i11);
                } else if (obj instanceof Long) {
                    kVar.f0(i11, ((Long) obj).longValue());
                } else if (obj instanceof Double) {
                    kVar.J(i11, ((Double) obj).doubleValue());
                } else if (obj instanceof String) {
                    kVar.u(i11, (String) obj);
                } else if (obj instanceof byte[]) {
                    kVar.n0(i11, (byte[]) obj);
                }
                i10 = i11;
            }
        }

        @Override // r1.i
        public void f0(int i10, long j10) {
            x(i10, Long.valueOf(j10));
        }

        public final <T> T h(final n.a<r1.k, T> aVar) {
            return (T) this.f11512h.c(new n.a() { // from class: o1.j
                @Override // n.a
                public final Object apply(Object obj) {
                    Object k10;
                    k10 = i.b.this.k(aVar, (r1.g) obj);
                    return k10;
                }
            });
        }

        @Override // r1.i
        public void n0(int i10, byte[] bArr) {
            x(i10, bArr);
        }

        @Override // r1.i
        public void u(int i10, String str) {
            x(i10, str);
        }

        public final void x(int i10, Object obj) {
            int i11 = i10 - 1;
            if (i11 >= this.f11511g.size()) {
                for (int size = this.f11511g.size(); size <= i11; size++) {
                    this.f11511g.add(null);
                }
            }
            this.f11511g.set(i11, obj);
        }

        @Override // r1.k
        public long x0() {
            return ((Long) h(new n.a() { // from class: o1.l
                @Override // n.a
                public final Object apply(Object obj) {
                    return Long.valueOf(((r1.k) obj).x0());
                }
            })).longValue();
        }
    }

    /* compiled from: AutoClosingRoomOpenHelper.java */
    /* loaded from: classes.dex */
    public static final class c implements Cursor {

        /* renamed from: f, reason: collision with root package name */
        public final Cursor f11513f;

        /* renamed from: g, reason: collision with root package name */
        public final o1.a f11514g;

        public c(Cursor cursor, o1.a aVar) {
            this.f11513f = cursor;
            this.f11514g = aVar;
        }

        @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f11513f.close();
            this.f11514g.b();
        }

        @Override // android.database.Cursor
        public void copyStringToBuffer(int i10, CharArrayBuffer charArrayBuffer) {
            this.f11513f.copyStringToBuffer(i10, charArrayBuffer);
        }

        @Override // android.database.Cursor
        @Deprecated
        public void deactivate() {
            this.f11513f.deactivate();
        }

        @Override // android.database.Cursor
        public byte[] getBlob(int i10) {
            return this.f11513f.getBlob(i10);
        }

        @Override // android.database.Cursor
        public int getColumnCount() {
            return this.f11513f.getColumnCount();
        }

        @Override // android.database.Cursor
        public int getColumnIndex(String str) {
            return this.f11513f.getColumnIndex(str);
        }

        @Override // android.database.Cursor
        public int getColumnIndexOrThrow(String str) throws IllegalArgumentException {
            return this.f11513f.getColumnIndexOrThrow(str);
        }

        @Override // android.database.Cursor
        public String getColumnName(int i10) {
            return this.f11513f.getColumnName(i10);
        }

        @Override // android.database.Cursor
        public String[] getColumnNames() {
            return this.f11513f.getColumnNames();
        }

        @Override // android.database.Cursor
        public int getCount() {
            return this.f11513f.getCount();
        }

        @Override // android.database.Cursor
        public double getDouble(int i10) {
            return this.f11513f.getDouble(i10);
        }

        @Override // android.database.Cursor
        public Bundle getExtras() {
            return this.f11513f.getExtras();
        }

        @Override // android.database.Cursor
        public float getFloat(int i10) {
            return this.f11513f.getFloat(i10);
        }

        @Override // android.database.Cursor
        public int getInt(int i10) {
            return this.f11513f.getInt(i10);
        }

        @Override // android.database.Cursor
        public long getLong(int i10) {
            return this.f11513f.getLong(i10);
        }

        @Override // android.database.Cursor
        public Uri getNotificationUri() {
            return r1.c.a(this.f11513f);
        }

        @Override // android.database.Cursor
        public List<Uri> getNotificationUris() {
            return r1.f.a(this.f11513f);
        }

        @Override // android.database.Cursor
        public int getPosition() {
            return this.f11513f.getPosition();
        }

        @Override // android.database.Cursor
        public short getShort(int i10) {
            return this.f11513f.getShort(i10);
        }

        @Override // android.database.Cursor
        public String getString(int i10) {
            return this.f11513f.getString(i10);
        }

        @Override // android.database.Cursor
        public int getType(int i10) {
            return this.f11513f.getType(i10);
        }

        @Override // android.database.Cursor
        public boolean getWantsAllOnMoveCalls() {
            return this.f11513f.getWantsAllOnMoveCalls();
        }

        @Override // android.database.Cursor
        public boolean isAfterLast() {
            return this.f11513f.isAfterLast();
        }

        @Override // android.database.Cursor
        public boolean isBeforeFirst() {
            return this.f11513f.isBeforeFirst();
        }

        @Override // android.database.Cursor
        public boolean isClosed() {
            return this.f11513f.isClosed();
        }

        @Override // android.database.Cursor
        public boolean isFirst() {
            return this.f11513f.isFirst();
        }

        @Override // android.database.Cursor
        public boolean isLast() {
            return this.f11513f.isLast();
        }

        @Override // android.database.Cursor
        public boolean isNull(int i10) {
            return this.f11513f.isNull(i10);
        }

        @Override // android.database.Cursor
        public boolean move(int i10) {
            return this.f11513f.move(i10);
        }

        @Override // android.database.Cursor
        public boolean moveToFirst() {
            return this.f11513f.moveToFirst();
        }

        @Override // android.database.Cursor
        public boolean moveToLast() {
            return this.f11513f.moveToLast();
        }

        @Override // android.database.Cursor
        public boolean moveToNext() {
            return this.f11513f.moveToNext();
        }

        @Override // android.database.Cursor
        public boolean moveToPosition(int i10) {
            return this.f11513f.moveToPosition(i10);
        }

        @Override // android.database.Cursor
        public boolean moveToPrevious() {
            return this.f11513f.moveToPrevious();
        }

        @Override // android.database.Cursor
        public void registerContentObserver(ContentObserver contentObserver) {
            this.f11513f.registerContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.f11513f.registerDataSetObserver(dataSetObserver);
        }

        @Override // android.database.Cursor
        @Deprecated
        public boolean requery() {
            return this.f11513f.requery();
        }

        @Override // android.database.Cursor
        public Bundle respond(Bundle bundle) {
            return this.f11513f.respond(bundle);
        }

        @Override // android.database.Cursor
        public void setExtras(Bundle bundle) {
            r1.e.a(this.f11513f, bundle);
        }

        @Override // android.database.Cursor
        public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
            this.f11513f.setNotificationUri(contentResolver, uri);
        }

        @Override // android.database.Cursor
        public void setNotificationUris(ContentResolver contentResolver, List<Uri> list) {
            r1.f.b(this.f11513f, contentResolver, list);
        }

        @Override // android.database.Cursor
        public void unregisterContentObserver(ContentObserver contentObserver) {
            this.f11513f.unregisterContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.f11513f.unregisterDataSetObserver(dataSetObserver);
        }
    }

    public i(r1.h hVar, o1.a aVar) {
        this.f11506f = hVar;
        this.f11508h = aVar;
        aVar.f(hVar);
        this.f11507g = new a(aVar);
    }

    @Override // o1.q
    public r1.h b() {
        return this.f11506f;
    }

    @Override // r1.h, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f11507g.close();
        } catch (IOException e10) {
            q1.e.a(e10);
        }
    }

    public o1.a d() {
        return this.f11508h;
    }

    @Override // r1.h
    public String getDatabaseName() {
        return this.f11506f.getDatabaseName();
    }

    @Override // r1.h
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.f11506f.setWriteAheadLoggingEnabled(z10);
    }

    @Override // r1.h
    public r1.g v0() {
        this.f11507g.L();
        return this.f11507g;
    }
}
