package o4;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import jc.l;

/* compiled from: Filter.kt */
/* loaded from: classes.dex */
public abstract class a<T> {
    private final String name;
    private T state;

    /* compiled from: Filter.kt */
    /* renamed from: o4.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0289a extends a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AbstractC0289a(String str, boolean z10) {
            super(str, Boolean.valueOf(z10), null);
            l.f(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        }

        public /* synthetic */ AbstractC0289a(String str, boolean z10, int i10, jc.g gVar) {
            this(str, (i10 & 2) != 0 ? false : z10);
        }
    }

    /* compiled from: Filter.kt */
    /* loaded from: classes.dex */
    public static abstract class b<V> extends a<List<? extends V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, List<? extends V> list) {
            super(str, list, null);
            l.f(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
            l.f(list, "state");
        }
    }

    /* compiled from: Filter.kt */
    /* loaded from: classes.dex */
    public static abstract class c<V> extends a<List<V>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, List<V> list) {
            super(str, list, null);
            l.f(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
            l.f(list, "state");
        }
    }

    /* compiled from: Filter.kt */
    /* loaded from: classes.dex */
    public static abstract class d<V> extends a<Integer> {
        private final V[] values;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, V[] vArr, int i10) {
            super(str, Integer.valueOf(i10), null);
            l.f(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
            l.f(vArr, "values");
            this.values = vArr;
        }

        public final V[] d() {
            return this.values;
        }

        public /* synthetic */ d(String str, Object[] objArr, int i10, int i11, jc.g gVar) {
            this(str, objArr, (i11 & 4) != 0 ? -1 : i10);
        }
    }

    public a(String str, T t10) {
        this.name = str;
        this.state = t10;
    }

    public /* synthetic */ a(String str, Object obj, jc.g gVar) {
        this(str, obj);
    }

    public final String a() {
        return this.name;
    }

    public final T b() {
        return this.state;
    }

    public final void c(T t10) {
        this.state = t10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return l.a(this.name, aVar.name) && l.a(this.state, aVar.state);
    }

    public int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        T t10 = this.state;
        return hashCode + (t10 == null ? 0 : t10.hashCode());
    }

    public String toString() {
        return "Filter(name=" + this.name + ", state=" + this.state + ')';
    }
}
