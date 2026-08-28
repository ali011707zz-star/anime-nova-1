package j3;

import java.util.List;
import l3.o;

/* compiled from: FontCharacter.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public final List<o> f8098a;

    /* renamed from: b, reason: collision with root package name */
    public final char f8099b;

    /* renamed from: c, reason: collision with root package name */
    public final double f8100c;

    /* renamed from: d, reason: collision with root package name */
    public final double f8101d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8102e;

    /* renamed from: f, reason: collision with root package name */
    public final String f8103f;

    public d(List<o> list, char c10, double d10, double d11, String str, String str2) {
        this.f8098a = list;
        this.f8099b = c10;
        this.f8100c = d10;
        this.f8101d = d11;
        this.f8102e = str;
        this.f8103f = str2;
    }

    public static int c(char c10, String str, String str2) {
        return ((((0 + c10) * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List<o> a() {
        return this.f8098a;
    }

    public double b() {
        return this.f8101d;
    }

    public int hashCode() {
        return c(this.f8099b, this.f8103f, this.f8102e);
    }
}
