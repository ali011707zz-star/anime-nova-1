package com.anslayer.data.database;

import b4.b;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import o1.p;
import o1.p0;
import o1.r0;
import q1.c;
import q1.g;
import r1.g;
import r1.h;

/* loaded from: classes.dex */
public final class AppDatabase_Impl extends AppDatabase {

    /* renamed from: p, reason: collision with root package name */
    public volatile b f4084p;

    /* loaded from: classes.dex */
    public class a extends r0.a {
        public a(int i10) {
            super(i10);
        }

        @Override // o1.r0.a
        public void a(g gVar) {
            gVar.s("CREATE TABLE IF NOT EXISTS `BlockedWordEntity` (`word` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
            gVar.s("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            gVar.s("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '86fd444f75ac552aab71580559b38ddf')");
        }

        @Override // o1.r0.a
        public void b(g gVar) {
            gVar.s("DROP TABLE IF EXISTS `BlockedWordEntity`");
            if (AppDatabase_Impl.this.f11561h != null) {
                int size = AppDatabase_Impl.this.f11561h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((p0.b) AppDatabase_Impl.this.f11561h.get(i10)).b(gVar);
                }
            }
        }

        @Override // o1.r0.a
        public void c(g gVar) {
            if (AppDatabase_Impl.this.f11561h != null) {
                int size = AppDatabase_Impl.this.f11561h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((p0.b) AppDatabase_Impl.this.f11561h.get(i10)).a(gVar);
                }
            }
        }

        @Override // o1.r0.a
        public void d(g gVar) {
            AppDatabase_Impl.this.f11554a = gVar;
            AppDatabase_Impl.this.w(gVar);
            if (AppDatabase_Impl.this.f11561h != null) {
                int size = AppDatabase_Impl.this.f11561h.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((p0.b) AppDatabase_Impl.this.f11561h.get(i10)).c(gVar);
                }
            }
        }

        @Override // o1.r0.a
        public void e(g gVar) {
        }

        @Override // o1.r0.a
        public void f(g gVar) {
            c.a(gVar);
        }

        @Override // o1.r0.a
        public r0.b g(g gVar) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("word", new g.a("word", "TEXT", true, 0, null, 1));
            hashMap.put("id", new g.a("id", "INTEGER", true, 1, null, 1));
            q1.g gVar2 = new q1.g("BlockedWordEntity", hashMap, new HashSet(0), new HashSet(0));
            q1.g a10 = q1.g.a(gVar, "BlockedWordEntity");
            if (!gVar2.equals(a10)) {
                return new r0.b(false, "BlockedWordEntity(com.anslayer.model.BlockedWordEntity).\n Expected:\n" + gVar2 + "\n Found:\n" + a10);
            }
            return new r0.b(true, null);
        }
    }

    @Override // com.anslayer.data.database.AppDatabase
    public b F() {
        b bVar;
        if (this.f4084p != null) {
            return this.f4084p;
        }
        synchronized (this) {
            if (this.f4084p == null) {
                this.f4084p = new b4.c(this);
            }
            bVar = this.f4084p;
        }
        return bVar;
    }

    @Override // o1.p0
    public androidx.room.c g() {
        return new androidx.room.c(this, new HashMap(0), new HashMap(0), "BlockedWordEntity");
    }

    @Override // o1.p0
    public h h(p pVar) {
        return pVar.f11534a.a(h.b.a(pVar.f11535b).c(pVar.f11536c).b(new r0(pVar, new a(1), "86fd444f75ac552aab71580559b38ddf", "64292c2b74305906c446b5067a86d0c2")).a());
    }

    @Override // o1.p0
    public List<p1.b> j(Map<Class<? extends p1.a>, p1.a> map) {
        return Arrays.asList(new p1.b[0]);
    }

    @Override // o1.p0
    public Set<Class<? extends p1.a>> p() {
        return new HashSet();
    }

    @Override // o1.p0
    public Map<Class<?>, List<Class<?>>> q() {
        HashMap hashMap = new HashMap();
        hashMap.put(b.class, b4.c.k());
        return hashMap;
    }
}
