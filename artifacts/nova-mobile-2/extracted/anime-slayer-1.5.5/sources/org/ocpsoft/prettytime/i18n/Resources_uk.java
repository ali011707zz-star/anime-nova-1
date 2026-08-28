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
public class Resources_uk extends ListResourceBundle implements d {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[][] f11962a = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 0);

    /* loaded from: classes2.dex */
    public static class TimeFormatAided implements id.d {

        /* renamed from: a, reason: collision with root package name */
        public final String[] f11964a;

        public TimeFormatAided(String... strArr) {
            if (strArr.length == 3) {
                this.f11964a = strArr;
                return;
            }
            throw new IllegalArgumentException("Wrong plural forms number for slavic language!");
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
            char c10;
            long j11 = j10 % 10;
            if (j11 != 1 || j10 % 100 == 11) {
                if (j11 >= 2 && j11 <= 4) {
                    long j12 = j10 % 100;
                    if (j12 < 10 || j12 >= 20) {
                        c10 = 1;
                    }
                }
                c10 = 2;
            } else {
                c10 = 0;
            }
            if (c10 <= 3) {
                StringBuilder sb2 = new StringBuilder();
                if (z11) {
                    sb2.append("через ");
                }
                sb2.append(str);
                sb2.append(' ');
                sb2.append(this.f11964a[c10]);
                if (z10) {
                    sb2.append(" тому");
                }
                return sb2.toString();
            }
            throw new IllegalStateException("Wrong plural index was calculated somehow for slavic language");
        }
    }

    @Override // kd.d
    public id.d a(e eVar) {
        if (eVar instanceof ld.e) {
            return new id.d() { // from class: org.ocpsoft.prettytime.i18n.Resources_uk.1
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
                        return "зараз";
                    }
                    if (aVar.d()) {
                        return "щойно";
                    }
                    return null;
                }
            };
        }
        if (eVar instanceof ld.a) {
            return new TimeFormatAided("століття", "століття", "столітть");
        }
        if (eVar instanceof b) {
            return new TimeFormatAided("день", "дні", "днів");
        }
        if (eVar instanceof c) {
            return new TimeFormatAided("десятиліття", "десятиліття", "десятиліть");
        }
        if (eVar instanceof ld.d) {
            return new TimeFormatAided("годину", "години", "годин");
        }
        if (eVar instanceof f) {
            return new TimeFormatAided("тисячоліття", "тисячоліття", "тисячоліть");
        }
        if (eVar instanceof g) {
            return new TimeFormatAided("мілісекунду", "мілісекунди", "мілісекунд");
        }
        if (eVar instanceof h) {
            return new TimeFormatAided("хвилину", "хвилини", "хвилин");
        }
        if (eVar instanceof i) {
            return new TimeFormatAided("місяць", "місяці", "місяців");
        }
        if (eVar instanceof j) {
            return new TimeFormatAided("секунду", "секунди", "секунд");
        }
        if (eVar instanceof l) {
            return new TimeFormatAided("тиждень", "тижні", "тижнів");
        }
        if (eVar instanceof m) {
            return new TimeFormatAided("рік", "роки", "років");
        }
        return null;
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return f11962a;
    }
}
