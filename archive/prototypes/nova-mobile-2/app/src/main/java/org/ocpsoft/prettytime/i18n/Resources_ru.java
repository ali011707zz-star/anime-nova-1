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
public class Resources_ru extends ListResourceBundle implements d {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[][] f11946a = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 0);

    /* loaded from: classes2.dex */
    public static class TimeFormatAided implements id.d {

        /* renamed from: a, reason: collision with root package name */
        public final String[] f11948a;

        public TimeFormatAided(String... strArr) {
            if (strArr.length == 3) {
                this.f11948a = strArr;
                return;
            }
            throw new IllegalArgumentException("Wrong plural forms number for russian language!");
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
                sb2.append(this.f11948a[c10]);
                if (z10) {
                    sb2.append(" назад");
                }
                return sb2.toString();
            }
            throw new IllegalStateException("Wrong plural index was calculated somehow for russian language");
        }
    }

    @Override // kd.d
    public id.d a(e eVar) {
        if (eVar instanceof ld.e) {
            return new id.d() { // from class: org.ocpsoft.prettytime.i18n.Resources_ru.1
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
                        return "сейчас";
                    }
                    if (aVar.d()) {
                        return "только что";
                    }
                    return null;
                }
            };
        }
        if (eVar instanceof ld.a) {
            return new TimeFormatAided("век", "века", "веков");
        }
        if (eVar instanceof b) {
            return new TimeFormatAided("день", "дня", "дней");
        }
        if (eVar instanceof c) {
            return new TimeFormatAided("десятилетие", "десятилетия", "десятилетий");
        }
        if (eVar instanceof ld.d) {
            return new TimeFormatAided("час", "часа", "часов");
        }
        if (eVar instanceof f) {
            return new TimeFormatAided("тысячелетие", "тысячелетия", "тысячелетий");
        }
        if (eVar instanceof g) {
            return new TimeFormatAided("миллисекунду", "миллисекунды", "миллисекунд");
        }
        if (eVar instanceof h) {
            return new TimeFormatAided("минуту", "минуты", "минут");
        }
        if (eVar instanceof i) {
            return new TimeFormatAided("месяц", "месяца", "месяцев");
        }
        if (eVar instanceof j) {
            return new TimeFormatAided("секунду", "секунды", "секунд");
        }
        if (eVar instanceof l) {
            return new TimeFormatAided("неделю", "недели", "недель");
        }
        if (eVar instanceof m) {
            return new TimeFormatAided("год", "года", "лет");
        }
        return null;
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return f11946a;
    }
}
