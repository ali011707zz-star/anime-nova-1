package wb;

/* compiled from: ArraysJVM.kt */
/* loaded from: classes2.dex */
public class f {
    public static final void a(int i10, int i11) {
        if (i10 <= i11) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i10 + ") is greater than size (" + i11 + ").");
    }
}
