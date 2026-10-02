package androidx.recyclerview.widget;

import android.view.View;

/* compiled from: ViewBoundsCheck.java */
/* loaded from: classes.dex */
public class z {

    /* renamed from: a, reason: collision with root package name */
    public final b f3096a;

    /* renamed from: b, reason: collision with root package name */
    public a f3097b = new a();

    /* compiled from: ViewBoundsCheck.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f3098a = 0;

        /* renamed from: b, reason: collision with root package name */
        public int f3099b;

        /* renamed from: c, reason: collision with root package name */
        public int f3100c;

        /* renamed from: d, reason: collision with root package name */
        public int f3101d;

        /* renamed from: e, reason: collision with root package name */
        public int f3102e;

        public void a(int i10) {
            this.f3098a = i10 | this.f3098a;
        }

        public boolean b() {
            int i10 = this.f3098a;
            if ((i10 & 7) != 0 && (i10 & (c(this.f3101d, this.f3099b) << 0)) == 0) {
                return false;
            }
            int i11 = this.f3098a;
            if ((i11 & 112) != 0 && (i11 & (c(this.f3101d, this.f3100c) << 4)) == 0) {
                return false;
            }
            int i12 = this.f3098a;
            if ((i12 & 1792) != 0 && (i12 & (c(this.f3102e, this.f3099b) << 8)) == 0) {
                return false;
            }
            int i13 = this.f3098a;
            return (i13 & 28672) == 0 || (i13 & (c(this.f3102e, this.f3100c) << 12)) != 0;
        }

        public int c(int i10, int i11) {
            if (i10 > i11) {
                return 1;
            }
            return i10 == i11 ? 2 : 4;
        }

        public void d() {
            this.f3098a = 0;
        }

        public void e(int i10, int i11, int i12, int i13) {
            this.f3099b = i10;
            this.f3100c = i11;
            this.f3101d = i12;
            this.f3102e = i13;
        }
    }

    /* compiled from: ViewBoundsCheck.java */
    /* loaded from: classes.dex */
    public interface b {
        View a(int i10);

        int b();

        int c(View view);

        int d();

        int e(View view);
    }

    public z(b bVar) {
        this.f3096a = bVar;
    }

    public View a(int i10, int i11, int i12, int i13) {
        int d10 = this.f3096a.d();
        int b10 = this.f3096a.b();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        while (i10 != i11) {
            View a10 = this.f3096a.a(i10);
            this.f3097b.e(d10, b10, this.f3096a.c(a10), this.f3096a.e(a10));
            if (i12 != 0) {
                this.f3097b.d();
                this.f3097b.a(i12);
                if (this.f3097b.b()) {
                    return a10;
                }
            }
            if (i13 != 0) {
                this.f3097b.d();
                this.f3097b.a(i13);
                if (this.f3097b.b()) {
                    view = a10;
                }
            }
            i10 += i14;
        }
        return view;
    }

    public boolean b(View view, int i10) {
        this.f3097b.e(this.f3096a.d(), this.f3096a.b(), this.f3096a.c(view), this.f3096a.e(view));
        if (i10 == 0) {
            return false;
        }
        this.f3097b.d();
        this.f3097b.a(i10);
        return this.f3097b.b();
    }
}
