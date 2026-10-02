package k1;

import java.util.List;
import k1.u;

/* compiled from: PageEvent.kt */
/* loaded from: classes.dex */
public abstract class f0<T> {

    /* compiled from: PageEvent.kt */
    /* loaded from: classes.dex */
    public static final class a<T> extends f0<T> {

        /* renamed from: a, reason: collision with root package name */
        public final y f9393a;

        /* renamed from: b, reason: collision with root package name */
        public final int f9394b;

        /* renamed from: c, reason: collision with root package name */
        public final int f9395c;

        /* renamed from: d, reason: collision with root package name */
        public final int f9396d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(y yVar, int i10, int i11, int i12) {
            super(null);
            jc.l.f(yVar, "loadType");
            this.f9393a = yVar;
            this.f9394b = i10;
            this.f9395c = i11;
            this.f9396d = i12;
            if (yVar != y.REFRESH) {
                if (!(d() > 0)) {
                    throw new IllegalArgumentException(("Drop count must be > 0, but was " + d()).toString());
                }
                if (i12 >= 0) {
                    return;
                }
                throw new IllegalArgumentException(("Invalid placeholdersRemaining " + i12).toString());
            }
            throw new IllegalArgumentException("Drop load type must be PREPEND or APPEND".toString());
        }

        public final y a() {
            return this.f9393a;
        }

        public final int b() {
            return this.f9395c;
        }

        public final int c() {
            return this.f9394b;
        }

        public final int d() {
            return (this.f9395c - this.f9394b) + 1;
        }

        public final int e() {
            return this.f9396d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return jc.l.a(this.f9393a, aVar.f9393a) && this.f9394b == aVar.f9394b && this.f9395c == aVar.f9395c && this.f9396d == aVar.f9396d;
        }

        public int hashCode() {
            y yVar = this.f9393a;
            return ((((((yVar != null ? yVar.hashCode() : 0) * 31) + this.f9394b) * 31) + this.f9395c) * 31) + this.f9396d;
        }

        public String toString() {
            return "Drop(loadType=" + this.f9393a + ", minPageOffset=" + this.f9394b + ", maxPageOffset=" + this.f9395c + ", placeholdersRemaining=" + this.f9396d + ")";
        }
    }

    /* compiled from: PageEvent.kt */
    /* loaded from: classes.dex */
    public static final class b<T> extends f0<T> {

        /* renamed from: f, reason: collision with root package name */
        public static final b<Object> f9397f;

        /* renamed from: g, reason: collision with root package name */
        public static final a f9398g;

        /* renamed from: a, reason: collision with root package name */
        public final y f9399a;

        /* renamed from: b, reason: collision with root package name */
        public final List<f1<T>> f9400b;

        /* renamed from: c, reason: collision with root package name */
        public final int f9401c;

        /* renamed from: d, reason: collision with root package name */
        public final int f9402d;

        /* renamed from: e, reason: collision with root package name */
        public final g f9403e;

        /* compiled from: PageEvent.kt */
        /* loaded from: classes.dex */
        public static final class a {
            public a() {
            }

            public final <T> b<T> a(List<f1<T>> list, int i10, g gVar) {
                jc.l.f(list, "pages");
                jc.l.f(gVar, "combinedLoadStates");
                return new b<>(y.APPEND, list, -1, i10, gVar, null);
            }

            public final <T> b<T> b(List<f1<T>> list, int i10, g gVar) {
                jc.l.f(list, "pages");
                jc.l.f(gVar, "combinedLoadStates");
                return new b<>(y.PREPEND, list, i10, -1, gVar, null);
            }

            public final <T> b<T> c(List<f1<T>> list, int i10, int i11, g gVar) {
                jc.l.f(list, "pages");
                jc.l.f(gVar, "combinedLoadStates");
                return new b<>(y.REFRESH, list, i10, i11, gVar, null);
            }

            public final b<Object> d() {
                return b.f9397f;
            }

            public /* synthetic */ a(jc.g gVar) {
                this();
            }
        }

        static {
            a aVar = new a(null);
            f9398g = aVar;
            List<f1<T>> d10 = wb.k.d(f1.f9409f.a());
            u.c.a aVar2 = u.c.f9818d;
            f9397f = aVar.c(d10, 0, 0, new g(aVar2.b(), aVar2.a(), aVar2.a(), new w(aVar2.b(), aVar2.a(), aVar2.a()), null, 16, null));
        }

        public /* synthetic */ b(y yVar, List list, int i10, int i11, g gVar, jc.g gVar2) {
            this(yVar, list, i10, i11, gVar);
        }

        public static /* synthetic */ b c(b bVar, y yVar, List list, int i10, int i11, g gVar, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                yVar = bVar.f9399a;
            }
            if ((i12 & 2) != 0) {
                list = bVar.f9400b;
            }
            List list2 = list;
            if ((i12 & 4) != 0) {
                i10 = bVar.f9401c;
            }
            int i13 = i10;
            if ((i12 & 8) != 0) {
                i11 = bVar.f9402d;
            }
            int i14 = i11;
            if ((i12 & 16) != 0) {
                gVar = bVar.f9403e;
            }
            return bVar.b(yVar, list2, i13, i14, gVar);
        }

        public final b<T> b(y yVar, List<f1<T>> list, int i10, int i11, g gVar) {
            jc.l.f(yVar, "loadType");
            jc.l.f(list, "pages");
            jc.l.f(gVar, "combinedLoadStates");
            return new b<>(yVar, list, i10, i11, gVar);
        }

        public final g d() {
            return this.f9403e;
        }

        public final y e() {
            return this.f9399a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return jc.l.a(this.f9399a, bVar.f9399a) && jc.l.a(this.f9400b, bVar.f9400b) && this.f9401c == bVar.f9401c && this.f9402d == bVar.f9402d && jc.l.a(this.f9403e, bVar.f9403e);
        }

        public final List<f1<T>> f() {
            return this.f9400b;
        }

        public final int g() {
            return this.f9402d;
        }

        public final int h() {
            return this.f9401c;
        }

        public int hashCode() {
            y yVar = this.f9399a;
            int hashCode = (yVar != null ? yVar.hashCode() : 0) * 31;
            List<f1<T>> list = this.f9400b;
            int hashCode2 = (((((hashCode + (list != null ? list.hashCode() : 0)) * 31) + this.f9401c) * 31) + this.f9402d) * 31;
            g gVar = this.f9403e;
            return hashCode2 + (gVar != null ? gVar.hashCode() : 0);
        }

        public String toString() {
            return "Insert(loadType=" + this.f9399a + ", pages=" + this.f9400b + ", placeholdersBefore=" + this.f9401c + ", placeholdersAfter=" + this.f9402d + ", combinedLoadStates=" + this.f9403e + ")";
        }

        public b(y yVar, List<f1<T>> list, int i10, int i11, g gVar) {
            super(null);
            this.f9399a = yVar;
            this.f9400b = list;
            this.f9401c = i10;
            this.f9402d = i11;
            this.f9403e = gVar;
            if (yVar == y.APPEND || i10 >= 0) {
                if (yVar == y.PREPEND || i11 >= 0) {
                    if (!(yVar != y.REFRESH || (list.isEmpty() ^ true))) {
                        throw new IllegalArgumentException("Cannot create a REFRESH Insert event with no TransformablePages as this could permanently stall pagination. Note that this check does not prevent empty LoadResults and is instead usually an indication of an internal error in Paging itself.".toString());
                    }
                    return;
                } else {
                    throw new IllegalArgumentException(("Append insert defining placeholdersAfter must be > 0, but was " + i11).toString());
                }
            }
            throw new IllegalArgumentException(("Prepend insert defining placeholdersBefore must be > 0, but was " + i10).toString());
        }
    }

    /* compiled from: PageEvent.kt */
    /* loaded from: classes.dex */
    public static final class c<T> extends f0<T> {

        /* renamed from: d, reason: collision with root package name */
        public static final a f9404d = new a(null);

        /* renamed from: a, reason: collision with root package name */
        public final y f9405a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f9406b;

        /* renamed from: c, reason: collision with root package name */
        public final u f9407c;

        /* compiled from: PageEvent.kt */
        /* loaded from: classes.dex */
        public static final class a {
            public a() {
            }

            public final boolean a(u uVar, boolean z10) {
                jc.l.f(uVar, "loadState");
                return (uVar instanceof u.b) || (uVar instanceof u.a) || z10;
            }

            public /* synthetic */ a(jc.g gVar) {
                this();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(y yVar, boolean z10, u uVar) {
            super(null);
            jc.l.f(yVar, "loadType");
            jc.l.f(uVar, "loadState");
            this.f9405a = yVar;
            this.f9406b = z10;
            this.f9407c = uVar;
            if ((yVar == y.REFRESH && !z10 && (uVar instanceof u.c) && uVar.a()) ? false : true) {
                if (!f9404d.a(uVar, z10)) {
                    throw new IllegalArgumentException("LoadStateUpdates cannot be used to dispatch NotLoading unless it is from remote mediator and remote mediator reached end of pagination.".toString());
                }
                return;
            }
            throw new IllegalArgumentException("LoadStateUpdate for local REFRESH may not set endOfPaginationReached = true".toString());
        }

        public final boolean a() {
            return this.f9406b;
        }

        public final u b() {
            return this.f9407c;
        }

        public final y c() {
            return this.f9405a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return jc.l.a(this.f9405a, cVar.f9405a) && this.f9406b == cVar.f9406b && jc.l.a(this.f9407c, cVar.f9407c);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            y yVar = this.f9405a;
            int hashCode = (yVar != null ? yVar.hashCode() : 0) * 31;
            boolean z10 = this.f9406b;
            int i10 = z10;
            if (z10 != 0) {
                i10 = 1;
            }
            int i11 = (hashCode + i10) * 31;
            u uVar = this.f9407c;
            return i11 + (uVar != null ? uVar.hashCode() : 0);
        }

        public String toString() {
            return "LoadStateUpdate(loadType=" + this.f9405a + ", fromMediator=" + this.f9406b + ", loadState=" + this.f9407c + ")";
        }
    }

    public f0() {
    }

    public /* synthetic */ f0(jc.g gVar) {
        this();
    }
}
