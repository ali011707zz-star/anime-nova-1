package la;

import java.math.BigDecimal;

/* compiled from: LazilyParsedNumber.java */
/* loaded from: classes.dex */
public final class f extends Number {

    /* renamed from: f, reason: collision with root package name */
    public final String f10595f;

    public f(String str) {
        this.f10595f = str;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f10595f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        String str = this.f10595f;
        String str2 = ((f) obj).f10595f;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f10595f);
    }

    public int hashCode() {
        return this.f10595f.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return Integer.parseInt(this.f10595f);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f10595f);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.f10595f).intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f10595f);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.f10595f).longValue();
        }
    }

    public String toString() {
        return this.f10595f;
    }
}
