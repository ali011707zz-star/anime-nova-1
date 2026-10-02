package qc;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: Strings.kt */
/* loaded from: classes2.dex */
public final class d implements pc.c<nc.e> {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f12684a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12685b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12686c;

    /* renamed from: d, reason: collision with root package name */
    public final ic.p<CharSequence, Integer, vb.i<Integer, Integer>> f12687d;

    /* compiled from: Strings.kt */
    /* loaded from: classes2.dex */
    public static final class a implements Iterator<nc.e> {

        /* renamed from: f, reason: collision with root package name */
        public int f12688f = -1;

        /* renamed from: g, reason: collision with root package name */
        public int f12689g;

        /* renamed from: h, reason: collision with root package name */
        public int f12690h;

        /* renamed from: i, reason: collision with root package name */
        public nc.e f12691i;

        /* renamed from: j, reason: collision with root package name */
        public int f12692j;

        public a() {
            int e10 = nc.g.e(d.this.f12685b, 0, d.this.f12684a.length());
            this.f12689g = e10;
            this.f12690h = e10;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        
            if (r0 < r6.f12693k.f12686c) goto L9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a() {
            if (this.f12690h >= 0) {
                if (d.this.f12686c > 0) {
                    int i10 = this.f12692j + 1;
                    this.f12692j = i10;
                }
                if (this.f12690h <= d.this.f12684a.length()) {
                    vb.i iVar = (vb.i) d.this.f12687d.invoke(d.this.f12684a, Integer.valueOf(this.f12690h));
                    if (iVar == null) {
                        this.f12691i = new nc.e(this.f12689g, u.H(d.this.f12684a));
                        this.f12690h = -1;
                    } else {
                        int intValue = ((Number) iVar.a()).intValue();
                        int intValue2 = ((Number) iVar.b()).intValue();
                        this.f12691i = nc.g.i(this.f12689g, intValue);
                        int i11 = intValue + intValue2;
                        this.f12689g = i11;
                        this.f12690h = i11 + (intValue2 == 0 ? 1 : 0);
                    }
                    this.f12688f = 1;
                    return;
                }
                this.f12691i = new nc.e(this.f12689g, u.H(d.this.f12684a));
                this.f12690h = -1;
                this.f12688f = 1;
                return;
            }
            this.f12688f = 0;
            this.f12691i = null;
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public nc.e next() {
            if (this.f12688f == -1) {
                a();
            }
            if (this.f12688f != 0) {
                nc.e eVar = this.f12691i;
                jc.l.d(eVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
                this.f12691i = null;
                this.f12688f = -1;
                return eVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f12688f == -1) {
                a();
            }
            return this.f12688f == 1;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(CharSequence charSequence, int i10, int i11, ic.p<? super CharSequence, ? super Integer, vb.i<Integer, Integer>> pVar) {
        jc.l.f(charSequence, "input");
        jc.l.f(pVar, "getNextMatch");
        this.f12684a = charSequence;
        this.f12685b = i10;
        this.f12686c = i11;
        this.f12687d = pVar;
    }

    @Override // pc.c
    public Iterator<nc.e> iterator() {
        return new a();
    }
}
