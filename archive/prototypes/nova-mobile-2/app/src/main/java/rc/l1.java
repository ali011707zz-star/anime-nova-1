package rc;

/* compiled from: JobSupport.kt */
/* loaded from: classes2.dex */
public final class l1 implements x1 {

    /* renamed from: f, reason: collision with root package name */
    public final boolean f13295f;

    public l1(boolean z10) {
        this.f13295f = z10;
    }

    @Override // rc.x1
    public boolean b() {
        return this.f13295f;
    }

    @Override // rc.x1
    public o2 t() {
        return null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Empty{");
        sb2.append(b() ? "Active" : "New");
        sb2.append('}');
        return sb2.toString();
    }
}
