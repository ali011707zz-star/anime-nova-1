package nc;

import java.util.NoSuchElementException;
import wb.z;

/* compiled from: ProgressionIterators.kt */
/* loaded from: classes2.dex */
public final class d extends z {

    /* renamed from: f, reason: collision with root package name */
    public final int f11392f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11393g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f11394h;

    /* renamed from: i, reason: collision with root package name */
    public int f11395i;

    public d(int i10, int i11, int i12) {
        this.f11392f = i12;
        this.f11393g = i11;
        boolean z10 = true;
        if (i12 <= 0 ? i10 < i11 : i10 > i11) {
            z10 = false;
        }
        this.f11394h = z10;
        this.f11395i = z10 ? i10 : i11;
    }

    @Override // wb.z
    public int a() {
        int i10 = this.f11395i;
        if (i10 == this.f11393g) {
            if (this.f11394h) {
                this.f11394h = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f11395i = this.f11392f + i10;
        }
        return i10;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f11394h;
    }
}
