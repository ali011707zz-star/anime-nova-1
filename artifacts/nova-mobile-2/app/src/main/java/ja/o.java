package ja;

import java.math.BigInteger;

/* compiled from: JsonPrimitive.java */
/* loaded from: classes.dex */
public final class o extends l {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9143a;

    public o(Boolean bool) {
        this.f9143a = la.a.b(bool);
    }

    public static boolean o(o oVar) {
        Object obj = oVar.f9143a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // ja.l
    public String d() {
        if (p()) {
            return m().toString();
        }
        if (n()) {
            return ((Boolean) this.f9143a).toString();
        }
        return (String) this.f9143a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f9143a == null) {
            return oVar.f9143a == null;
        }
        if (o(this) && o(oVar)) {
            return m().longValue() == oVar.m().longValue();
        }
        Object obj2 = this.f9143a;
        if ((obj2 instanceof Number) && (oVar.f9143a instanceof Number)) {
            double doubleValue = m().doubleValue();
            double doubleValue2 = oVar.m().doubleValue();
            if (doubleValue != doubleValue2) {
                return Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
            }
            return true;
        }
        return obj2.equals(oVar.f9143a);
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.f9143a == null) {
            return 31;
        }
        if (o(this)) {
            doubleToLongBits = m().longValue();
        } else {
            Object obj = this.f9143a;
            if (obj instanceof Number) {
                doubleToLongBits = Double.doubleToLongBits(m().doubleValue());
            } else {
                return obj.hashCode();
            }
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public boolean i() {
        if (n()) {
            return ((Boolean) this.f9143a).booleanValue();
        }
        return Boolean.parseBoolean(d());
    }

    public double j() {
        return p() ? m().doubleValue() : Double.parseDouble(d());
    }

    public int k() {
        return p() ? m().intValue() : Integer.parseInt(d());
    }

    public long l() {
        return p() ? m().longValue() : Long.parseLong(d());
    }

    public Number m() {
        Object obj = this.f9143a;
        return obj instanceof String ? new la.f((String) obj) : (Number) obj;
    }

    public boolean n() {
        return this.f9143a instanceof Boolean;
    }

    public boolean p() {
        return this.f9143a instanceof Number;
    }

    public boolean q() {
        return this.f9143a instanceof String;
    }

    public o(Number number) {
        this.f9143a = la.a.b(number);
    }

    public o(String str) {
        this.f9143a = la.a.b(str);
    }

    public o(Character ch) {
        this.f9143a = ((Character) la.a.b(ch)).toString();
    }
}
