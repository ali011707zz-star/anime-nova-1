package k5;

import com.google.android.gms.common.Scopes;

/* compiled from: AuthSelectionViewModel.kt */
/* loaded from: classes.dex */
public abstract class l {

    /* compiled from: AuthSelectionViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l {

        /* renamed from: a, reason: collision with root package name */
        public static final a f9981a = new a();

        public a() {
            super(null);
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    /* loaded from: classes.dex */
    public static final class b extends l {

        /* renamed from: a, reason: collision with root package name */
        public final String f9982a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str) {
            super(null);
            jc.l.f(str, Scopes.EMAIL);
            this.f9982a = str;
        }

        public final String a() {
            return this.f9982a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && jc.l.a(this.f9982a, ((b) obj).f9982a);
        }

        public int hashCode() {
            return this.f9982a.hashCode();
        }

        public String toString() {
            return "Exist(email=" + this.f9982a + ')';
        }
    }

    /* compiled from: AuthSelectionViewModel.kt */
    /* loaded from: classes.dex */
    public static final class c extends l {

        /* renamed from: a, reason: collision with root package name */
        public final String f9983a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str) {
            super(null);
            jc.l.f(str, Scopes.EMAIL);
            this.f9983a = str;
        }

        public final String a() {
            return this.f9983a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && jc.l.a(this.f9983a, ((c) obj).f9983a);
        }

        public int hashCode() {
            return this.f9983a.hashCode();
        }

        public String toString() {
            return "NotFound(email=" + this.f9983a + ')';
        }
    }

    public l() {
    }

    public /* synthetic */ l(jc.g gVar) {
        this();
    }
}
