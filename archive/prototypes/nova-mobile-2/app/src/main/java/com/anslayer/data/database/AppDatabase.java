package com.anslayer.data.database;

import android.content.Context;
import b4.b;
import jc.g;
import jc.l;
import o1.m0;
import o1.p0;
import rc.g1;
import rc.u1;

/* compiled from: AppDatabase.kt */
/* loaded from: classes.dex */
public abstract class AppDatabase extends p0 {

    /* renamed from: o, reason: collision with root package name */
    public static final a f4083o = new a(null);

    /* compiled from: AppDatabase.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final AppDatabase a(Context context) {
            l.f(context, "context");
            p0 d10 = m0.a(context, AppDatabase.class, "an_slayer").g(u1.a(g1.b())).d();
            l.e(d10, "databaseBuilder(context,…\n                .build()");
            return (AppDatabase) d10;
        }
    }

    public abstract b F();
}
