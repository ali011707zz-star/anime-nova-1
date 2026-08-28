package androidx.constraintlayout.core.parser;

/* loaded from: classes.dex */
public class CLParsingException extends Exception {

    /* renamed from: f, reason: collision with root package name */
    public final String f1602f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1603g;

    /* renamed from: h, reason: collision with root package name */
    public final String f1604h;

    public String a() {
        return this.f1602f + " (" + this.f1604h + " at line " + this.f1603g + ")";
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "CLParsingException (" + hashCode() + ") : " + a();
    }
}
