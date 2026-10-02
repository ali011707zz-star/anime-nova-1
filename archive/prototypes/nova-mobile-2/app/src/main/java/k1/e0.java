package k1;

/* compiled from: NullPaddedListDiffHelper.kt */
/* loaded from: classes.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public static final e0 f9378a = new e0();

    /* compiled from: NullPaddedListDiffHelper.kt */
    /* loaded from: classes.dex */
    public static final class a<T> implements androidx.recyclerview.widget.p {

        /* renamed from: i, reason: collision with root package name */
        public static final C0184a f9379i = new C0184a(null);

        /* renamed from: a, reason: collision with root package name */
        public int f9380a;

        /* renamed from: b, reason: collision with root package name */
        public int f9381b;

        /* renamed from: c, reason: collision with root package name */
        public int f9382c;

        /* renamed from: d, reason: collision with root package name */
        public int f9383d;

        /* renamed from: e, reason: collision with root package name */
        public int f9384e;

        /* renamed from: f, reason: collision with root package name */
        public final c0<T> f9385f;

        /* renamed from: g, reason: collision with root package name */
        public final c0<T> f9386g;

        /* renamed from: h, reason: collision with root package name */
        public final androidx.recyclerview.widget.p f9387h;

        /* compiled from: NullPaddedListDiffHelper.kt */
        /* renamed from: k1.e0$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0184a {
            public C0184a() {
            }

            public /* synthetic */ C0184a(jc.g gVar) {
                this();
            }
        }

        public a(c0<T> c0Var, c0<T> c0Var2, androidx.recyclerview.widget.p pVar) {
            jc.l.f(c0Var, "oldList");
            jc.l.f(c0Var2, "newList");
            jc.l.f(pVar, "callback");
            this.f9385f = c0Var;
            this.f9386g = c0Var2;
            this.f9387h = pVar;
            this.f9380a = c0Var.c();
            this.f9381b = c0Var.d();
            this.f9382c = c0Var.b();
            this.f9383d = 1;
            this.f9384e = 1;
        }

        @Override // androidx.recyclerview.widget.p
        public void a(int i10, int i11) {
            if (!h(i10, i11) && !i(i10, i11)) {
                this.f9387h.a(i10 + this.f9380a, i11);
            }
            this.f9382c -= i11;
        }

        @Override // androidx.recyclerview.widget.p
        public void b(int i10, int i11) {
            if (!f(i10, i11) && !g(i10, i11)) {
                this.f9387h.b(i10 + this.f9380a, i11);
            }
            this.f9382c += i11;
        }

        @Override // androidx.recyclerview.widget.p
        public void c(int i10, int i11) {
            this.f9387h.c(i10 + this.f9380a, i11 + this.f9380a);
        }

        @Override // androidx.recyclerview.widget.p
        public void d(int i10, int i11, Object obj) {
            this.f9387h.d(i10 + this.f9380a, i11, obj);
        }

        public final boolean f(int i10, int i11) {
            if (i10 < this.f9382c || this.f9384e == 2) {
                return false;
            }
            int min = Math.min(i11, this.f9381b);
            if (min > 0) {
                this.f9384e = 3;
                this.f9387h.d(this.f9380a + i10, min, k.PLACEHOLDER_TO_ITEM);
                this.f9381b -= min;
            }
            int i12 = i11 - min;
            if (i12 <= 0) {
                return true;
            }
            this.f9387h.b(i10 + min + this.f9380a, i12);
            return true;
        }

        public final boolean g(int i10, int i11) {
            if (i10 > 0 || this.f9383d == 2) {
                return false;
            }
            int min = Math.min(i11, this.f9380a);
            if (min > 0) {
                this.f9383d = 3;
                this.f9387h.d((0 - min) + this.f9380a, min, k.PLACEHOLDER_TO_ITEM);
                this.f9380a -= min;
            }
            int i12 = i11 - min;
            if (i12 <= 0) {
                return true;
            }
            this.f9387h.b(this.f9380a + 0, i12);
            return true;
        }

        public final boolean h(int i10, int i11) {
            if (i10 + i11 < this.f9382c || this.f9384e == 3) {
                return false;
            }
            int a10 = nc.g.a(Math.min(this.f9386g.d() - this.f9381b, i11), 0);
            int i12 = i11 - a10;
            if (a10 > 0) {
                this.f9384e = 2;
                this.f9387h.d(this.f9380a + i10, a10, k.ITEM_TO_PLACEHOLDER);
                this.f9381b += a10;
            }
            if (i12 <= 0) {
                return true;
            }
            this.f9387h.a(i10 + a10 + this.f9380a, i12);
            return true;
        }

        public final boolean i(int i10, int i11) {
            if (i10 > 0 || this.f9383d == 3) {
                return false;
            }
            int a10 = nc.g.a(Math.min(this.f9386g.c() - this.f9380a, i11), 0);
            int i12 = i11 - a10;
            if (i12 > 0) {
                this.f9387h.a(this.f9380a + 0, i12);
            }
            if (a10 <= 0) {
                return true;
            }
            this.f9383d = 2;
            this.f9387h.d(this.f9380a + 0, a10, k.ITEM_TO_PLACEHOLDER);
            this.f9380a += a10;
            return true;
        }

        public final void j() {
            int min = Math.min(this.f9385f.c(), this.f9380a);
            int c10 = this.f9386g.c() - this.f9380a;
            if (c10 > 0) {
                if (min > 0) {
                    this.f9387h.d(0, min, k.PLACEHOLDER_POSITION_CHANGE);
                }
                this.f9387h.b(0, c10);
            } else if (c10 < 0) {
                this.f9387h.a(0, -c10);
                int i10 = min + c10;
                if (i10 > 0) {
                    this.f9387h.d(0, i10, k.PLACEHOLDER_POSITION_CHANGE);
                }
            }
            this.f9380a = this.f9386g.c();
        }

        public final void k() {
            j();
            l();
        }

        public final void l() {
            int min = Math.min(this.f9385f.d(), this.f9381b);
            int d10 = this.f9386g.d();
            int i10 = this.f9381b;
            int i11 = d10 - i10;
            int i12 = this.f9380a + this.f9382c + i10;
            int i13 = i12 - min;
            boolean z10 = i13 != this.f9385f.a() - min;
            if (i11 > 0) {
                this.f9387h.b(i12, i11);
            } else if (i11 < 0) {
                this.f9387h.a(i12 + i11, -i11);
                min += i11;
            }
            if (min > 0 && z10) {
                this.f9387h.d(i13, min, k.PLACEHOLDER_POSITION_CHANGE);
            }
            this.f9381b = this.f9386g.d();
        }
    }

    public final <T> void a(c0<T> c0Var, c0<T> c0Var2, androidx.recyclerview.widget.p pVar, b0 b0Var) {
        jc.l.f(c0Var, "oldList");
        jc.l.f(c0Var2, "newList");
        jc.l.f(pVar, "callback");
        jc.l.f(b0Var, "diffResult");
        a aVar = new a(c0Var, c0Var2, pVar);
        b0Var.a().c(aVar);
        aVar.k();
    }
}
