package androidx.recyclerview.widget;

/* compiled from: BatchingListUpdateCallback.java */
/* loaded from: classes.dex */
public class e implements p {

    /* renamed from: a, reason: collision with root package name */
    public final p f2906a;

    /* renamed from: b, reason: collision with root package name */
    public int f2907b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f2908c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f2909d = -1;

    /* renamed from: e, reason: collision with root package name */
    public Object f2910e = null;

    public e(p pVar) {
        this.f2906a = pVar;
    }

    @Override // androidx.recyclerview.widget.p
    public void a(int i10, int i11) {
        int i12;
        if (this.f2907b == 2 && (i12 = this.f2908c) >= i10 && i12 <= i10 + i11) {
            this.f2909d += i11;
            this.f2908c = i10;
        } else {
            e();
            this.f2908c = i10;
            this.f2909d = i11;
            this.f2907b = 2;
        }
    }

    @Override // androidx.recyclerview.widget.p
    public void b(int i10, int i11) {
        int i12;
        if (this.f2907b == 1 && i10 >= (i12 = this.f2908c)) {
            int i13 = this.f2909d;
            if (i10 <= i12 + i13) {
                this.f2909d = i13 + i11;
                this.f2908c = Math.min(i10, i12);
                return;
            }
        }
        e();
        this.f2908c = i10;
        this.f2909d = i11;
        this.f2907b = 1;
    }

    @Override // androidx.recyclerview.widget.p
    public void c(int i10, int i11) {
        e();
        this.f2906a.c(i10, i11);
    }

    @Override // androidx.recyclerview.widget.p
    public void d(int i10, int i11, Object obj) {
        int i12;
        if (this.f2907b == 3) {
            int i13 = this.f2908c;
            int i14 = this.f2909d;
            if (i10 <= i13 + i14 && (i12 = i10 + i11) >= i13 && this.f2910e == obj) {
                this.f2908c = Math.min(i10, i13);
                this.f2909d = Math.max(i14 + i13, i12) - this.f2908c;
                return;
            }
        }
        e();
        this.f2908c = i10;
        this.f2909d = i11;
        this.f2910e = obj;
        this.f2907b = 3;
    }

    public void e() {
        int i10 = this.f2907b;
        if (i10 == 0) {
            return;
        }
        if (i10 == 1) {
            this.f2906a.b(this.f2908c, this.f2909d);
        } else if (i10 == 2) {
            this.f2906a.a(this.f2908c, this.f2909d);
        } else if (i10 == 3) {
            this.f2906a.d(this.f2908c, this.f2909d, this.f2910e);
        }
        this.f2910e = null;
        this.f2907b = 0;
    }
}
