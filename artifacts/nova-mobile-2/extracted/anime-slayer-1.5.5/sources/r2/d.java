package r2;

import android.content.Context;
import r2.h;

/* compiled from: CountBadge.java */
/* loaded from: classes.dex */
public class d extends h {

    /* renamed from: j, reason: collision with root package name */
    public int f12811j;

    /* compiled from: CountBadge.java */
    /* loaded from: classes.dex */
    public static final class a extends h.a<d> {
        public a(Context context, b bVar) {
            super(context, bVar);
        }

        @Override // r2.a.b
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public d a() {
            return new d(this.f12826a, this.f12827b, this.f12828c);
        }
    }

    public d(b bVar, int i10, int i11) {
        super(bVar, i10, i11);
        this.f12811j = 0;
    }

    public final void f(int i10) {
        if (i10 >= 0) {
            if (this.f12811j != i10) {
                this.f12811j = i10;
                e(i10 == 0 ? null : String.valueOf(i10));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("must be 0 <= count");
    }
}
