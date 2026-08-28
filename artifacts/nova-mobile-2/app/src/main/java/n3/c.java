package n3;

/* compiled from: FileExtension.java */
/* loaded from: classes.dex */
public enum c {
    JSON(".json"),
    ZIP(".zip");


    /* renamed from: f, reason: collision with root package name */
    public final String f11242f;

    c(String str) {
        this.f11242f = str;
    }

    public String a() {
        return ".temp" + this.f11242f;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f11242f;
    }
}
