package nd;

import androidx.appcompat.widget.SearchView;
import jc.g;
import jc.l;

/* compiled from: SearchViewQueryTextEventFlow.kt */
/* loaded from: classes2.dex */
public abstract class a {

    /* compiled from: SearchViewQueryTextEventFlow.kt */
    /* renamed from: nd.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0277a extends a {

        /* renamed from: a, reason: collision with root package name */
        public final SearchView f11398a;

        /* renamed from: b, reason: collision with root package name */
        public final CharSequence f11399b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0277a(SearchView searchView, CharSequence charSequence) {
            super(null);
            l.f(searchView, "view");
            l.f(charSequence, "queryText");
            this.f11398a = searchView;
            this.f11399b = charSequence;
        }

        public CharSequence a() {
            return this.f11399b;
        }

        public SearchView b() {
            return this.f11398a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0277a)) {
                return false;
            }
            C0277a c0277a = (C0277a) obj;
            return l.a(b(), c0277a.b()) && l.a(a(), c0277a.a());
        }

        public int hashCode() {
            return (b().hashCode() * 31) + a().hashCode();
        }

        public String toString() {
            return "QueryChanged(view=" + b() + ", queryText=" + ((Object) a()) + ")";
        }
    }

    /* compiled from: SearchViewQueryTextEventFlow.kt */
    /* loaded from: classes2.dex */
    public static final class b extends a {

        /* renamed from: a, reason: collision with root package name */
        public final SearchView f11400a;

        /* renamed from: b, reason: collision with root package name */
        public final CharSequence f11401b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(SearchView searchView, CharSequence charSequence) {
            super(null);
            l.f(searchView, "view");
            l.f(charSequence, "queryText");
            this.f11400a = searchView;
            this.f11401b = charSequence;
        }

        public CharSequence a() {
            return this.f11401b;
        }

        public SearchView b() {
            return this.f11400a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return l.a(b(), bVar.b()) && l.a(a(), bVar.a());
        }

        public int hashCode() {
            return (b().hashCode() * 31) + a().hashCode();
        }

        public String toString() {
            return "QuerySubmitted(view=" + b() + ", queryText=" + ((Object) a()) + ")";
        }
    }

    public a() {
    }

    public /* synthetic */ a(g gVar) {
        this();
    }
}
