package d2;

/* compiled from: InputMergerFactory.java */
/* loaded from: classes.dex */
public abstract class k {

    /* compiled from: InputMergerFactory.java */
    /* loaded from: classes.dex */
    public class a extends k {
        @Override // d2.k
        public j a(String str) {
            return null;
        }
    }

    public static k c() {
        return new a();
    }

    public abstract j a(String str);

    public final j b(String str) {
        j a10 = a(str);
        return a10 == null ? j.a(str) : a10;
    }
}
