package org.ocpsoft.prettytime.i18n;

import id.a;
import id.e;
import java.lang.reflect.Array;
import java.util.ListResourceBundle;
import kd.d;
import ld.b;
import ld.c;
import ld.f;
import ld.g;
import ld.h;
import ld.i;
import ld.j;
import ld.l;
import ld.m;

/* loaded from: classes2.dex */
public class Resources_kk extends ListResourceBundle implements d {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[][] f11933a = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 0);

    /* loaded from: classes2.dex */
    public static class KkTimeFormat implements id.d {

        /* renamed from: a, reason: collision with root package name */
        public final int f11935a = 50;

        /* renamed from: b, reason: collision with root package name */
        public final String[] f11936b;

        public KkTimeFormat(String... strArr) {
            if (strArr.length == 2) {
                this.f11936b = strArr;
                return;
            }
            throw new IllegalArgumentException("Future and past forms must be provided for kazakh language!");
        }

        @Override // id.d
        public String a(a aVar) {
            long c10 = aVar.c(50);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(c10);
            return sb2.toString();
        }

        @Override // id.d
        public String b(a aVar, String str) {
            return c(aVar.d(), aVar.e(), aVar.c(50), str);
        }

        public final String c(boolean z10, boolean z11, long j10, String str) {
            StringBuilder sb2 = new StringBuilder();
            int i10 = !z10 ? 1 : 0;
            sb2.append(str);
            sb2.append(' ');
            sb2.append(this.f11936b[i10]);
            sb2.append(' ');
            if (z10) {
                sb2.append("бұрын");
            }
            if (z11) {
                sb2.append("кейін");
            }
            return sb2.toString();
        }
    }

    @Override // kd.d
    public id.d a(e eVar) {
        if (eVar instanceof ld.e) {
            return new id.d() { // from class: org.ocpsoft.prettytime.i18n.Resources_kk.1
                @Override // id.d
                public String a(a aVar) {
                    return c(aVar);
                }

                @Override // id.d
                public String b(a aVar, String str) {
                    return str;
                }

                public final String c(a aVar) {
                    if (aVar.e()) {
                        return "дәл қазір";
                    }
                    if (aVar.d()) {
                        return "жана ғана";
                    }
                    return null;
                }
            };
        }
        if (eVar instanceof ld.a) {
            return new KkTimeFormat("ғасыр", "ғасырдан");
        }
        if (eVar instanceof b) {
            return new KkTimeFormat("күн", "күннен");
        }
        if (eVar instanceof c) {
            return new KkTimeFormat("онжылдық", "онжылдықтан");
        }
        if (eVar instanceof ld.d) {
            return new KkTimeFormat("сағат", "сағаттан");
        }
        if (eVar instanceof f) {
            return new KkTimeFormat("мыңжылдық", "мыңжылдықтан");
        }
        if (eVar instanceof g) {
            return new KkTimeFormat("миллисекунд", "миллисекундтан");
        }
        if (eVar instanceof h) {
            return new KkTimeFormat("минут", "минуттан");
        }
        if (eVar instanceof i) {
            return new KkTimeFormat("ай", "айдан");
        }
        if (eVar instanceof j) {
            return new KkTimeFormat("секунд", "секундтан");
        }
        if (eVar instanceof l) {
            return new KkTimeFormat("апта", "аптадан");
        }
        if (eVar instanceof m) {
            return new KkTimeFormat("жыл", "жылдан");
        }
        return null;
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return f11933a;
    }
}
